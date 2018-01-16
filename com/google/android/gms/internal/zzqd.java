package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;

@zzmb
public class zzqd<T> implements zzqf<T> {
    private final T zzYe;
    private final zzqg zzYh = new zzqg();

    public zzqd(T t) {
        this.zzYe = t;
        this.zzYh.zzkM();
    }

    public boolean cancel(boolean z) {
        return false;
    }

    public T get() {
        return this.zzYe;
    }

    public T get(long j, TimeUnit timeUnit) {
        return this.zzYe;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return true;
    }

    public void zzc(Runnable runnable) {
        this.zzYh.zzc(runnable);
    }
}
