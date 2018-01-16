package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzjw.zza;
import java.util.ArrayList;
import java.util.List;

@zzmb
public class zzkb extends zza {
    private final NativeAppInstallAdMapper zzKY;

    public zzkb(NativeAppInstallAdMapper nativeAppInstallAdMapper) {
        this.zzKY = nativeAppInstallAdMapper;
    }

    public String getBody() {
        return this.zzKY.getBody();
    }

    public String getCallToAction() {
        return this.zzKY.getCallToAction();
    }

    public Bundle getExtras() {
        return this.zzKY.getExtras();
    }

    public String getHeadline() {
        return this.zzKY.getHeadline();
    }

    public List getImages() {
        List<Image> images = this.zzKY.getImages();
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
        return this.zzKY.getOverrideClickHandling();
    }

    public boolean getOverrideImpressionRecording() {
        return this.zzKY.getOverrideImpressionRecording();
    }

    public String getPrice() {
        return this.zzKY.getPrice();
    }

    public double getStarRating() {
        return this.zzKY.getStarRating();
    }

    public String getStore() {
        return this.zzKY.getStore();
    }

    public void recordImpression() {
    }

    public zzew zzbG() {
        return this.zzKY.getVideoController() != null ? this.zzKY.getVideoController().zzbt() : null;
    }

    public zzgz zzfL() {
        Image icon = this.zzKY.getIcon();
        return icon != null ? new zzgo(icon.getDrawable(), icon.getUri(), icon.getScale()) : null;
    }

    public void zzk(zzd com_google_android_gms_dynamic_zzd) {
        zze.zzE(com_google_android_gms_dynamic_zzd);
    }

    public void zzl(zzd com_google_android_gms_dynamic_zzd) {
        this.zzKY.trackView((View) zze.zzE(com_google_android_gms_dynamic_zzd));
    }

    public void zzm(zzd com_google_android_gms_dynamic_zzd) {
        zze.zzE(com_google_android_gms_dynamic_zzd);
    }
}
