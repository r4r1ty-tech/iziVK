package ru.vtosters.lite.ui.activities;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.CookieManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import ru.vtosters.lite.utils.LayoutUtils;

import static ru.vtosters.lite.proxy.ProxyUtils.getOauth;

public class WebAuthActivity extends AppCompatActivity {
    public static final String EXTRA_ACCESS_TOKEN = "access_token";
    public static final String EXTRA_USER_ID = "user_id";
    public static final String EXTRA_EXPIRES_IN = "expires_in";

    private static final String REDIRECT_PREFIX = "https://" + getOauth() + "/blank.html";
    private static final String AUTH_URL = "https://" + getOauth()
            + "/authorize?client_id=2274003"
            + "&scope=offline,photos,audio,video,docs,wall,groups,messages,notifications"
            + "&redirect_uri=https://oauth.vk.com/blank.html"
            + "&display=mobile"
            + "&response_type=token"
            + "&v=5.199";

    @Override
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);

        var container = new FrameLayout(this);
        container.setLayoutParams(LayoutUtils.createFrame(-1, -1));
        setContentView(container);

        var webView = new WebView(this);
        container.addView(webView, LayoutUtils.createFrame(-1, -1));

        CookieManager.getInstance().setAcceptCookie(true);
        CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);

        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);

        webView.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                return handleRedirect(request.getUrl().toString()) || super.shouldOverrideUrlLoading(view, request);
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                return handleRedirect(url) || super.shouldOverrideUrlLoading(view, url);
            }
        });

        webView.loadUrl(AUTH_URL);
    }

    private boolean handleRedirect(String url) {
        if (url == null) {
            return false;
        }

        if (url.contains("error=")) {
            setResult(Activity.RESULT_CANCELED);
            finish();
            return true;
        }

        if (!url.startsWith(REDIRECT_PREFIX)) {
            return false;
        }

        Uri uri = Uri.parse(url.replace("#", "?"));
        String accessToken = uri.getQueryParameter("access_token");
        String userId = uri.getQueryParameter("user_id");
        String expiresIn = uri.getQueryParameter("expires_in");

        if (accessToken == null || accessToken.isEmpty() || userId == null) {
            return false;
        }

        Intent data = new Intent();
        data.putExtra(EXTRA_ACCESS_TOKEN, accessToken);
        data.putExtra(EXTRA_USER_ID, userId);
        data.putExtra(EXTRA_EXPIRES_IN, expiresIn != null ? expiresIn : "0");
        setResult(Activity.RESULT_OK, data);
        finish();
        return true;
    }
}
