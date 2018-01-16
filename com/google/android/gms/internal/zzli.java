package com.google.android.gms.internal;

import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzld.zza;

@zzmb
public final class zzli extends zza {
    private final PlayStorePurchaseListener zzAc;

    public zzli(PlayStorePurchaseListener playStorePurchaseListener) {
        this.zzAc = playStorePurchaseListener;
    }

    public boolean isValidPurchase(String str) {
        return this.zzAc.isValidPurchase(str);
    }

    public void zza(zzlc com_google_android_gms_internal_zzlc) {
        zzlg com_google_android_gms_internal_zzlg = new zzlg(com_google_android_gms_internal_zzlc);
    }
}
