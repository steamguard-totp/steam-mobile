package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzjx.zza;
import java.util.ArrayList;
import java.util.List;

@zzmb
public class zzkc extends zza {
    private final NativeContentAdMapper zzKZ;

    public zzkc(NativeContentAdMapper nativeContentAdMapper) {
        this.zzKZ = nativeContentAdMapper;
    }

    public String getAdvertiser() {
        return this.zzKZ.getAdvertiser();
    }

    public String getBody() {
        return this.zzKZ.getBody();
    }

    public String getCallToAction() {
        return this.zzKZ.getCallToAction();
    }

    public Bundle getExtras() {
        return this.zzKZ.getExtras();
    }

    public String getHeadline() {
        return this.zzKZ.getHeadline();
    }

    public List getImages() {
        List<Image> images = this.zzKZ.getImages();
        if (images == null) {
            return null;
        }
        List arrayList = new ArrayList();
        for (Image image : images) {
            arrayList.add(new zzgo(image.getDrawable(), image.getUri(), image.getScale()));
        }
        return arrayList;
    }

    public boolean getOverrideClickHandling() {
        return this.zzKZ.getOverrideClickHandling();
    }

    public boolean getOverrideImpressionRecording() {
        return this.zzKZ.getOverrideImpressionRecording();
    }

    public void recordImpression() {
    }

    public zzgz zzfQ() {
        Image logo = this.zzKZ.getLogo();
        return logo != null ? new zzgo(logo.getDrawable(), logo.getUri(), logo.getScale()) : null;
    }

    public void zzk(zzd com_google_android_gms_dynamic_zzd) {
        zze.zzE(com_google_android_gms_dynamic_zzd);
    }

    public void zzl(zzd com_google_android_gms_dynamic_zzd) {
        this.zzKZ.trackView((View) zze.zzE(com_google_android_gms_dynamic_zzd));
    }

    public void zzm(zzd com_google_android_gms_dynamic_zzd) {
        zze.zzE(com_google_android_gms_dynamic_zzd);
    }
}
