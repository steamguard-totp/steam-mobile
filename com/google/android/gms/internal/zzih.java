package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.overlay.zzl;
import java.util.Map;
import org.json.JSONObject;

@zzmb
public final class zzih implements zzhx {
    private boolean zzHT;

    private static int zza(Context context, Map<String, String> map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                i = zzeh.zzeO().zzb(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                zzpy.zzbe(new StringBuilder((String.valueOf(str).length() + 34) + String.valueOf(str2).length()).append("Could not parse ").append(str).append(" in a video GMSG: ").append(str2).toString());
            }
        }
        return i;
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        String str = (String) map.get("action");
        if (str == null) {
            zzpy.zzbe("Action missing from video GMSG.");
            return;
        }
        if (zzpy.zzai(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String valueOf = String.valueOf(jSONObject.toString());
            zzpy.zzbc(new StringBuilder((String.valueOf(str).length() + 13) + String.valueOf(valueOf).length()).append("Video GMSG: ").append(str).append(" ").append(valueOf).toString());
        }
        if ("background".equals(str)) {
            valueOf = (String) map.get("color");
            if (TextUtils.isEmpty(valueOf)) {
                zzpy.zzbe("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                com_google_android_gms_internal_zzqp.setBackgroundColor(Color.parseColor(valueOf));
                return;
            } catch (IllegalArgumentException e) {
                zzpy.zzbe("Invalid color parameter in video GMSG.");
                return;
            }
        }
        zzqo zzld = com_google_android_gms_internal_zzqp.zzld();
        if (zzld == null) {
            zzpy.zzbe("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = "new".equals(str);
        boolean equals2 = "position".equals(str);
        int zza;
        int min;
        if (equals || equals2) {
            Context context = com_google_android_gms_internal_zzqp.getContext();
            int zza2 = zza(context, map, "x", 0);
            zza = zza(context, map, "y", 0);
            int zza3 = zza(context, map, "w", -1);
            int zza4 = zza(context, map, "h", -1);
            if (((Boolean) zzfx.zzEb.get()).booleanValue()) {
                min = Math.min(zza3, com_google_android_gms_internal_zzqp.getMeasuredWidth() - zza2);
                zza4 = Math.min(zza4, com_google_android_gms_internal_zzqp.getMeasuredHeight() - zza);
            } else {
                min = zza3;
            }
            try {
                zza3 = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e2) {
                zza3 = 0;
            }
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
            if (equals && zzld.zzkO() == null) {
                zzld.zza(zza2, zza, min, zza4, zza3, parseBoolean);
                return;
            } else {
                zzld.zze(zza2, zza, min, zza4);
                return;
            }
        }
        zzl zzkO = zzld.zzkO();
        if (zzkO == null) {
            zzl.zzi(com_google_android_gms_internal_zzqp);
        } else if ("click".equals(str)) {
            r0 = com_google_android_gms_internal_zzqp.getContext();
            zza = zza(r0, map, "x", 0);
            min = zza(r0, map, "y", 0);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, (float) zza, (float) min, 0);
            zzkO.zzf(obtain);
            obtain.recycle();
        } else if ("currentTime".equals(str)) {
            valueOf = (String) map.get("time");
            if (valueOf == null) {
                zzpy.zzbe("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                zzkO.seekTo((int) (Float.parseFloat(valueOf) * 1000.0f));
            } catch (NumberFormatException e3) {
                str = "Could not parse time parameter from currentTime video GMSG: ";
                valueOf = String.valueOf(valueOf);
                zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        } else if ("hide".equals(str)) {
            zzkO.setVisibility(4);
        } else if ("load".equals(str)) {
            zzkO.zzgq();
        } else if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                zzkO.zzhE();
            } else {
                zzkO.zzhF();
            }
        } else if ("pause".equals(str)) {
            zzkO.pause();
        } else if ("play".equals(str)) {
            zzkO.play();
        } else if ("show".equals(str)) {
            zzkO.setVisibility(0);
        } else if ("src".equals(str)) {
            zzkO.zzaB((String) map.get("src"));
        } else if ("touchMove".equals(str)) {
            r0 = com_google_android_gms_internal_zzqp.getContext();
            zzkO.zza((float) zza(r0, map, "dx", 0), (float) zza(r0, map, "dy", 0));
            if (!this.zzHT) {
                com_google_android_gms_internal_zzqp.zzkT().zzhq();
                this.zzHT = true;
            }
        } else if ("volume".equals(str)) {
            valueOf = (String) map.get("volume");
            if (valueOf == null) {
                zzpy.zzbe("Level parameter missing from volume video GMSG.");
                return;
            }
            try {
                zzkO.zzb(Float.parseFloat(valueOf));
            } catch (NumberFormatException e4) {
                str = "Could not parse volume parameter from volume video GMSG: ";
                valueOf = String.valueOf(valueOf);
                zzpy.zzbe(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        } else if ("watermark".equals(str)) {
            zzkO.zzhG();
        } else {
            String str2 = "Unknown video action: ";
            valueOf = String.valueOf(str);
            zzpy.zzbe(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2));
        }
    }
}
