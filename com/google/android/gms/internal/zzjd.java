package com.google.android.gms.internal;

import java.util.AbstractMap.SimpleEntry;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;

@zzmb
public class zzjd implements zzjc {
    private final zzjb zzJE;
    private final HashSet<SimpleEntry<String, zzhx>> zzJF = new HashSet();

    public zzjd(zzjb com_google_android_gms_internal_zzjb) {
        this.zzJE = com_google_android_gms_internal_zzjb;
    }

    public void zza(String str, zzhx com_google_android_gms_internal_zzhx) {
        this.zzJE.zza(str, com_google_android_gms_internal_zzhx);
        this.zzJF.add(new SimpleEntry(str, com_google_android_gms_internal_zzhx));
    }

    public void zza(String str, JSONObject jSONObject) {
        this.zzJE.zza(str, jSONObject);
    }

    public void zzb(String str, zzhx com_google_android_gms_internal_zzhx) {
        this.zzJE.zzb(str, com_google_android_gms_internal_zzhx);
        this.zzJF.remove(new SimpleEntry(str, com_google_android_gms_internal_zzhx));
    }

    public void zzb(String str, JSONObject jSONObject) {
        this.zzJE.zzb(str, jSONObject);
    }

    public void zzgA() {
        Iterator it = this.zzJF.iterator();
        while (it.hasNext()) {
            SimpleEntry simpleEntry = (SimpleEntry) it.next();
            String str = "Unregistering eventhandler: ";
            String valueOf = String.valueOf(((zzhx) simpleEntry.getValue()).toString());
            zzpe.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            this.zzJE.zzb((String) simpleEntry.getKey(), (zzhx) simpleEntry.getValue());
        }
        this.zzJF.clear();
    }

    public void zzi(String str, String str2) {
        this.zzJE.zzi(str, str2);
    }
}
