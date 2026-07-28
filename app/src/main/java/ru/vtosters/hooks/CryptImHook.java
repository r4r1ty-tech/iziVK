package ru.vtosters.hooks;

import ru.vtosters.lite.encryption.EncryptProvider;
import ru.vtosters.lite.encryption.base.IMProcessor;
import ru.vtosters.lite.encryption.processors.EncGcmProcessor;

public class CryptImHook {
    private static IMProcessor getGcmProcessor() {
        for (IMProcessor processor : EncryptProvider.processors) {
            if (processor instanceof EncGcmProcessor) {
                return processor;
            }
        }
        return EncryptProvider.processors.get(0);
    }

    public static boolean isEncryptionEnabled(int peerId) {
        return EncryptProvider.getProcessorFor(peerId) != null;
    }

    public static void setEncryptionEnabled(int peerId, boolean enabled) {
        IMProcessor processor = getGcmProcessor();
        if (enabled) {
            processor.enableEncryptFor(peerId);
        } else {
            processor.disableEncryptFor(peerId);
        }
    }
}
