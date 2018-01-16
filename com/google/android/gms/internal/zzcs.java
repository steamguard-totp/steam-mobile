package com.google.android.gms.internal;

import java.util.Map;
import org.json.JSONObject;

@zzmb
public class zzcs implements zzcu {
    private final zzhx zzwA = new zzhx(this) {
        final /* synthetic */ zzcs zzwC;

        {
            this.zzwC = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            this.zzwC.zzwx.zza(this.zzwC, (Map) map);
        }
    };
    private final zzhx zzwB = new zzhx(this) {
        final /* synthetic */ zzcs zzwC;

        {
            this.zzwC = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            this.zzwC.zzwx.zzc(map);
        }
    };
    private final zzcq zzwx;
    private final zzjb zzwy;
    private final zzhx zzwz = new zzhx(this) {
        final /* synthetic */ zzcs zzwC;

        {
            this.zzwC = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            this.zzwC.zzwx.zzb(com_google_android_gms_internal_zzqp, (Map) map);
        }
    };

    public zzcs(zzcq com_google_android_gms_internal_zzcq, zzjb com_google_android_gms_internal_zzjb) {
        this.zzwx = com_google_android_gms_internal_zzcq;
        this.zzwy = com_google_android_gms_internal_zzjb;
        zzc(this.zzwy);
        String str = "Custom JS tracking ad unit: ";
        String valueOf = String.valueOf(this.zzwx.zzdN().zzdy());
        zzpy.zzbc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    void zzc(zzjb com_google_android_gms_internal_zzjb) {
        com_google_android_gms_internal_zzjb.zza("/updateActiveView", this.zzwz);
        com_google_android_gms_internal_zzjb.zza("/untrackActiveViewUnit", this.zzwA);
        com_google_android_gms_internal_zzjb.zza("/visibilityChanged", this.zzwB);
    }

    public void zzc(JSONObject jSONObject, boolean z) {
        if (z) {
            this.zzwx.zzb((zzcu) this);
        } else {
            this.zzwy.zza("AFMA_updateActiveView", jSONObject);
        }
    }

    void zzd(zzjb com_google_android_gms_internal_zzjb) {
        com_google_android_gms_internal_zzjb.zzb("/visibilityChanged", this.zzwB);
        com_google_android_gms_internal_zzjb.zzb("/untrackActiveViewUnit", this.zzwA);
        com_google_android_gms_internal_zzjb.zzb("/updateActiveView", this.zzwz);
    }

    public boolean zzdR() {
        return true;
    }

    public void zzdS() {
        zzd(this.zzwy);
    }
}
