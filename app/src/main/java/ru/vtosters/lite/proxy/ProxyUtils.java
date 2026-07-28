package ru.vtosters.lite.proxy;

public class ProxyUtils {
    public static String getApi() {
        return "api.vk.com";
    }

    public static String getOauth() {
        return "oauth.vk.com";
    }

    public static String getStatic() {
        return "static.vk.com";
    }

    public static Boolean isAnyProxyEnabled() {
        return false;
    }

    public static Boolean isZaboronaEnabled() {
        return false;
    }

    public static Boolean isVKProxyEnabled() {
        return false;
    }

    public static Boolean isApiProxyEnabled() {
        return false;
    }

    public static Boolean isVikaProxyEnabled() {
        return false;
    }

    public static void forceProxyApplying() {
    }

    public static void setProxy() {
    }

    public static void resetProxy() {
    }
}