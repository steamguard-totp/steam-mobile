package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@zzmb
public abstract class zzdd {
    private static MessageDigest zzyb = null;
    protected Object zzrN = new Object();

    abstract byte[] zzF(String str);

    protected MessageDigest zzeo() {
        MessageDigest messageDigest;
        synchronized (this.zzrN) {
            if (zzyb != null) {
                messageDigest = zzyb;
            } else {
                for (int i = 0; i < 2; i++) {
                    try {
                        zzyb = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                messageDigest = zzyb;
            }
        }
        return messageDigest;
    }
}
