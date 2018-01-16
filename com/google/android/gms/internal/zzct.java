package com.google.android.gms.internal;

import com.google.android.gms.internal.zzja.zzc;
import com.google.android.gms.internal.zzqi.zza;
import com.google.android.gms.internal.zzqi.zzb;
import java.util.Map;
import org.json.JSONObject;

@zzmb
public class zzct implements zzcu {
    private final zzhx zzwA = new zzhx(this) {
        final /* synthetic */ zzct zzwF;

        {
            this.zzwF = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            if (this.zzwF.zzwx.zzb((Map) map)) {
                this.zzwF.zzwx.zza(this.zzwF, (Map) map);
            }
        }
    };
    private final zzhx zzwB = new zzhx(this) {
        final /* synthetic */ zzct zzwF;

        {
            this.zzwF = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            if (this.zzwF.zzwx.zzb((Map) map)) {
                this.zzwF.zzwx.zzc(map);
            }
        }
    };
    private zzc zzwD;
    private boolean zzwE;
    private final zzcq zzwx;
    private final zzhx zzwz = new zzhx(this) {
        final /* synthetic */ zzct zzwF;

        {
            this.zzwF = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            if (this.zzwF.zzwx.zzb((Map) map)) {
                this.zzwF.zzwx.zzb(com_google_android_gms_internal_zzqp, (Map) map);
            }
        }
    };

    public zzct(zzcq com_google_android_gms_internal_zzcq, zzja com_google_android_gms_internal_zzja) {
        this.zzwx = com_google_android_gms_internal_zzcq;
        this.zzwD = com_google_android_gms_internal_zzja.zzgv();
        this.zzwD.zza(new zzqi.zzc<zzjb>(this) {
            final /* synthetic */ zzct zzwF;

            {
                this.zzwF = r1;
            }

            public void zzb(zzjb com_google_android_gms_internal_zzjb) {
                this.zzwF.zzwE = true;
                this.zzwF.zzc(com_google_android_gms_internal_zzjb);
            }

            public /* synthetic */ void zzd(Object obj) {
                zzb((zzjb) obj);
            }
        }, new zza(this) {
            final /* synthetic */ zzct zzwF;

            {
                this.zzwF = r1;
            }

            public void run() {
                this.zzwF.zzwx.zzb(this.zzwF);
            }
        });
        String str = "Core JS tracking ad unit: ";
        String valueOf = String.valueOf(this.zzwx.zzdN().zzdy());
        zzpy.zzbc(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
    }

    void zzc(zzjb com_google_android_gms_internal_zzjb) {
        com_google_android_gms_internal_zzjb.zza("/updateActiveView", this.zzwz);
        com_google_android_gms_internal_zzjb.zza("/untrackActiveViewUnit", this.zzwA);
        com_google_android_gms_internal_zzjb.zza("/visibilityChanged", this.zzwB);
    }

    public void zzc(final JSONObject jSONObject, boolean z) {
        this.zzwD.zza(new zzqi.zzc<zzjb>(this) {
            public void zzb(zzjb com_google_android_gms_internal_zzjb) {
                com_google_android_gms_internal_zzjb.zza("AFMA_updateActiveView", jSONObject);
            }

            public /* synthetic */ void zzd(Object obj) {
                zzb((zzjb) obj);
            }
        }, new zzb());
    }

    void zzd(zzjb com_google_android_gms_internal_zzjb) {
        com_google_android_gms_internal_zzjb.zzb("/visibilityChanged", this.zzwB);
        com_google_android_gms_internal_zzjb.zzb("/untrackActiveViewUnit", this.zzwA);
        com_google_android_gms_internal_zzjb.zzb("/updateActiveView", this.zzwz);
    }

    public boolean zzdR() {
        return this.zzwE;
    }

    public void zzdS() {
        this.zzwD.zza(new zzqi.zzc<zzjb>(this) {
            final /* synthetic */ zzct zzwF;

            {
                this.zzwF = r1;
            }

            public void zzb(zzjb com_google_android_gms_internal_zzjb) {
                this.zzwF.zzd(com_google_android_gms_internal_zzjb);
            }

            public /* synthetic */ void zzd(Object obj) {
                zzb((zzjb) obj);
            }
        }, new zzb());
        this.zzwD.release();
    }
}
