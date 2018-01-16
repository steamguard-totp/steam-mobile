package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.support.v4.content.AsyncTaskLoader;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzabi;
import java.util.Set;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

public class zzb extends AsyncTaskLoader<Void> implements zzabi {
    private Semaphore zzajp = new Semaphore(0);
    private Set<GoogleApiClient> zzajq;

    public zzb(Context context, Set<GoogleApiClient> set) {
        super(context);
        this.zzajq = set;
    }

    public /* synthetic */ Object loadInBackground() {
        return zzqQ();
    }

    protected void onStartLoading() {
        this.zzajp.drainPermits();
        forceLoad();
    }

    public Void zzqQ() {
        int i = 0;
        for (GoogleApiClient zza : this.zzajq) {
            i = zza.zza((zzabi) this) ? i + 1 : i;
        }
        try {
            this.zzajp.tryAcquire(i, 5, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
        return null;
    }

    public void zzqR() {
        this.zzajp.release();
    }
}
