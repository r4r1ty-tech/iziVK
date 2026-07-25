package ru.vtosters.lite.di.singleton;

import okhttp3.OkHttpClient;
import ru.vtosters.lite.network.CleanInterceptor;
import ru.vtosters.lite.network.DirectSocketFactory;

public class VtOkHttpClient {
    private static OkHttpClient instance;

    public static OkHttpClient getInstance() {
        if (instance == null) {
            var builder = new OkHttpClient().r().a(new CleanInterceptor());
            try {
                // Обход VPN-туннеля для служебных запросов
                var field = builder.getClass().getDeclaredField("l");
                field.setAccessible(true);
                field.set(builder, DirectSocketFactory.getPhysicalSocketFactory());
            } catch (Exception ignored) {
            }
            instance = builder.a();
        }
        return instance;
    }
}
