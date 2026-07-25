package ru.vtosters.lite.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import javax.net.SocketFactory;
import ru.vtosters.lite.utils.AndroidUtils;

public class DirectSocketFactory {

    /**
     * Возвращает SocketFactory, привязанную к физическому интерфейсу (Wi-Fi / Cellular),
     * полностью минуя виртуальный туннель VPN (TRANSPORT_VPN).
     */
    public static SocketFactory getPhysicalSocketFactory() {
        try {
            Context context = AndroidUtils.getGlobalContext();
            if (context == null) return SocketFactory.getDefault();

            ConnectivityManager cm = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
            if (cm == null) return SocketFactory.getDefault();

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                Network[] networks = cm.getAllNetworks();
                for (Network network : networks) {
                    NetworkCapabilities caps = cm.getNetworkCapabilities(network);
                    if (caps != null && !caps.hasTransport(NetworkCapabilities.TRANSPORT_VPN)) {
                        if (caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) ||
                            caps.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR)) {
                            return network.getSocketFactory();
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return SocketFactory.getDefault();
    }
}
