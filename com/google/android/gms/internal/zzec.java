package com.google.android.gms.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.safeparcel.zza;

@zzmb
public class zzec extends zza {
    public static final Creator<zzec> CREATOR = new zzed();
    public final int height;
    public final int heightPixels;
    public final int versionCode;
    public final int width;
    public final int widthPixels;
    public final String zzzk;
    public final boolean zzzl;
    public final zzec[] zzzm;
    public final boolean zzzn;
    public final boolean zzzo;
    public boolean zzzp;

    public zzec() {
        this(5, "interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    zzec(int i, String str, int i2, int i3, boolean z, int i4, int i5, zzec[] com_google_android_gms_internal_zzecArr, boolean z2, boolean z3, boolean z4) {
        this.versionCode = i;
        this.zzzk = str;
        this.height = i2;
        this.heightPixels = i3;
        this.zzzl = z;
        this.width = i4;
        this.widthPixels = i5;
        this.zzzm = com_google_android_gms_internal_zzecArr;
        this.zzzn = z2;
        this.zzzo = z3;
        this.zzzp = z4;
    }

    public zzec(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    public zzec(Context context, AdSize[] adSizeArr) {
        int i;
        int i2;
        AdSize adSize = adSizeArr[0];
        this.versionCode = 5;
        this.zzzl = false;
        this.zzzo = adSize.isFluid();
        if (this.zzzo) {
            this.width = AdSize.BANNER.getWidth();
            this.height = AdSize.BANNER.getHeight();
        } else {
            this.width = adSize.getWidth();
            this.height = adSize.getHeight();
        }
        boolean z = this.width == -1;
        boolean z2 = this.height == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z) {
            if (zzeh.zzeO().zzQ(context) && zzeh.zzeO().zzR(context)) {
                this.widthPixels = zza(displayMetrics) - zzeh.zzeO().zzS(context);
            } else {
                this.widthPixels = zza(displayMetrics);
            }
            double d = (double) (((float) this.widthPixels) / displayMetrics.density);
            i = (int) d;
            if (d - ((double) ((int) d)) >= 0.01d) {
                i++;
            }
            i2 = i;
        } else {
            i = this.width;
            this.widthPixels = zzeh.zzeO().zza(displayMetrics, this.width);
            i2 = i;
        }
        i = z2 ? zzc(displayMetrics) : this.height;
        this.heightPixels = zzeh.zzeO().zza(displayMetrics, i);
        if (z || z2) {
            this.zzzk = i2 + "x" + i + "_as";
        } else if (this.zzzo) {
            this.zzzk = "320x50_mb";
        } else {
            this.zzzk = adSize.toString();
        }
        if (adSizeArr.length > 1) {
            this.zzzm = new zzec[adSizeArr.length];
            for (int i3 = 0; i3 < adSizeArr.length; i3++) {
                this.zzzm[i3] = new zzec(context, adSizeArr[i3]);
            }
        } else {
            this.zzzm = null;
        }
        this.zzzn = false;
        this.zzzp = false;
    }

    public zzec(zzec com_google_android_gms_internal_zzec, zzec[] com_google_android_gms_internal_zzecArr) {
        this(5, com_google_android_gms_internal_zzec.zzzk, com_google_android_gms_internal_zzec.height, com_google_android_gms_internal_zzec.heightPixels, com_google_android_gms_internal_zzec.zzzl, com_google_android_gms_internal_zzec.width, com_google_android_gms_internal_zzec.widthPixels, com_google_android_gms_internal_zzecArr, com_google_android_gms_internal_zzec.zzzn, com_google_android_gms_internal_zzec.zzzo, com_google_android_gms_internal_zzec.zzzp);
    }

    public static int zza(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return (int) (((float) zzc(displayMetrics)) * displayMetrics.density);
    }

    private static int zzc(DisplayMetrics displayMetrics) {
        int i = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        return i <= 400 ? 32 : i <= 720 ? 50 : 90;
    }

    public static zzec zzez() {
        return new zzec(5, "reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public static zzec zzj(Context context) {
        return new zzec(5, "320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzed.zza(this, parcel, i);
    }

    public AdSize zzeA() {
        return com.google.android.gms.ads.zza.zza(this.width, this.height, this.zzzk);
    }

    public void zzl(boolean z) {
        this.zzzp = z;
    }
}
