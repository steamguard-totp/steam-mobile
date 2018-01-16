package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;

@zzmb
public class zzha extends Image {
    private final Drawable mDrawable;
    private final Uri mUri;
    private final double zzFR;
    private final zzgz zzGR;

    public zzha(zzgz com_google_android_gms_internal_zzgz) {
        Drawable drawable;
        double d;
        Uri uri = null;
        this.zzGR = com_google_android_gms_internal_zzgz;
        try {
            zzd zzfK = this.zzGR.zzfK();
            if (zzfK != null) {
                drawable = (Drawable) zze.zzE(zzfK);
                this.mDrawable = drawable;
                uri = this.zzGR.getUri();
                this.mUri = uri;
                d = 1.0d;
                d = this.zzGR.getScale();
                this.zzFR = d;
            }
        } catch (Throwable e) {
            zzpy.zzb("Failed to get drawable.", e);
        }
        Object obj = uri;
        this.mDrawable = drawable;
        try {
            uri = this.zzGR.getUri();
        } catch (Throwable e2) {
            zzpy.zzb("Failed to get uri.", e2);
        }
        this.mUri = uri;
        d = 1.0d;
        try {
            d = this.zzGR.getScale();
        } catch (Throwable e3) {
            zzpy.zzb("Failed to get scale.", e3);
        }
        this.zzFR = d;
    }

    public Drawable getDrawable() {
        return this.mDrawable;
    }

    public double getScale() {
        return this.zzFR;
    }

    public Uri getUri() {
        return this.mUri;
    }
}
