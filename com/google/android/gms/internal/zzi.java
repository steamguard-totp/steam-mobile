package com.google.android.gms.internal;

import java.util.Map;

public class zzi {
    public final byte[] data;
    public final int statusCode;
    public final long zzA;
    public final Map<String, String> zzy;
    public final boolean zzz;

    public zzi(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this.statusCode = i;
        this.data = bArr;
        this.zzy = map;
        this.zzz = z;
        this.zzA = j;
    }

    public zzi(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0);
    }
}
