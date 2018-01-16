package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzmb
public class zzik implements Iterable<zzij> {
    private final List<zzij> zzHX = new LinkedList();

    private zzij zzg(zzqp com_google_android_gms_internal_zzqp) {
        Iterator it = zzv.zzdg().iterator();
        while (it.hasNext()) {
            zzij com_google_android_gms_internal_zzij = (zzij) it.next();
            if (com_google_android_gms_internal_zzij.zzGt == com_google_android_gms_internal_zzqp) {
                return com_google_android_gms_internal_zzij;
            }
        }
        return null;
    }

    public Iterator<zzij> iterator() {
        return this.zzHX.iterator();
    }

    public void zza(zzij com_google_android_gms_internal_zzij) {
        this.zzHX.add(com_google_android_gms_internal_zzij);
    }

    public void zzb(zzij com_google_android_gms_internal_zzij) {
        this.zzHX.remove(com_google_android_gms_internal_zzij);
    }

    public boolean zze(zzqp com_google_android_gms_internal_zzqp) {
        zzij zzg = zzg(com_google_android_gms_internal_zzqp);
        if (zzg == null) {
            return false;
        }
        zzg.zzHU.abort();
        return true;
    }

    public boolean zzf(zzqp com_google_android_gms_internal_zzqp) {
        return zzg(com_google_android_gms_internal_zzqp) != null;
    }

    public int zzgf() {
        return this.zzHX.size();
    }
}
