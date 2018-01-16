package com.google.android.gms.internal;

import com.google.android.gms.internal.zzja.zzc;
import java.util.Map;
import java.util.concurrent.Future;

@zzmb
public final class zznb {
    private String zzOn;
    private String zzTh;
    private zzqc<zzne> zzTi = new zzqc();
    zzc zzTj;
    public final zzhx zzTk = new zzhx(this) {
        final /* synthetic */ zznb zzTn;

        {
            this.zzTn = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            synchronized (this.zzTn.zzrN) {
                if (this.zzTn.zzTi.isDone()) {
                } else if (this.zzTn.zzOn.equals(map.get("request_id"))) {
                    zzne com_google_android_gms_internal_zzne = new zzne(1, map);
                    String valueOf = String.valueOf(com_google_android_gms_internal_zzne.getType());
                    String valueOf2 = String.valueOf(com_google_android_gms_internal_zzne.zzji());
                    zzpy.zzbe(new StringBuilder((String.valueOf(valueOf).length() + 24) + String.valueOf(valueOf2).length()).append("Invalid ").append(valueOf).append(" request error: ").append(valueOf2).toString());
                    this.zzTn.zzTi.zzh(com_google_android_gms_internal_zzne);
                }
            }
        }
    };
    public final zzhx zzTl = new zzhx(this) {
        final /* synthetic */ zznb zzTn;

        {
            this.zzTn = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            synchronized (this.zzTn.zzrN) {
                if (this.zzTn.zzTi.isDone()) {
                    return;
                }
                zzne com_google_android_gms_internal_zzne = new zzne(-2, map);
                if (this.zzTn.zzOn.equals(com_google_android_gms_internal_zzne.getRequestId())) {
                    String url = com_google_android_gms_internal_zzne.getUrl();
                    if (url == null) {
                        zzpy.zzbe("URL missing in loadAdUrl GMSG.");
                        return;
                    }
                    if (url.contains("%40mediation_adapters%40")) {
                        String replaceAll = url.replaceAll("%40mediation_adapters%40", zzpc.zza(com_google_android_gms_internal_zzqp.getContext(), (String) map.get("check_adapters"), this.zzTn.zzTh));
                        com_google_android_gms_internal_zzne.setUrl(replaceAll);
                        url = "Ad request URL modified to ";
                        replaceAll = String.valueOf(replaceAll);
                        zzpe.v(replaceAll.length() != 0 ? url.concat(replaceAll) : new String(url));
                    }
                    this.zzTn.zzTi.zzh(com_google_android_gms_internal_zzne);
                    return;
                }
            }
        }
    };
    public final zzhx zzTm = new zzhx(this) {
        final /* synthetic */ zznb zzTn;

        {
            this.zzTn = r1;
        }

        public void zza(zzqp com_google_android_gms_internal_zzqp, Map<String, String> map) {
            synchronized (this.zzTn.zzrN) {
                if (this.zzTn.zzTi.isDone()) {
                    return;
                }
                zzne com_google_android_gms_internal_zzne = new zzne(-2, map);
                if (this.zzTn.zzOn.equals(com_google_android_gms_internal_zzne.getRequestId())) {
                    this.zzTn.zzTi.zzh(com_google_android_gms_internal_zzne);
                    return;
                }
            }
        }
    };
    private final Object zzrN = new Object();

    public zznb(String str, String str2) {
        this.zzTh = str2;
        this.zzOn = str;
    }

    public void zzb(zzc com_google_android_gms_internal_zzja_zzc) {
        this.zzTj = com_google_android_gms_internal_zzja_zzc;
    }

    public zzc zzjg() {
        return this.zzTj;
    }

    public Future<zzne> zzjh() {
        return this.zzTi;
    }
}
