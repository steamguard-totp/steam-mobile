package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.zzac;
import java.util.concurrent.Executor;

final class zzh<TResult> extends Task<TResult> {
    private final zzg<TResult> zzbLH = new zzg();
    private boolean zzbLI;
    private TResult zzbLJ;
    private Exception zzbLK;
    private final Object zzrN = new Object();

    zzh() {
    }

    private void zzSe() {
        zzac.zza(this.zzbLI, "Task is not yet complete");
    }

    private void zzSf() {
        zzac.zza(!this.zzbLI, "Task is already complete");
    }

    private void zzSg() {
        synchronized (this.zzrN) {
            if (this.zzbLI) {
                this.zzbLH.zza((Task) this);
                return;
            }
        }
    }

    public Task<TResult> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        this.zzbLH.zza(new zzd(executor, onFailureListener));
        zzSg();
        return this;
    }

    public Task<TResult> addOnSuccessListener(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.zzbLH.zza(new zze(executor, onSuccessListener));
        zzSg();
        return this;
    }

    public Exception getException() {
        Exception exception;
        synchronized (this.zzrN) {
            exception = this.zzbLK;
        }
        return exception;
    }

    public TResult getResult() {
        TResult tResult;
        synchronized (this.zzrN) {
            zzSe();
            if (this.zzbLK != null) {
                throw new RuntimeExecutionException(this.zzbLK);
            }
            tResult = this.zzbLJ;
        }
        return tResult;
    }

    public boolean isSuccessful() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzbLI && this.zzbLK == null;
        }
        return z;
    }

    public void setException(Exception exception) {
        zzac.zzb((Object) exception, (Object) "Exception must not be null");
        synchronized (this.zzrN) {
            zzSf();
            this.zzbLI = true;
            this.zzbLK = exception;
        }
        this.zzbLH.zza((Task) this);
    }

    public void setResult(TResult tResult) {
        synchronized (this.zzrN) {
            zzSf();
            this.zzbLI = true;
            this.zzbLJ = tResult;
        }
        this.zzbLH.zza((Task) this);
    }

    public boolean trySetException(Exception exception) {
        boolean z = true;
        zzac.zzb((Object) exception, (Object) "Exception must not be null");
        synchronized (this.zzrN) {
            if (this.zzbLI) {
                z = false;
            } else {
                this.zzbLI = true;
                this.zzbLK = exception;
                this.zzbLH.zza((Task) this);
            }
        }
        return z;
    }
}
