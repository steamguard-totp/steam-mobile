package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpe;
import com.google.android.gms.internal.zzpy;

@zzmb
public class zza {
    public boolean zza(Context context, Intent intent, zzq com_google_android_gms_ads_internal_overlay_zzq) {
        try {
            String str = "Launching an intent: ";
            String valueOf = String.valueOf(intent.toURI());
            zzpe.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            zzv.zzcJ().zzb(context, intent);
            if (com_google_android_gms_ads_internal_overlay_zzq != null) {
                com_google_android_gms_ads_internal_overlay_zzq.zzbE();
            }
            return true;
        } catch (ActivityNotFoundException e) {
            zzpy.zzbe(e.getMessage());
            return false;
        }
    }

    public boolean zza(Context context, zzc com_google_android_gms_ads_internal_overlay_zzc, zzq com_google_android_gms_ads_internal_overlay_zzq) {
        if (com_google_android_gms_ads_internal_overlay_zzc == null) {
            zzpy.zzbe("No intent data for launcher overlay.");
            return false;
        } else if (com_google_android_gms_ads_internal_overlay_zzc.intent != null) {
            return zza(context, com_google_android_gms_ads_internal_overlay_zzc.intent, com_google_android_gms_ads_internal_overlay_zzq);
        } else {
            Intent intent = new Intent();
            if (TextUtils.isEmpty(com_google_android_gms_ads_internal_overlay_zzc.url)) {
                zzpy.zzbe("Open GMSG did not contain a URL.");
                return false;
            }
            if (TextUtils.isEmpty(com_google_android_gms_ads_internal_overlay_zzc.mimeType)) {
                intent.setData(Uri.parse(com_google_android_gms_ads_internal_overlay_zzc.url));
            } else {
                intent.setDataAndType(Uri.parse(com_google_android_gms_ads_internal_overlay_zzc.url), com_google_android_gms_ads_internal_overlay_zzc.mimeType);
            }
            intent.setAction("android.intent.action.VIEW");
            if (!TextUtils.isEmpty(com_google_android_gms_ads_internal_overlay_zzc.packageName)) {
                intent.setPackage(com_google_android_gms_ads_internal_overlay_zzc.packageName);
            }
            if (!TextUtils.isEmpty(com_google_android_gms_ads_internal_overlay_zzc.zzLZ)) {
                String[] split = com_google_android_gms_ads_internal_overlay_zzc.zzLZ.split("/", 2);
                if (split.length < 2) {
                    String str = "Could not parse component name from open GMSG: ";
                    String valueOf = String.valueOf(com_google_android_gms_ads_internal_overlay_zzc.zzLZ);
                    zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                    return false;
                }
                intent.setClassName(split[0], split[1]);
            }
            Object obj = com_google_android_gms_ads_internal_overlay_zzc.zzMa;
            if (!TextUtils.isEmpty(obj)) {
                int parseInt;
                try {
                    parseInt = Integer.parseInt(obj);
                } catch (NumberFormatException e) {
                    zzpy.zzbe("Could not parse intent flags.");
                    parseInt = 0;
                }
                intent.addFlags(parseInt);
            }
            return zza(context, intent, com_google_android_gms_ads_internal_overlay_zzq);
        }
    }
}
