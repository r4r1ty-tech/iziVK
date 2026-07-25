package ru.vtosters.lite.crypto;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.HashSet;
import java.util.Set;

public class CryptoManager {

    public static final String ENC_PREFIX = "[ENC]";
    public static final String HANDSHAKE_TAG = "\u200B\u200C\u200B";

    private static final Set<String> KNOWN_MOD_PEERS = new HashSet<>();

    public static void markPeerHasMod(String peerId) {
        if (peerId != null && !peerId.isEmpty()) {
            KNOWN_MOD_PEERS.add(peerId);
        }
    }

    public static boolean hasPeerMod(String peerId) {
        return peerId != null && KNOWN_MOD_PEERS.contains(peerId);
    }

    /**
     * Превращает секретную фразу/пароль чата в 256-битный AES ключ через SHA-256
     */
    private static SecretKeySpec deriveKey(String passphrase) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        byte[] keyBytes = digest.digest(passphrase.getBytes(StandardCharsets.UTF_8));
        return new SecretKeySpec(keyBytes, "AES");
    }

    /**
     * Шифрует текст сообщения с помощью AES-256-GCM
     */
    public static String encrypt(String plainText, String passphrase) {
        try {
            if (plainText == null || plainText.isEmpty()) return plainText;

            // Добавляем невидимый тег рукопожатия
            String textWithTag = plainText + HANDSHAKE_TAG;

            byte[] iv = new byte[12];
            new SecureRandom().nextBytes(iv);

            SecretKeySpec secretKey = deriveKey(passphrase);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            GCMParameterSpec parameterSpec = new GCMParameterSpec(128, iv);
            cipher.init(Cipher.ENCRYPT_MODE, secretKey, parameterSpec);

            byte[] cipherText = cipher.doFinal(textWithTag.getBytes(StandardCharsets.UTF_8));

            byte[] combined = new byte[iv.length + cipherText.length];
            System.arraycopy(iv, 0, combined, 0, iv.length);
            System.arraycopy(cipherText, 0, combined, iv.length, cipherText.length);

            String encoded = Base64.encodeToString(combined, Base64.NO_WRAP);
            return ENC_PREFIX + encoded;
        } catch (Exception e) {
            e.printStackTrace();
            return plainText;
        }
    }

    /**
     * Расшифровывает сообщение, если оно начинается с [ENC]
     */
    public static String decrypt(String encryptedPayload, String passphrase) {
        try {
            if (encryptedPayload == null || !encryptedPayload.startsWith(ENC_PREFIX)) {
                return encryptedPayload;
            }

            String base64Data = encryptedPayload.substring(ENC_PREFIX.length());
            byte[] combined = Base64.decode(base64Data, Base64.NO_WRAP);

            if (combined.length < 13) return encryptedPayload;

            byte[] iv = new byte[12];
            byte[] cipherText = new byte[combined.length - 12];
            System.arraycopy(combined, 0, iv, 0, 12);
            System.arraycopy(combined, 12, cipherText, 0, cipherText.length);

            SecretKeySpec secretKey = deriveKey(passphrase);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            GCMParameterSpec parameterSpec = new GCMParameterSpec(128, iv);
            cipher.init(Cipher.DECRYPT_MODE, secretKey, parameterSpec);

            byte[] plainTextBytes = cipher.doFinal(cipherText);
            String decryptedText = new String(plainTextBytes, StandardCharsets.UTF_8);

            // Удаляем маркер рукопожатия при отображении
            if (decryptedText.endsWith(HANDSHAKE_TAG)) {
                decryptedText = decryptedText.substring(0, decryptedText.length() - HANDSHAKE_TAG.length());
            }

            return decryptedText;
        } catch (Exception e) {
            return "🔒 [Зашифрованное сообщение - Ошибка ключа]";
        }
    }

    /**
     * Проверяет входное незашифрованное сообщение на наличие невидимой метки рукопожатия
     */
    public static String processIncomingText(String text, String peerId) {
        if (text != null && text.contains(HANDSHAKE_TAG)) {
            markPeerHasMod(peerId);
            return text.replace(HANDSHAKE_TAG, "");
        }
        return text;
    }
}
