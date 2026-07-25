package ru.vtosters.lite.utils;

import android.content.Context;
import com.vk.navigation.NavigatorKeys;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class VTVerifications {
    public static final List<Integer> sVerifications = new ArrayList<>();
    public static final List<Integer> sPrometheuses = new ArrayList<>();
    public static final List<Integer> sDevelopers = new ArrayList<>();
    public static boolean isLoaded = true;

    public static void load(Context context) {
        // Disabled third-party verifications network call for 100% privacy
        isLoaded = true;
    }

    public static boolean isPrometheus(int id) {
        return sPrometheuses.contains(id);
    }

    public static boolean isDeveloper(int id) {
        return sDevelopers.contains(id);
    }

    public static int getId(JSONObject json) {
        int id = json.optInt("id", 0);
        String type = json.optString(NavigatorKeys.e);
        return isGroupOrPage(type) ? -id : id;
    }

    private static boolean isGroupOrPage(String type) {
        return "group".equals(type) || "page".equals(type);
    }
}