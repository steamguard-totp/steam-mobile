package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd.Image;
import java.util.List;

public abstract class NativeAppInstallAdMapper extends NativeAdMapper {
    private String zzFS;
    private List<Image> zzFT;
    private String zzFU;
    private String zzFW;
    private double zzFX;
    private String zzFY;
    private String zzFZ;
    private Image zzZO;
    private VideoController zzzW;

    public final String getBody() {
        return this.zzFU;
    }

    public final String getCallToAction() {
        return this.zzFW;
    }

    public final String getHeadline() {
        return this.zzFS;
    }

    public final Image getIcon() {
        return this.zzZO;
    }

    public final List<Image> getImages() {
        return this.zzFT;
    }

    public final String getPrice() {
        return this.zzFZ;
    }

    public final double getStarRating() {
        return this.zzFX;
    }

    public final String getStore() {
        return this.zzFY;
    }

    public final VideoController getVideoController() {
        return this.zzzW;
    }

    public final void setBody(String str) {
        this.zzFU = str;
    }

    public final void setCallToAction(String str) {
        this.zzFW = str;
    }

    public final void setHeadline(String str) {
        this.zzFS = str;
    }

    public final void setIcon(Image image) {
        this.zzZO = image;
    }

    public final void setImages(List<Image> list) {
        this.zzFT = list;
    }

    public final void setPrice(String str) {
        this.zzFZ = str;
    }

    public final void setStarRating(double d) {
        this.zzFX = d;
    }

    public final void setStore(String str) {
        this.zzFY = str;
    }

    public final void zza(VideoController videoController) {
        this.zzzW = videoController;
    }
}
