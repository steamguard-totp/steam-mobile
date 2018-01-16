package com.google.android.gms.internal;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class zzbrm {
    private zzbsm zzcmD = zzbsm.zzcnn;
    private zzbsb zzcmE = zzbsb.DEFAULT;
    private zzbrk zzcmF = zzbrj.IDENTITY;
    private final Map<Type, zzbrn<?>> zzcmG = new HashMap();
    private final List<zzbse> zzcmH = new ArrayList();
    private int zzcmI = 2;
    private int zzcmJ = 2;
    private boolean zzcmK = true;
    private final List<zzbse> zzcmt = new ArrayList();

    private void zza(String str, int i, int i2, List<zzbse> list) {
        Object com_google_android_gms_internal_zzbrg;
        if (str != null && !"".equals(str.trim())) {
            com_google_android_gms_internal_zzbrg = new zzbrg(str);
        } else if (i != 2 && i2 != 2) {
            com_google_android_gms_internal_zzbrg = new zzbrg(i, i2);
        } else {
            return;
        }
        list.add(zzbsc.zza(zzbth.zzq(Date.class), com_google_android_gms_internal_zzbrg));
        list.add(zzbsc.zza(zzbth.zzq(Timestamp.class), com_google_android_gms_internal_zzbrg));
        list.add(zzbsc.zza(zzbth.zzq(java.sql.Date.class), com_google_android_gms_internal_zzbrg));
    }

    public zzbrm zza(Type type, Object obj) {
        boolean z = (obj instanceof zzbrz) || (obj instanceof zzbrq) || (obj instanceof zzbrn) || (obj instanceof zzbsd);
        zzbsj.zzas(z);
        if (obj instanceof zzbrn) {
            this.zzcmG.put(type, (zzbrn) obj);
        }
        if ((obj instanceof zzbrz) || (obj instanceof zzbrq)) {
            this.zzcmt.add(zzbsc.zzb(zzbth.zzl(type), obj));
        }
        if (obj instanceof zzbsd) {
            this.zzcmt.add(zzbtg.zza(zzbth.zzl(type), (zzbsd) obj));
        }
        return this;
    }

    public zzbrm zza(zzbrh... com_google_android_gms_internal_zzbrhArr) {
        for (zzbrh zza : com_google_android_gms_internal_zzbrhArr) {
            this.zzcmD = this.zzcmD.zza(zza, true, true);
        }
        return this;
    }

    public zzbrm zzabr() {
        this.zzcmK = false;
        return this;
    }

    public zzbrl zzabs() {
        List arrayList = new ArrayList();
        arrayList.addAll(this.zzcmt);
        Collections.reverse(arrayList);
        arrayList.addAll(this.zzcmH);
        zza(null, this.zzcmI, this.zzcmJ, arrayList);
        return new zzbrl(this.zzcmD, this.zzcmF, this.zzcmG, false, false, false, this.zzcmK, false, false, this.zzcmE, arrayList);
    }

    public zzbrm zzf(int... iArr) {
        this.zzcmD = this.zzcmD.zzg(iArr);
        return this;
    }
}
