package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class zzbfe {
    private final Context mContext;
    private String zzbDw;
    private final zzbfj zzbJX;
    final Map<String, zzc<zzbfr>> zzbJY;
    private final Map<String, zzbfp> zzbJZ;
    private final zze zzuI;

    public interface zza {
        void zza(zzbfi com_google_android_gms_internal_zzbfi);
    }

    class zzb extends zzbfd {
        private final zza zzbKa;
        private final List<Integer> zzbKb;
        private final int zzbKc;
        final /* synthetic */ zzbfe zzbKd;

        zzb(zzbfe com_google_android_gms_internal_zzbfe, int i, zzbfh com_google_android_gms_internal_zzbfh, zzbff com_google_android_gms_internal_zzbff, List<Integer> list, int i2, zza com_google_android_gms_internal_zzbfe_zza, zzayi com_google_android_gms_internal_zzayi) {
            this.zzbKd = com_google_android_gms_internal_zzbfe;
            super(i, com_google_android_gms_internal_zzbfh, com_google_android_gms_internal_zzbff, com_google_android_gms_internal_zzayi);
            this.zzbKa = com_google_android_gms_internal_zzbfe_zza;
            this.zzbKb = list;
            this.zzbKc = i2;
        }

        protected void zza(zzbfi com_google_android_gms_internal_zzbfi) {
            String valueOf;
            Object obj;
            String valueOf2;
            if (com_google_android_gms_internal_zzbfi.getStatus() == Status.zzayh) {
                String str = "Container resource successfully loaded from ";
                valueOf = String.valueOf(com_google_android_gms_internal_zzbfi.zzRk());
                zzayx.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                int i;
                if (com_google_android_gms_internal_zzbfi.getSource() == 0) {
                    com.google.android.gms.internal.zzbfi.zza zzRi = com_google_android_gms_internal_zzbfi.zzRi();
                    if (zzRi.zzRm().zzRd()) {
                        obj = 1;
                    } else {
                        this.zzbKd.zza(com_google_android_gms_internal_zzbfi.getStatus(), zzRi);
                        if (zzRi.zzRl() != null && zzRi.zzRl().length > 0) {
                            this.zzbKd.zzbJX.zzg(zzRi.zzRm().zzRc(), zzRi.zzRl());
                            i = 1;
                        }
                    }
                } else {
                    i = 1;
                }
                if (obj == null) {
                    this.zzbKa.zza(com_google_android_gms_internal_zzbfi);
                }
                valueOf2 = String.valueOf(com_google_android_gms_internal_zzbfi.zzRk());
                valueOf = com_google_android_gms_internal_zzbfi.getStatus().isSuccess() ? "SUCCESS" : "FAILURE";
                zzayx.v(new StringBuilder((String.valueOf(valueOf2).length() + 54) + String.valueOf(valueOf).length()).append("Cannot fetch a valid resource from ").append(valueOf2).append(". Response status: ").append(valueOf).toString());
                if (com_google_android_gms_internal_zzbfi.getStatus().isSuccess()) {
                    valueOf2 = "Response source: ";
                    valueOf = String.valueOf(com_google_android_gms_internal_zzbfi.zzRk());
                    zzayx.v(valueOf.length() == 0 ? valueOf2.concat(valueOf) : new String(valueOf2));
                    zzayx.v("Response size: " + com_google_android_gms_internal_zzbfi.zzRi().zzRl().length);
                }
                this.zzbKd.zza(this.zzbJV, this.zzbKb, this.zzbKc + 1, this.zzbKa, this.zzbHq);
                return;
            }
            obj = null;
            if (obj == null) {
                valueOf2 = String.valueOf(com_google_android_gms_internal_zzbfi.zzRk());
                if (com_google_android_gms_internal_zzbfi.getStatus().isSuccess()) {
                }
                zzayx.v(new StringBuilder((String.valueOf(valueOf2).length() + 54) + String.valueOf(valueOf).length()).append("Cannot fetch a valid resource from ").append(valueOf2).append(". Response status: ").append(valueOf).toString());
                if (com_google_android_gms_internal_zzbfi.getStatus().isSuccess()) {
                    valueOf2 = "Response source: ";
                    valueOf = String.valueOf(com_google_android_gms_internal_zzbfi.zzRk());
                    if (valueOf.length() == 0) {
                    }
                    zzayx.v(valueOf.length() == 0 ? valueOf2.concat(valueOf) : new String(valueOf2));
                    zzayx.v("Response size: " + com_google_android_gms_internal_zzbfi.zzRi().zzRl().length);
                }
                this.zzbKd.zza(this.zzbJV, this.zzbKb, this.zzbKc + 1, this.zzbKa, this.zzbHq);
                return;
            }
            this.zzbKa.zza(com_google_android_gms_internal_zzbfi);
        }
    }

    static class zzc<T> {
        private T mData;
        private Status zzahq;
        private long zzbKe;

        public zzc(Status status, T t, long j) {
            this.zzahq = status;
            this.mData = t;
            this.zzbKe = j;
        }

        public long zzRg() {
            return this.zzbKe;
        }

        public void zzY(T t) {
            this.mData = t;
        }

        public void zzaz(long j) {
            this.zzbKe = j;
        }

        public void zzbL(Status status) {
            this.zzahq = status;
        }
    }

    public zzbfe(Context context) {
        this(context, new HashMap(), new zzbfj(context), zzh.zzyv());
    }

    zzbfe(Context context, Map<String, zzbfp> map, zzbfj com_google_android_gms_internal_zzbfj, zze com_google_android_gms_common_util_zze) {
        this.zzbDw = null;
        this.zzbJY = new HashMap();
        this.mContext = context.getApplicationContext();
        this.zzuI = com_google_android_gms_common_util_zze;
        this.zzbJX = com_google_android_gms_internal_zzbfj;
        this.zzbJZ = map;
    }

    private void zza(zzbfh com_google_android_gms_internal_zzbfh, List<Integer> list, int i, zza com_google_android_gms_internal_zzbfe_zza) {
        zzbfa zzRh = com_google_android_gms_internal_zzbfh.zzRh();
        String valueOf = String.valueOf(zzRh.getContainerId());
        zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 52).append("Attempting to fetch container ").append(valueOf).append(" from a saved resource").toString());
        this.zzbJX.zza(zzRh.zzRc(), new zzb(this, 1, com_google_android_gms_internal_zzbfh, zzbfg.zzbKf, list, i, com_google_android_gms_internal_zzbfe_zza, null));
    }

    private void zzb(zzbfh com_google_android_gms_internal_zzbfh, List<Integer> list, int i, zza com_google_android_gms_internal_zzbfe_zza) {
        zzbfa zzRh = com_google_android_gms_internal_zzbfh.zzRh();
        String valueOf = String.valueOf(zzRh.getContainerId());
        zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 56).append("Attempting to fetch container ").append(valueOf).append(" from the default resource").toString());
        this.zzbJX.zza(zzRh.zzRc(), zzRh.zzRa(), new zzb(this, 2, com_google_android_gms_internal_zzbfh, zzbfg.zzbKf, list, i, com_google_android_gms_internal_zzbfe_zza, null));
    }

    private void zzb(zzbfh com_google_android_gms_internal_zzbfh, List<Integer> list, int i, zza com_google_android_gms_internal_zzbfe_zza, zzayi com_google_android_gms_internal_zzayi) {
        Object obj;
        zzbfa zzRh = com_google_android_gms_internal_zzbfh.zzRh();
        zzc com_google_android_gms_internal_zzbfe_zzc = (zzc) this.zzbJY.get(zzRh.getContainerId());
        if (com_google_android_gms_internal_zzbfh.zzRh().zzRd()) {
            obj = 1;
        } else {
            obj = (com_google_android_gms_internal_zzbfe_zzc != null ? com_google_android_gms_internal_zzbfe_zzc.zzRg() : this.zzbJX.zzhX(zzRh.getContainerId())) + 900000 < this.zzuI.currentTimeMillis() ? 1 : null;
        }
        if (obj != null) {
            zzbfp com_google_android_gms_internal_zzbfp;
            zzbfp com_google_android_gms_internal_zzbfp2 = (zzbfp) this.zzbJZ.get(com_google_android_gms_internal_zzbfh.getId());
            if (com_google_android_gms_internal_zzbfp2 == null) {
                com_google_android_gms_internal_zzbfp2 = new zzbfp();
                this.zzbJZ.put(com_google_android_gms_internal_zzbfh.getId(), com_google_android_gms_internal_zzbfp2);
                com_google_android_gms_internal_zzbfp = com_google_android_gms_internal_zzbfp2;
            } else {
                com_google_android_gms_internal_zzbfp = com_google_android_gms_internal_zzbfp2;
            }
            String valueOf = String.valueOf(zzRh.getContainerId());
            zzayx.v(new StringBuilder(String.valueOf(valueOf).length() + 43).append("Attempting to fetch container ").append(valueOf).append(" from network").toString());
            com_google_android_gms_internal_zzbfp.zza(this.mContext, com_google_android_gms_internal_zzbfh, 0, new zzb(this, 0, com_google_android_gms_internal_zzbfh, zzbfg.zzbKf, list, i, com_google_android_gms_internal_zzbfe_zza, com_google_android_gms_internal_zzayi));
            return;
        }
        zza(com_google_android_gms_internal_zzbfh, list, i + 1, com_google_android_gms_internal_zzbfe_zza, com_google_android_gms_internal_zzayi);
    }

    void zza(Status status, com.google.android.gms.internal.zzbfi.zza com_google_android_gms_internal_zzbfi_zza) {
        String containerId = com_google_android_gms_internal_zzbfi_zza.zzRm().getContainerId();
        zzbfr zzRn = com_google_android_gms_internal_zzbfi_zza.zzRn();
        if (this.zzbJY.containsKey(containerId)) {
            zzc com_google_android_gms_internal_zzbfe_zzc = (zzc) this.zzbJY.get(containerId);
            com_google_android_gms_internal_zzbfe_zzc.zzaz(this.zzuI.currentTimeMillis());
            if (status == Status.zzayh) {
                com_google_android_gms_internal_zzbfe_zzc.zzbL(status);
                com_google_android_gms_internal_zzbfe_zzc.zzY(zzRn);
                return;
            }
            return;
        }
        this.zzbJY.put(containerId, new zzc(status, zzRn, this.zzuI.currentTimeMillis()));
    }

    void zza(zzbfh com_google_android_gms_internal_zzbfh, List<Integer> list, int i, zza com_google_android_gms_internal_zzbfe_zza, zzayi com_google_android_gms_internal_zzayi) {
        if (i == 0) {
            zzayx.v("Starting to fetch a new resource");
        }
        if (i >= list.size()) {
            String str = "There is no valid resource for the container: ";
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbfh.zzRh().getContainerId());
            valueOf = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
            zzayx.v(valueOf);
            com_google_android_gms_internal_zzbfe_zza.zza(new zzbfi(new Status(16, valueOf), ((Integer) list.get(i - 1)).intValue()));
            return;
        }
        switch (((Integer) list.get(i)).intValue()) {
            case 0:
                zzb(com_google_android_gms_internal_zzbfh, list, i, com_google_android_gms_internal_zzbfe_zza, com_google_android_gms_internal_zzayi);
                return;
            case 1:
                zza(com_google_android_gms_internal_zzbfh, list, i, com_google_android_gms_internal_zzbfe_zza);
                return;
            case 2:
                zzb(com_google_android_gms_internal_zzbfh, list, i, com_google_android_gms_internal_zzbfe_zza);
                return;
            default:
                throw new UnsupportedOperationException("Unknown fetching source: " + i);
        }
    }

    public void zza(String str, String str2, String str3, List<Integer> list, zza com_google_android_gms_internal_zzbfe_zza, zzayi com_google_android_gms_internal_zzayi) {
        zzac.zzas(!list.isEmpty());
        zza(new zzbfh().zza(new zzbfa(str, str2, str3, zzhW(str), zzazc.zzQB().zzQC())), Collections.unmodifiableList(list), 0, com_google_android_gms_internal_zzbfe_zza, com_google_android_gms_internal_zzayi);
    }

    boolean zzhW(String str) {
        zzazc zzQB = zzazc.zzQB();
        return zzQB.isPreview() && str.equals(zzQB.getContainerId());
    }
}
