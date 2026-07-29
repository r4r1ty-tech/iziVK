package ru.vtosters.lite.auth;

import android.app.Activity;

import com.vk.api.base.ApiRequest;
import com.vk.auth.api.VKAccount;
import com.vk.core.util.TimeUtils;
import com.vtosters.lite.api.execute.GetWallInfo;
import com.vtosters.lite.auth.VKAccountManager;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;

public final class SessionInjector {
    private static volatile boolean anonymousInjection;

    private SessionInjector() {
    }

    public static void loginWithToken(Activity activity, String accessToken, int userId, int expiresIn, Runnable onSuccess, Runnable onError) {
        if (accessToken == null || accessToken.isEmpty() || userId == 0) {
            if (onError != null) {
                activity.runOnUiThread(onError);
            }
            return;
        }

        VKAccount account = new VKAccount();
        account.s(userId);
        account.a(accessToken);
        account.i("");
        account.o(accessToken);
        account.v(TimeUtils.b() + Math.max(expiresIn, 0));

        GetWallInfo request = new GetWallInfo(true);
        request.b(accessToken, "");

        anonymousInjection = true;
        ApiRequest.d(request, null, 1, null)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new Consumer<GetWallInfo.a>() {
                    @Override
                    public void accept(GetWallInfo.a wallInfo) {
                        try {
                            VKAccountManager.a(account, wallInfo);
                            AuthMode.set(AuthMode.ANONYMOUS);
                            if (onSuccess != null) {
                                onSuccess.run();
                            }
                        } catch (Throwable t) {
                            anonymousInjection = false;
                            if (onError != null) {
                                onError.run();
                            }
                        } finally {
                            anonymousInjection = false;
                        }
                    }
                }, throwable -> {
                    anonymousInjection = false;
                    if (onError != null) {
                        activity.runOnUiThread(onError);
                    }
                });
    }

    public static void onNativeLoginComplete() {
        if (!anonymousInjection) {
            AuthMode.set(AuthMode.FULL);
        }
    }
}
