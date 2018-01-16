package com.google.android.gms.internal;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@zzmb
public class zzpr {
    Map<Integer, Bitmap> zzXI = new ConcurrentHashMap();
    private AtomicInteger zzXJ = new AtomicInteger(0);

    public Bitmap zza(Integer num) {
        return (Bitmap) this.zzXI.get(num);
    }

    public int zzb(Bitmap bitmap) {
        if (bitmap == null) {
            zzpy.zzbc("Bitmap is null. Skipping putting into the Memory Map.");
            return -1;
        }
        this.zzXI.put(Integer.valueOf(this.zzXJ.get()), bitmap);
        return this.zzXJ.getAndIncrement();
    }

    public void zzb(Integer num) {
        this.zzXI.remove(num);
    }
}
