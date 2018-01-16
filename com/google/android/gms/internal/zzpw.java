package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.zzv;

@zzmb
public final class zzpw {
    private final View mView;
    private Activity zzXO;
    private boolean zzXP;
    private boolean zzXQ;
    private boolean zzXR;
    private OnGlobalLayoutListener zzXS;
    private OnScrollChangedListener zzXT;

    public zzpw(Activity activity, View view, OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
        this.zzXO = activity;
        this.mView = view;
        this.zzXS = onGlobalLayoutListener;
        this.zzXT = onScrollChangedListener;
    }

    private void zzkG() {
        if (!this.zzXP) {
            if (this.zzXS != null) {
                if (this.zzXO != null) {
                    zzv.zzcJ().zza(this.zzXO, this.zzXS);
                }
                zzv.zzdh().zza(this.mView, this.zzXS);
            }
            if (this.zzXT != null) {
                if (this.zzXO != null) {
                    zzv.zzcJ().zza(this.zzXO, this.zzXT);
                }
                zzv.zzdh().zza(this.mView, this.zzXT);
            }
            this.zzXP = true;
        }
    }

    private void zzkH() {
        if (this.zzXO != null && this.zzXP) {
            if (!(this.zzXS == null || this.zzXO == null)) {
                zzv.zzcL().zzb(this.zzXO, this.zzXS);
            }
            if (!(this.zzXT == null || this.zzXO == null)) {
                zzv.zzcJ().zzb(this.zzXO, this.zzXT);
            }
            this.zzXP = false;
        }
    }

    public void onAttachedToWindow() {
        this.zzXQ = true;
        if (this.zzXR) {
            zzkG();
        }
    }

    public void onDetachedFromWindow() {
        this.zzXQ = false;
        zzkH();
    }

    public void zzkE() {
        this.zzXR = true;
        if (this.zzXQ) {
            zzkG();
        }
    }

    public void zzkF() {
        this.zzXR = false;
        zzkH();
    }

    public void zzl(Activity activity) {
        this.zzXO = activity;
    }
}
