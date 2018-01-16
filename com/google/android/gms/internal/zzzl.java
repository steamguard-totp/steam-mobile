package com.google.android.gms.internal;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class zzzl {
    private static long zzH(long j) {
        return (j >>> 47) ^ j;
    }

    private static long zza(byte[] bArr, int i, int i2) {
        long j = 0;
        for (int i3 = 0; i3 < Math.min(i2, 8); i3++) {
            j |= (((long) bArr[i + i3]) & 255) << (i3 * 8);
        }
        return j;
    }

    private static long zza(byte[] bArr, long j) {
        int length = bArr.length & -8;
        int length2 = bArr.length & 7;
        long length3 = j ^ (((long) bArr.length) * -4132994306676758123L);
        int i = 0;
        while (i < length) {
            long zzH = (length3 ^ (zzH(zzb(bArr, i) * -4132994306676758123L) * -4132994306676758123L)) * -4132994306676758123L;
            i += 8;
            length3 = zzH;
        }
        if (length2 != 0) {
            length3 = (length3 ^ zza(bArr, length, length2)) * -4132994306676758123L;
        }
        return zzH(zzH(length3) * -4132994306676758123L);
    }

    private static void zza(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long zzb = zzb(bArr, i);
        long zzb2 = zzb(bArr, i + 8);
        long zzb3 = zzb(bArr, i + 16);
        long zzb4 = zzb(bArr, i + 24);
        zzb += j;
        zzb2 = (zzb2 + zzb) + zzb3;
        zzb3 = Long.rotateRight(zzb2, 23) + Long.rotateRight((j2 + zzb) + zzb4, 51);
        jArr[0] = zzb2 + zzb4;
        jArr[1] = zzb + zzb3;
    }

    private static long zzb(byte[] bArr, int i) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }

    private static long zzc(long j, long j2) {
        long j3 = (j2 ^ j) * -4132994306676758123L;
        j3 = ((j3 ^ (j3 >>> 47)) ^ j) * -4132994306676758123L;
        return (j3 ^ (j3 >>> 47)) * -4132994306676758123L;
    }

    public static long zzn(byte[] bArr) {
        long j = -6505348102511208375L;
        long zza = bArr.length <= 32 ? zza(bArr, -1397348546323613475L) : bArr.length <= 64 ? zzo(bArr) : zzp(bArr);
        long zzb = bArr.length >= 8 ? zzb(bArr, 0) : -6505348102511208375L;
        if (bArr.length >= 9) {
            j = zzb(bArr, bArr.length - 8);
        }
        zza = zzc(zza + j, zzb);
        return (zza == 0 || zza == 1) ? zza - 2 : zza;
    }

    private static long zzo(byte[] bArr) {
        int length = bArr.length;
        long zzb = zzb(bArr, 24);
        long zzb2 = zzb(bArr, 0) + ((((long) length) + zzb(bArr, length - 16)) * -6505348102511208375L);
        long rotateRight = Long.rotateRight(zzb2 + zzb, 52);
        long rotateRight2 = Long.rotateRight(zzb2, 37);
        zzb2 += zzb(bArr, 8);
        rotateRight2 += Long.rotateRight(zzb2, 7);
        zzb2 += zzb(bArr, 16);
        zzb += zzb2;
        zzb2 = (Long.rotateRight(zzb2, 31) + rotateRight) + rotateRight2;
        rotateRight = zzb(bArr, 16) + zzb(bArr, length - 32);
        rotateRight2 = zzb(bArr, length - 8);
        long rotateRight3 = Long.rotateRight(rotateRight + rotateRight2, 52);
        long rotateRight4 = Long.rotateRight(rotateRight, 37);
        rotateRight += zzb(bArr, length - 24);
        long zzb3 = zzb(bArr, length - 16) + rotateRight;
        return zzH((zzH(((((Long.rotateRight(zzb3, 31) + rotateRight3) + (rotateRight4 + Long.rotateRight(rotateRight, 7))) + zzb) * -4288712594273399085L) + (((zzb3 + rotateRight2) + zzb2) * -6505348102511208375L)) * -6505348102511208375L) + zzb2) * -4288712594273399085L;
    }

    private static long zzp(byte[] bArr) {
        int length = bArr.length;
        long zzb = zzb(bArr, 0);
        long zzb2 = zzb(bArr, length - 16) ^ -8261664234251669945L;
        long zzb3 = zzb(bArr, length - 56) ^ -6505348102511208375L;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        zza(bArr, length - 64, (long) length, zzb2, jArr);
        zza(bArr, length - 32, ((long) length) * -8261664234251669945L, -6505348102511208375L, jArr2);
        long zzH = zzb3 + (zzH(jArr[1]) * -8261664234251669945L);
        long rotateRight = Long.rotateRight(zzb2, 33) * -8261664234251669945L;
        int i = 0;
        zzb2 = -8261664234251669945L * Long.rotateRight(zzH + zzb, 39);
        length = (length - 1) & -64;
        while (true) {
            zzb2 = Long.rotateRight(((zzb2 + rotateRight) + jArr[0]) + zzb(bArr, i + 16), 37) * -8261664234251669945L;
            zzb = zzb2 ^ jArr2[1];
            rotateRight = (Long.rotateRight((jArr[1] + rotateRight) + zzb(bArr, i + 48), 42) * -8261664234251669945L) ^ jArr[0];
            zzb3 = Long.rotateRight(zzH ^ jArr2[0], 33);
            zza(bArr, i, jArr[1] * -8261664234251669945L, jArr2[0] + zzb, jArr);
            zza(bArr, i + 32, zzb3 + jArr2[1], rotateRight, jArr2);
            i += 64;
            int i2 = length - 64;
            if (i2 == 0) {
                return zzc((zzc(jArr[0], jArr2[0]) + (zzH(rotateRight) * -8261664234251669945L)) + zzb, zzc(jArr[1], jArr2[1]) + zzb3);
            }
            zzH = zzb;
            zzb2 = zzb3;
            length = i2;
        }
    }
}
