package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;
import android.webkit.WebChromeClient.CustomViewCallback;

@TargetApi(14)
@zzmb
public final class zzqy extends zzqw {
    public zzqy(zzqp com_google_android_gms_internal_zzqp) {
        super(com_google_android_gms_internal_zzqp);
    }

    public void onShowCustomView(View view, int i, CustomViewCallback customViewCallback) {
        zza(view, i, customViewCallback);
    }
}
