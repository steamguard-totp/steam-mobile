package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

class zzd<TResult> implements zzf<TResult> {
    private final Executor zzbDK;
    private OnFailureListener zzbLz;
    private final Object zzrN = new Object();

    public zzd(Executor executor, OnFailureListener onFailureListener) {
        this.zzbDK = executor;
        this.zzbLz = onFailureListener;
    }

    public void onComplete(final Task<TResult> task) {
        if (!task.isSuccessful()) {
            synchronized (this.zzrN) {
                if (this.zzbLz == null) {
                    return;
                }
                this.zzbDK.execute(new Runnable(this) {
                    final /* synthetic */ zzd zzbLA;

                    public void run() {
                        synchronized (this.zzbLA.zzrN) {
                            if (this.zzbLA.zzbLz != null) {
                                this.zzbLA.zzbLz.onFailure(task.getException());
                            }
                        }
                    }
                });
            }
        }
    }
}
