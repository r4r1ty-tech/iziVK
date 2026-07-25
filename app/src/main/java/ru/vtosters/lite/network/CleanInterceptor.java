package ru.vtosters.lite.network;

import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONObject;
import ru.vtosters.hooks.other.Preferences;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;

public class CleanInterceptor implements Interceptor {

    private static final List<String> BLOCKED_DOMAINS = Arrays.asList(
            "appmetrica.yandex.ru",
            "mobile.yandex.net",
            "mc.yandex.ru",
            "mc.yandex.net",
            "mytarget.com",
            "ad.mail.ru",
            "analytics.vk.com",
            "stats.vk.com",
            "vk.com/stat",
            "firebaseinstallations.googleapis.com",
            "firebaselogging.googleapis.com",
            "firebase.googleapis.com",
            "firebaseremoteconfig.googleapis.com",
            "crashlytics.com",
            "crashlyticsreports-pa.googleapis.com",
            "appcenter.ms",
            "app-measurement.com",
            "google-analytics.com",
            "vtosters.app",
            "adlist.vtosters.app",
            "api.github.com",
            "sentry.io",
            "bugsnag.com"
    );

    @Override
    public Response a(Interceptor.a chain) throws IOException {
        Request request = chain.m0();
        String host = request.g() != null ? request.g().n() : "";

        // 1. Блокировка телеметрии на корню
        for (String domain : BLOCKED_DOMAINS) {
            if (host.contains(domain)) {
                android.util.Log.d("iziVK-Privacy", "Blocked telemetry host: " + host);
                return new Response.a()
                        .a(request)
                        .a(Protocol.HTTP_1_1)
                        .a(200)
                        .a("Blocked")
                        .a(ResponseBody.a(MediaType.a("application/json"), "{}".getBytes(StandardCharsets.UTF_8)))
                        .a();
            }
        }

        Response response = chain.a(request);

        // 2. Фильтрация ответа newsfeed.get (Истории, реклама, рекомендации, стоп-слова)
        if (request.g() != null && request.g().b() != null && request.g().b().contains("newsfeed.get")) {
            try {
                ResponseBody body = response.a();
                if (body != null) {
                    String jsonString = body.g();
                    JSONObject jsonObject = new JSONObject(jsonString);
                    JSONObject responseObj = jsonObject.optJSONObject("response");

                    if (responseObj != null) {
                        // Тумблер: Отключение Историй (Stories)
                        if (Preferences.getBoolValue("disable_stories", true)) {
                            responseObj.remove("stories");
                        }

                        // Тумблер: Вырезание рекламы и рекомендаций
                        boolean removeAds = Preferences.getBoolValue("disable_ads", true);
                        boolean removeRecs = Preferences.getBoolValue("disable_recs", true);
                        String stopWordsStr = Preferences.getString("stop_words");
                        List<String> stopWords = stopWordsStr.isEmpty() ? null : Arrays.asList(stopWordsStr.toLowerCase().split(","));

                        JSONArray items = responseObj.optJSONArray("items");
                        if (items != null) {
                            JSONArray cleanItems = new JSONArray();
                            for (int i = 0; i < items.length(); i++) {
                                JSONObject post = items.optJSONObject(i);
                                if (post == null) continue;

                                boolean isAd = removeAds && (post.optInt("marked_as_ads") == 1 || "ads".equals(post.optString("post_type")));
                                boolean isRec = removeRecs && post.has("recommendation_type");

                                boolean hasStopWord = false;
                                if (stopWords != null && !stopWords.isEmpty()) {
                                    String text = post.optString("text", "").toLowerCase();
                                    for (String word : stopWords) {
                                        String trimmed = word.trim();
                                        if (!trimmed.isEmpty() && text.contains(trimmed)) {
                                            hasStopWord = true;
                                            break;
                                        }
                                    }
                                }

                                if (!isAd && !isRec && !hasStopWord) {
                                    cleanItems.put(post);
                                }
                            }
                            responseObj.put("items", cleanItems);
                        }

                        String modifiedJson = jsonObject.toString();
                        ResponseBody newBody = ResponseBody.a(body.e(), modifiedJson.getBytes(StandardCharsets.UTF_8));
                        Response.a builder = response.k();
                        builder.a(newBody);
                        return builder.a();
                    }
                }
            } catch (Exception e) {
                // В случае ошибки парсинга возвращаем оригинальный ответ
            }
        }

        return response;
    }
}
