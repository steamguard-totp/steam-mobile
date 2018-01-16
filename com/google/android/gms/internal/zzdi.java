package com.google.android.gms.internal;

import java.nio.charset.Charset;
import java.security.MessageDigest;

@zzmb
public class zzdi extends zzdd {
    private MessageDigest zzyi;
    private final int zzyl;
    private final int zzym;

    public zzdi(int i) {
        int i2 = i / 8;
        if (i % 8 > 0) {
            i2++;
        }
        this.zzyl = i2;
        this.zzym = i;
    }

    public byte[] zzF(String str) {
        byte[] bArr;
        synchronized (this.zzrN) {
            this.zzyi = zzeo();
            if (this.zzyi == null) {
                bArr = new byte[0];
            } else {
                this.zzyi.reset();
                this.zzyi.update(str.getBytes(Charset.forName("UTF-8")));
                Object digest = this.zzyi.digest();
                bArr = new byte[(digest.length > this.zzyl ? this.zzyl : digest.length)];
                System.arraycopy(digest, 0, bArr, 0, bArr.length);
                if (this.zzym % 8 > 0) {
                    int i;
                    long j = 0;
                    for (i = 0; i < bArr.length; i++) {
                        if (i > 0) {
                            j <<= 8;
                        }
                        j += (long) (bArr[i] & 255);
                    }
                    j >>>= 8 - (this.zzym % 8);
                    for (i = this.zzyl - 1; i >= 0; i--) {
                        bArr[i] = (byte) ((int) (255 & j));
                        j >>>= 8;
                    }
                }
            }
        }
        return bArr;
    }
}
