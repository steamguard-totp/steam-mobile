package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.internal.zzdy;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzem.zza;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzgw;
import com.google.android.gms.internal.zzhj;
import com.google.android.gms.internal.zzhk;
import com.google.android.gms.internal.zzhl;
import com.google.android.gms.internal.zzhm;
import com.google.android.gms.internal.zzjs;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzqa;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@zzmb
public class zzj extends zza {
    private final Context mContext;
    private final Object zzrN = new Object();
    private final zzjs zzsD;
    private final zzd zzsz;
    private final zzel zzti;
    private final zzhj zztj;
    private final zzhk zztk;
    private final SimpleArrayMap<String, zzhm> zztl;
    private final SimpleArrayMap<String, zzhl> zztm;
    private final zzgw zztn;
    private final List<String> zzto;
    private final zzet zztp;
    private final String zztq;
    private final zzqa zztr;
    private WeakReference<zzr> zzts;

    zzj(Context context, String str, zzjs com_google_android_gms_internal_zzjs, zzqa com_google_android_gms_internal_zzqa, zzel com_google_android_gms_internal_zzel, zzhj com_google_android_gms_internal_zzhj, zzhk com_google_android_gms_internal_zzhk, SimpleArrayMap<String, zzhm> simpleArrayMap, SimpleArrayMap<String, zzhl> simpleArrayMap2, zzgw com_google_android_gms_internal_zzgw, zzet com_google_android_gms_internal_zzet, zzd com_google_android_gms_ads_internal_zzd) {
        this.mContext = context;
        this.zztq = str;
        this.zzsD = com_google_android_gms_internal_zzjs;
        this.zztr = com_google_android_gms_internal_zzqa;
        this.zzti = com_google_android_gms_internal_zzel;
        this.zztk = com_google_android_gms_internal_zzhk;
        this.zztj = com_google_android_gms_internal_zzhj;
        this.zztl = simpleArrayMap;
        this.zztm = simpleArrayMap2;
        this.zztn = com_google_android_gms_internal_zzgw;
        this.zzto = zzcg();
        this.zztp = com_google_android_gms_internal_zzet;
        this.zzsz = com_google_android_gms_ads_internal_zzd;
    }

    private List<String> zzcg() {
        List<String> arrayList = new ArrayList();
        if (this.zztk != null) {
            arrayList.add("1");
        }
        if (this.zztj != null) {
            arrayList.add("2");
        }
        if (this.zztl.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getMediationAdapterClassName() {
        /*
        r3 = this;
        r1 = 0;
        r2 = r3.zzrN;
        monitor-enter(r2);
        r0 = r3.zzts;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x001a;
    L_0x0008:
        r0 = r3.zzts;	 Catch:{ all -> 0x001d }
        r0 = r0.get();	 Catch:{ all -> 0x001d }
        r0 = (com.google.android.gms.ads.internal.zzr) r0;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0018;
    L_0x0012:
        r0 = r0.getMediationAdapterClassName();	 Catch:{ all -> 0x001d }
    L_0x0016:
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
    L_0x0017:
        return r0;
    L_0x0018:
        r0 = r1;
        goto L_0x0016;
    L_0x001a:
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
        r0 = r1;
        goto L_0x0017;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzj.getMediationAdapterClassName():java.lang.String");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean isLoading() {
        /*
        r3 = this;
        r1 = 0;
        r2 = r3.zzrN;
        monitor-enter(r2);
        r0 = r3.zzts;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x001a;
    L_0x0008:
        r0 = r3.zzts;	 Catch:{ all -> 0x001d }
        r0 = r0.get();	 Catch:{ all -> 0x001d }
        r0 = (com.google.android.gms.ads.internal.zzr) r0;	 Catch:{ all -> 0x001d }
        if (r0 == 0) goto L_0x0018;
    L_0x0012:
        r0 = r0.isLoading();	 Catch:{ all -> 0x001d }
    L_0x0016:
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
    L_0x0017:
        return r0;
    L_0x0018:
        r0 = r1;
        goto L_0x0016;
    L_0x001a:
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
        r0 = r1;
        goto L_0x0017;
    L_0x001d:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x001d }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzj.isLoading():boolean");
    }

    protected void runOnUiThread(Runnable runnable) {
        zzpi.zzWR.post(runnable);
    }

    protected zzr zzch() {
        return new zzr(this.mContext, this.zzsz, zzec.zzj(this.mContext), this.zztq, this.zzsD, this.zztr);
    }

    public void zzf(final zzdy com_google_android_gms_internal_zzdy) {
        runOnUiThread(new Runnable(this) {
            final /* synthetic */ zzj zztu;

            public void run() {
                synchronized (this.zztu.zzrN) {
                    zzr zzch = this.zztu.zzch();
                    this.zztu.zzts = new WeakReference(zzch);
                    zzch.zzb(this.zztu.zztj);
                    zzch.zzb(this.zztu.zztk);
                    zzch.zza(this.zztu.zztl);
                    zzch.zza(this.zztu.zzti);
                    zzch.zzb(this.zztu.zztm);
                    zzch.zzb(this.zztu.zzcg());
                    zzch.zzb(this.zztu.zztn);
                    zzch.zza(this.zztu.zztp);
                    zzch.zzb(com_google_android_gms_internal_zzdy);
                }
            }
        });
    }
}
