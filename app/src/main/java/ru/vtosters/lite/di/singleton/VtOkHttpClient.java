package ru.vtosters.lite.di.singleton;

import okhttp3.OkHttpClient;
import ru.vtosters.lite.network.CleanInterceptor;

public class VtOkHttpClient {
    private static OkHttpClient instance;

    public static OkHttpClient getInstance() {
        if (instance == null) {
            instance = new OkHttpClient().r().a(new CleanInterceptor()).a();
        }
        return instance;
    }
}