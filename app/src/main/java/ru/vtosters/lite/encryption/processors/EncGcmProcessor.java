package ru.vtosters.lite.encryption.processors;

import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import ru.vtosters.hooks.other.Preferences;
import ru.vtosters.lite.crypto.CryptoManager;
import ru.vtosters.lite.encryption.base.IMProcessor;

/**
 * iziVK E2EE: AES-256-GCM через {@link CryptoManager}, префикс [ENC], индикатор 🔒 в UI.
 */
public class EncGcmProcessor extends IMProcessor {

    private static String keyToPassphrase(@Nullable byte[] key) {
        if (key == null || key.length == 0) return "VTAesDefault";
        return Base64.encodeToString(key, Base64.NO_WRAP);
    }

    @Override
    public boolean isEncrypted(String source) {
        return source != null && source.startsWith(CryptoManager.ENC_PREFIX);
    }

    @NonNull
    @Override
    protected String encodeInternal(@NonNull String source, @Nullable byte[] key) {
        return CryptoManager.encrypt(source, keyToPassphrase(key));
    }

    @NonNull
    @Override
    protected String decodeInternal(@NonNull String source, @Nullable byte[] key) {
        return CryptoManager.decrypt(source, keyToPassphrase(key));
    }

    @Override
    public boolean isPublic() {
        return false;
    }

    @NonNull
    @Override
    public String startTag() {
        return "";
    }

    @NonNull
    @Override
    public String endTag() {
        return "";
    }

    @NonNull
    @Override
    public String getUIName() {
        return "iziVK [AES-GCM]";
    }

    @NonNull
    @Override
    public String getPrefKey() {
        return "izigcm";
    }

    @Nullable
    @Override
    public String getEncryptionKeyFor(int id) {
        return Preferences.getPreferences().getString("VT_IMEncodeKey_" + getPrefKey() + "_" + id, "VTAesDefault");
    }
}
