package com.google.android.gms.internal;

import java.security.MessageDigest;

@zzmb
public class zzdg extends zzdd {
    private MessageDigest zzyi;

    public byte[] zzF(String str) {
        byte[] bArr;
        int i = 4;
        byte[] zza = zza(str.split(" "));
        this.zzyi = zzeo();
        synchronized (this.zzrN) {
            if (this.zzyi == null) {
                bArr = new byte[0];
            } else {
                this.zzyi.reset();
                this.zzyi.update(zza);
                Object digest = this.zzyi.digest();
                if (digest.length <= 4) {
                    i = digest.length;
                }
                bArr = new byte[i];
                System.arraycopy(digest, 0, bArr, 0, bArr.length);
            }
        }
        return bArr;
    }

    byte[] zza(String[] strArr) {
        int i = 0;
        if (strArr.length == 1) {
            return zzdf.zzp(zzdf.zzH(strArr[0]));
        }
        if (strArr.length < 5) {
            byte[] bArr = new byte[(strArr.length * 2)];
            for (int i2 = 0; i2 < strArr.length; i2++) {
                byte[] zzs = zzs(zzdf.zzH(strArr[i2]));
                bArr[i2 * 2] = zzs[0];
                bArr[(i2 * 2) + 1] = zzs[1];
            }
            return bArr;
        }
        byte[] bArr2 = new byte[strArr.length];
        while (i < strArr.length) {
            bArr2[i] = zzr(zzdf.zzH(strArr[i]));
            i++;
        }
        return bArr2;
    }

    byte zzr(int i) {
        return (byte) ((((i & 255) ^ ((65280 & i) >> 8)) ^ ((16711680 & i) >> 16)) ^ ((-16777216 & i) >> 24));
    }

    byte[] zzs(int i) {
        int i2 = (65535 & i) ^ ((-65536 & i) >> 16);
        return new byte[]{(byte) i2, (byte) (i2 >> 8)};
    }
}
