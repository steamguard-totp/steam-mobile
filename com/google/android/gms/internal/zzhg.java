package com.google.android.gms.internal;

import android.os.IBinder;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzgz.zza;
import java.util.ArrayList;
import java.util.List;

@zzmb
public class zzhg extends NativeContentAd {
    private final List<Image> zzGT = new ArrayList();
    private final zzhf zzGV;
    private final zzha zzGW;

    public zzhg(zzhf com_google_android_gms_internal_zzhf) {
        zzha com_google_android_gms_internal_zzha;
        this.zzGV = com_google_android_gms_internal_zzhf;
        try {
            List<Object> images = this.zzGV.getImages();
            if (images != null) {
                for (Object zze : images) {
                    zzgz zze2 = zze(zze);
                    if (zze2 != null) {
                        this.zzGT.add(new zzha(zze2));
                    }
                }
            }
        } catch (Throwable e) {
            zzpy.zzb("Failed to get image.", e);
        }
        try {
            zzgz zzfQ = this.zzGV.zzfQ();
            if (zzfQ != null) {
                com_google_android_gms_internal_zzha = new zzha(zzfQ);
                this.zzGW = com_google_android_gms_internal_zzha;
            }
        } catch (Throwable e2) {
            zzpy.zzb("Failed to get icon.", e2);
        }
        com_google_android_gms_internal_zzha = null;
        this.zzGW = com_google_android_gms_internal_zzha;
    }

    public CharSequence getAdvertiser() {
        try {
            return this.zzGV.getAdvertiser();
        } catch (Throwable e) {
            zzpy.zzb("Failed to get attribution.", e);
            return null;
        }
    }

    public CharSequence getBody() {
        try {
            return this.zzGV.getBody();
        } catch (Throwable e) {
            zzpy.zzb("Failed to get body.", e);
            return null;
        }
    }

    public CharSequence getCallToAction() {
        try {
            return this.zzGV.getCallToAction();
        } catch (Throwable e) {
            zzpy.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    public CharSequence getHeadline() {
        try {
            return this.zzGV.getHeadline();
        } catch (Throwable e) {
            zzpy.zzb("Failed to get headline.", e);
            return null;
        }
    }

    public List<Image> getImages() {
        return this.zzGT;
    }

    public Image getLogo() {
        return this.zzGW;
    }

    protected /* synthetic */ Object zzbv() {
        return zzfM();
    }

    zzgz zze(Object obj) {
        return obj instanceof IBinder ? zza.zzB((IBinder) obj) : null;
    }

    protected zzd zzfM() {
        try {
            return this.zzGV.zzfM();
        } catch (Throwable e) {
            zzpy.zzb("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
