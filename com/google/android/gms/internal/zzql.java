package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.google.android.gms.ads.internal.zzv;
import java.lang.ref.WeakReference;

@zzmb
class zzql extends zzqn implements OnGlobalLayoutListener {
    private final WeakReference<OnGlobalLayoutListener> zzYx;

    public zzql(View view, OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.zzYx = new WeakReference(onGlobalLayoutListener);
    }

    public void onGlobalLayout() {
        OnGlobalLayoutListener onGlobalLayoutListener = (OnGlobalLayoutListener) this.zzYx.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            detach();
        }
    }

    protected void zza(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    protected void zzb(ViewTreeObserver viewTreeObserver) {
        zzv.zzcL().zza(viewTreeObserver, (OnGlobalLayoutListener) this);
    }
}
