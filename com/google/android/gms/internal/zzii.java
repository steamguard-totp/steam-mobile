package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import java.util.Map;

@zzmb
class zzii implements zzhx {
    zzii() {
    }

    private int zzh(Map<String, String> map) throws NullPointerException, NumberFormatException {
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        return (parseInt < 0 || 3 < parseInt) ? 0 : parseInt;
    }

    public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
        Throwable e;
        if (((Boolean) zzfx.zzCY.get()).booleanValue()) {
            zzqu com_google_android_gms_internal_zzqu;
            zzqu zzlg = com_google_android_gms_internal_zzqp.zzlg();
            if (zzlg == null) {
                try {
                    zzlg = new zzqu(com_google_android_gms_internal_zzqp, Float.parseFloat((String) map.get("duration")));
                    com_google_android_gms_internal_zzqp.zza(zzlg);
                    com_google_android_gms_internal_zzqu = zzlg;
                } catch (NullPointerException e2) {
                    e = e2;
                    zzpy.zzb("Unable to parse videoMeta message.", e);
                    zzv.zzcN().zza(e, "VideoMetaGmsgHandler.onGmsg");
                    return;
                } catch (NumberFormatException e3) {
                    e = e3;
                    zzpy.zzb("Unable to parse videoMeta message.", e);
                    zzv.zzcN().zza(e, "VideoMetaGmsgHandler.onGmsg");
                    return;
                }
            }
            com_google_android_gms_internal_zzqu = zzlg;
            boolean equals = "1".equals(map.get("muted"));
            float parseFloat = Float.parseFloat((String) map.get("currentTime"));
            int zzh = zzh(map);
            String str = (String) map.get("aspectRatio");
            float parseFloat2 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
            if (zzpy.zzai(3)) {
                zzpy.zzbc(new StringBuilder(String.valueOf(str).length() + 79).append("Video Meta GMSG: isMuted : ").append(equals).append(" , playbackState : ").append(zzh).append(" , aspectRatio : ").append(str).toString());
            }
            com_google_android_gms_internal_zzqu.zza(parseFloat, zzh, equals, parseFloat2);
        }
    }
}
