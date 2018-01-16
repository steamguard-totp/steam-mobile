package com.google.android.gms.internal;

import org.json.JSONObject;

@zzmb
public class zzko {
    private final zzqp zzGt;
    private final String zzLX;

    public zzko(zzqp com_google_android_gms_internal_zzqp) {
        this(com_google_android_gms_internal_zzqp, "");
    }

    public zzko(zzqp com_google_android_gms_internal_zzqp, String str) {
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzLX = str;
    }

    public void zza(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.zzGt.zzb("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", (double) f).put("rotation", i5));
        } catch (Throwable e) {
            zzpy.zzb("Error occured while obtaining screen information.", e);
        }
    }

    public void zzaA(String str) {
        try {
            this.zzGt.zzb("onStateChanged", new JSONObject().put("state", str));
        } catch (Throwable e) {
            zzpy.zzb("Error occured while dispatching state change.", e);
        }
    }

    public void zzay(String str) {
        try {
            this.zzGt.zzb("onError", new JSONObject().put("message", str).put("action", this.zzLX));
        } catch (Throwable e) {
            zzpy.zzb("Error occurred while dispatching error event.", e);
        }
    }

    public void zzaz(String str) {
        try {
            this.zzGt.zzb("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (Throwable e) {
            zzpy.zzb("Error occured while dispatching ready Event.", e);
        }
    }

    public void zzb(int i, int i2, int i3, int i4) {
        try {
            this.zzGt.zzb("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (Throwable e) {
            zzpy.zzb("Error occured while dispatching size change.", e);
        }
    }

    public void zzc(int i, int i2, int i3, int i4) {
        try {
            this.zzGt.zzb("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (Throwable e) {
            zzpy.zzb("Error occured while dispatching default position.", e);
        }
    }
}
