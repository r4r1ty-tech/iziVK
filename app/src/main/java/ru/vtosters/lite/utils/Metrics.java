package ru.vtosters.lite.utils;

import org.json.JSONObject;

public class Metrics {
    // iziVK: 0 telemetry — весь сетевой код (stats.trackEvents, access_token в URL) удалён,
    // а не просто отключён, чтобы не оставлять "спящий" код с реальным HTTP-запросом.
    public static void trackEvents(JSONObject object, boolean isMusic) {
        // Disabled for privacy - 0 telemetry
    }
}
