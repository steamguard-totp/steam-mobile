package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzrn;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.internal.zzrw;
import java.util.ListIterator;

public class zza extends zzg<zza> {
    private final zzrw zzaam;
    private boolean zzaan;

    public zza(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw.zznt(), com_google_android_gms_internal_zzrw.zznq());
        this.zzaam = com_google_android_gms_internal_zzrw;
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzaan = z;
    }

    protected void zza(zze com_google_android_gms_analytics_zze) {
        zzrn com_google_android_gms_internal_zzrn = (zzrn) com_google_android_gms_analytics_zze.zzb(zzrn.class);
        if (TextUtils.isEmpty(com_google_android_gms_internal_zzrn.zzlX())) {
            com_google_android_gms_internal_zzrn.setClientId(this.zzaam.zznH().zzop());
        }
        if (this.zzaan && TextUtils.isEmpty(com_google_android_gms_internal_zzrn.zzmU())) {
            zzrr zznG = this.zzaam.zznG();
            com_google_android_gms_internal_zzrn.zzbE(zznG.zznf());
            com_google_android_gms_internal_zzrn.zzR(zznG.zzmV());
        }
    }

    public void zzbn(String str) {
        zzac.zzdv(str);
        zzbo(str);
        zzmn().add(new zzb(this.zzaam, str));
    }

    public void zzbo(String str) {
        Uri zzbp = zzb.zzbp(str);
        ListIterator listIterator = zzmn().listIterator();
        while (listIterator.hasNext()) {
            if (zzbp.equals(((zzi) listIterator.next()).zzlQ())) {
                listIterator.remove();
            }
        }
    }

    zzrw zzlM() {
        return this.zzaam;
    }

    public zze zzlN() {
        zze zzmb = zzmm().zzmb();
        zzmb.zza(this.zzaam.zzny().zznX());
        zzmb.zza(this.zzaam.zznz().zzpb());
        zzd(zzmb);
        return zzmb;
    }
}
