package com.google.android.gms.internal;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;
import com.google.android.gms.analytics.zza;
import com.google.android.gms.analytics.zze;
import com.google.android.gms.analytics.zzf;
import com.google.android.gms.analytics.zzh;
import com.google.android.gms.common.internal.zzac;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

class zzsc extends zzru {
    private boolean mStarted;
    private final zzsz zzadA;
    private final zzsy zzadB;
    private final zzrz zzadC;
    private long zzadD = Long.MIN_VALUE;
    private final zzsl zzadE;
    private final zzsl zzadF;
    private final zztd zzadG;
    private long zzadH;
    private boolean zzadI;
    private final zzsa zzadz;

    protected zzsc(zzrw com_google_android_gms_internal_zzrw, zzrx com_google_android_gms_internal_zzrx) {
        super(com_google_android_gms_internal_zzrw);
        zzac.zzw(com_google_android_gms_internal_zzrx);
        this.zzadB = com_google_android_gms_internal_zzrx.zzk(com_google_android_gms_internal_zzrw);
        this.zzadz = com_google_android_gms_internal_zzrx.zzm(com_google_android_gms_internal_zzrw);
        this.zzadA = com_google_android_gms_internal_zzrx.zzn(com_google_android_gms_internal_zzrw);
        this.zzadC = com_google_android_gms_internal_zzrx.zzo(com_google_android_gms_internal_zzrw);
        this.zzadG = new zztd(zznq());
        this.zzadE = new zzsl(this, com_google_android_gms_internal_zzrw) {
            final /* synthetic */ zzsc zzadJ;

            public void run() {
                this.zzadJ.zzoa();
            }
        };
        this.zzadF = new zzsl(this, com_google_android_gms_internal_zzrw) {
            final /* synthetic */ zzsc zzadJ;

            public void run() {
                this.zzadJ.zzob();
            }
        };
    }

    private void zza(zzry com_google_android_gms_internal_zzry, zzrf com_google_android_gms_internal_zzrf) {
        zzac.zzw(com_google_android_gms_internal_zzry);
        zzac.zzw(com_google_android_gms_internal_zzrf);
        zza com_google_android_gms_analytics_zza = new zza(zznp());
        com_google_android_gms_analytics_zza.zzbn(com_google_android_gms_internal_zzry.zznJ());
        com_google_android_gms_analytics_zza.enableAdvertisingIdCollection(com_google_android_gms_internal_zzry.zznK());
        zze zzlN = com_google_android_gms_analytics_zza.zzlN();
        zzrn com_google_android_gms_internal_zzrn = (zzrn) zzlN.zzb(zzrn.class);
        com_google_android_gms_internal_zzrn.zzbD("data");
        com_google_android_gms_internal_zzrn.zzS(true);
        zzlN.zza((zzf) com_google_android_gms_internal_zzrf);
        zzri com_google_android_gms_internal_zzri = (zzri) zzlN.zzb(zzri.class);
        zzre com_google_android_gms_internal_zzre = (zzre) zzlN.zzb(zzre.class);
        for (Entry entry : com_google_android_gms_internal_zzry.zzfz().entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if ("an".equals(str)) {
                com_google_android_gms_internal_zzre.setAppName(str2);
            } else if ("av".equals(str)) {
                com_google_android_gms_internal_zzre.setAppVersion(str2);
            } else if ("aid".equals(str)) {
                com_google_android_gms_internal_zzre.setAppId(str2);
            } else if ("aiid".equals(str)) {
                com_google_android_gms_internal_zzre.setAppInstallerId(str2);
            } else if ("uid".equals(str)) {
                com_google_android_gms_internal_zzrn.setUserId(str2);
            } else {
                com_google_android_gms_internal_zzri.set(str, str2);
            }
        }
        zzb("Sending installation campaign to", com_google_android_gms_internal_zzry.zznJ(), com_google_android_gms_internal_zzrf);
        zzlN.zzp(zznv().zzpE());
        zzlN.zzmf();
    }

    private boolean zzbV(String str) {
        return zzacx.zzaQ(getContext()).checkCallingOrSelfPermission(str) == 0;
    }

    private void zznY() {
        zzmq();
        Context context = zznp().getContext();
        if (!zztb.zzT(context)) {
            zzbR("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!zztc.zzU(context)) {
            zzbS("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!CampaignTrackingReceiver.zzT(context)) {
            zzbR("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!CampaignTrackingService.zzU(context)) {
            zzbR("CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
    }

    private void zzoa() {
        zzb(new zzso(this) {
            final /* synthetic */ zzsc zzadJ;

            {
                this.zzadJ = r1;
            }

            public void zzf(Throwable th) {
                this.zzadJ.zzog();
            }
        });
    }

    private void zzob() {
        try {
            this.zzadz.zznS();
            zzog();
        } catch (SQLiteException e) {
            zzd("Failed to delete stale hits", e);
        }
        this.zzadF.zzx(86400000);
    }

    private boolean zzoh() {
        return !this.zzadI && zzon() > 0;
    }

    private void zzoi() {
        zzsn zznu = zznu();
        if (zznu.zzpd() && !zznu.zzcv()) {
            long zznT = zznT();
            if (zznT != 0 && Math.abs(zznq().currentTimeMillis() - zznT) <= zzns().zzoF()) {
                zza("Dispatch alarm scheduled (ms)", Long.valueOf(zzns().zzoE()));
                zznu.schedule();
            }
        }
    }

    private void zzoj() {
        zzoi();
        long zzon = zzon();
        long zzpG = zznv().zzpG();
        if (zzpG != 0) {
            zzpG = zzon - Math.abs(zznq().currentTimeMillis() - zzpG);
            if (zzpG <= 0) {
                zzpG = Math.min(zzns().zzoC(), zzon);
            }
        } else {
            zzpG = Math.min(zzns().zzoC(), zzon);
        }
        zza("Dispatch scheduled (ms)", Long.valueOf(zzpG));
        if (this.zzadE.zzcv()) {
            this.zzadE.zzy(Math.max(1, zzpG + this.zzadE.zzpa()));
            return;
        }
        this.zzadE.zzx(zzpG);
    }

    private void zzok() {
        zzol();
        zzom();
    }

    private void zzol() {
        if (this.zzadE.zzcv()) {
            zzbO("All hits dispatched or no network/service. Going to power save mode");
        }
        this.zzadE.cancel();
    }

    private void zzom() {
        zzsn zznu = zznu();
        if (zznu.zzcv()) {
            zznu.cancel();
        }
    }

    protected void onServiceConnected() {
        zzmq();
        zzod();
    }

    void start() {
        zznA();
        zzac.zza(!this.mStarted, "Analytics backend already started");
        this.mStarted = true;
        zznt().zzg(new Runnable(this) {
            final /* synthetic */ zzsc zzadJ;

            {
                this.zzadJ = r1;
            }

            public void run() {
                this.zzadJ.zznZ();
            }
        });
    }

    public void zzV(boolean z) {
        zzog();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public long zza(com.google.android.gms.internal.zzry r6, boolean r7) {
        /*
        r5 = this;
        com.google.android.gms.common.internal.zzac.zzw(r6);
        r5.zznA();
        r5.zzmq();
        r0 = r5.zzadz;	 Catch:{ SQLiteException -> 0x0049 }
        r0.beginTransaction();	 Catch:{ SQLiteException -> 0x0049 }
        r0 = r5.zzadz;	 Catch:{ SQLiteException -> 0x0049 }
        r2 = r6.zznI();	 Catch:{ SQLiteException -> 0x0049 }
        r1 = r6.zzlX();	 Catch:{ SQLiteException -> 0x0049 }
        r0.zza(r2, r1);	 Catch:{ SQLiteException -> 0x0049 }
        r0 = r5.zzadz;	 Catch:{ SQLiteException -> 0x0049 }
        r2 = r6.zznI();	 Catch:{ SQLiteException -> 0x0049 }
        r1 = r6.zzlX();	 Catch:{ SQLiteException -> 0x0049 }
        r4 = r6.zznJ();	 Catch:{ SQLiteException -> 0x0049 }
        r0 = r0.zza(r2, r1, r4);	 Catch:{ SQLiteException -> 0x0049 }
        if (r7 != 0) goto L_0x0042;
    L_0x002f:
        r6.zzr(r0);	 Catch:{ SQLiteException -> 0x0049 }
    L_0x0032:
        r2 = r5.zzadz;	 Catch:{ SQLiteException -> 0x0049 }
        r2.zzb(r6);	 Catch:{ SQLiteException -> 0x0049 }
        r2 = r5.zzadz;	 Catch:{ SQLiteException -> 0x0049 }
        r2.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x0049 }
        r2 = r5.zzadz;	 Catch:{ SQLiteException -> 0x0057 }
        r2.endTransaction();	 Catch:{ SQLiteException -> 0x0057 }
    L_0x0041:
        return r0;
    L_0x0042:
        r2 = 1;
        r2 = r2 + r0;
        r6.zzr(r2);	 Catch:{ SQLiteException -> 0x0049 }
        goto L_0x0032;
    L_0x0049:
        r0 = move-exception;
        r1 = "Failed to update Analytics property";
        r5.zze(r1, r0);	 Catch:{ all -> 0x0065 }
        r0 = r5.zzadz;	 Catch:{ SQLiteException -> 0x005e }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x005e }
    L_0x0054:
        r0 = -1;
        goto L_0x0041;
    L_0x0057:
        r2 = move-exception;
        r3 = "Failed to end transaction";
        r5.zze(r3, r2);
        goto L_0x0041;
    L_0x005e:
        r0 = move-exception;
        r1 = "Failed to end transaction";
        r5.zze(r1, r0);
        goto L_0x0054;
    L_0x0065:
        r0 = move-exception;
        r1 = r5.zzadz;	 Catch:{ SQLiteException -> 0x006c }
        r1.endTransaction();	 Catch:{ SQLiteException -> 0x006c }
    L_0x006b:
        throw r0;
    L_0x006c:
        r1 = move-exception;
        r2 = "Failed to end transaction";
        r5.zze(r2, r1);
        goto L_0x006b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzsc.zza(com.google.android.gms.internal.zzry, boolean):long");
    }

    public void zza(zzso com_google_android_gms_internal_zzso, long j) {
        zzh.zzmq();
        zznA();
        long j2 = -1;
        long zzpG = zznv().zzpG();
        if (zzpG != 0) {
            j2 = Math.abs(zznq().currentTimeMillis() - zzpG);
        }
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(j2));
        zzoc();
        try {
            zzoe();
            zznv().zzpH();
            zzog();
            if (com_google_android_gms_internal_zzso != null) {
                com_google_android_gms_internal_zzso.zzf(null);
            }
            if (this.zzadH != j) {
                this.zzadB.zzpz();
            }
        } catch (Throwable th) {
            zze("Local dispatch failed", th);
            zznv().zzpH();
            zzog();
            if (com_google_android_gms_internal_zzso != null) {
                com_google_android_gms_internal_zzso.zzf(th);
            }
        }
    }

    public void zza(zzst com_google_android_gms_internal_zzst) {
        zzac.zzw(com_google_android_gms_internal_zzst);
        zzh.zzmq();
        zznA();
        if (this.zzadI) {
            zzbP("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", com_google_android_gms_internal_zzst);
        }
        zzst zzf = zzf(com_google_android_gms_internal_zzst);
        zzoc();
        if (this.zzadC.zzb(zzf)) {
            zzbP("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.zzadz.zzc(zzf);
            zzog();
        } catch (SQLiteException e) {
            zze("Delivery failed to save hit to a database", e);
            zznr().zza(zzf, "deliver: failed to insert hit to database");
        }
    }

    public void zzb(zzso com_google_android_gms_internal_zzso) {
        zza(com_google_android_gms_internal_zzso, this.zzadH);
    }

    public void zzbW(String str) {
        zzac.zzdv(str);
        zzmq();
        zzrf zza = zztg.zza(zznr(), str);
        if (zza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        CharSequence zzpI = zznv().zzpI();
        if (str.equals(zzpI)) {
            zzbR("Ignoring duplicate install campaign");
        } else if (TextUtils.isEmpty(zzpI)) {
            zznv().zzca(str);
            if (zznv().zzpF().zzz(zzns().zzoY())) {
                zzd("Campaign received too late, ignoring", zza);
                return;
            }
            zzb("Received installation campaign", zza);
            for (zzry zza2 : this.zzadz.zzv(0)) {
                zza(zza2, zza);
            }
        } else {
            zzd("Ignoring multiple install campaigns. original, new", zzpI, str);
        }
    }

    protected void zzc(zzry com_google_android_gms_internal_zzry) {
        zzmq();
        zzb("Sending first hit to property", com_google_android_gms_internal_zzry.zznJ());
        if (!zznv().zzpF().zzz(zzns().zzoY())) {
            String zzpI = zznv().zzpI();
            if (!TextUtils.isEmpty(zzpI)) {
                zzrf zza = zztg.zza(zznr(), zzpI);
                zzb("Found relevant installation campaign", zza);
                zza(com_google_android_gms_internal_zzry, zza);
            }
        }
    }

    zzst zzf(zzst com_google_android_gms_internal_zzst) {
        if (!TextUtils.isEmpty(com_google_android_gms_internal_zzst.zzpu())) {
            return com_google_android_gms_internal_zzst;
        }
        Pair zzpM = zznv().zzpJ().zzpM();
        if (zzpM == null) {
            return com_google_android_gms_internal_zzst;
        }
        Long l = (Long) zzpM.second;
        String str = (String) zzpM.first;
        String valueOf = String.valueOf(l);
        valueOf = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(str).length()).append(valueOf).append(":").append(str).toString();
        Map hashMap = new HashMap(com_google_android_gms_internal_zzst.zzfz());
        hashMap.put("_m", valueOf);
        return zzst.zza(this, com_google_android_gms_internal_zzst, hashMap);
    }

    protected void zzmr() {
        this.zzadz.initialize();
        this.zzadA.initialize();
        this.zzadC.initialize();
    }

    public long zznT() {
        zzh.zzmq();
        zznA();
        try {
            return this.zzadz.zznT();
        } catch (SQLiteException e) {
            zze("Failed to get min/max hit times from local store", e);
            return 0;
        }
    }

    protected void zznZ() {
        zznA();
        zznY();
        zznv().zzpE();
        if (!zzbV("android.permission.ACCESS_NETWORK_STATE")) {
            zzbS("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzoo();
        }
        if (!zzbV("android.permission.INTERNET")) {
            zzbS("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzoo();
        }
        if (zztc.zzU(getContext())) {
            zzbO("AnalyticsService registered in the app manifest and enabled");
        } else {
            zzbR("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!(this.zzadI || this.zzadz.isEmpty())) {
            zzoc();
        }
        zzog();
    }

    public void zznm() {
        zzh.zzmq();
        zznA();
        zzbO("Service disconnected");
    }

    void zzno() {
        zzmq();
        this.zzadH = zznq().currentTimeMillis();
    }

    protected void zzoc() {
        if (!this.zzadI && zzns().zzox() && !this.zzadC.isConnected()) {
            if (this.zzadG.zzz(zzns().zzoS())) {
                this.zzadG.start();
                zzbO("Connecting to service");
                if (this.zzadC.connect()) {
                    zzbO("Connected to service");
                    this.zzadG.clear();
                    onServiceConnected();
                }
            }
        }
    }

    public void zzod() {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:37)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:61)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
*/
        /*
        r6 = this;
        com.google.android.gms.analytics.zzh.zzmq();
        r6.zznA();
        r0 = r6.zzns();
        r0 = r0.zzox();
        if (r0 != 0) goto L_0x0015;
    L_0x0010:
        r0 = "Service client disabled. Can't dispatch local hits to device AnalyticsService";
        r6.zzbR(r0);
    L_0x0015:
        r0 = r6.zzadC;
        r0 = r0.isConnected();
        if (r0 != 0) goto L_0x0023;
    L_0x001d:
        r0 = "Service not connected";
        r6.zzbO(r0);
    L_0x0022:
        return;
    L_0x0023:
        r0 = r6.zzadz;
        r0 = r0.isEmpty();
        if (r0 != 0) goto L_0x0022;
    L_0x002b:
        r0 = "Dispatching local hits to device AnalyticsService";
        r6.zzbO(r0);
    L_0x0030:
        r0 = r6.zzadz;	 Catch:{ SQLiteException -> 0x0049 }
        r1 = r6.zzns();	 Catch:{ SQLiteException -> 0x0049 }
        r1 = r1.zzoG();	 Catch:{ SQLiteException -> 0x0049 }
        r2 = (long) r1;	 Catch:{ SQLiteException -> 0x0049 }
        r1 = r0.zzt(r2);	 Catch:{ SQLiteException -> 0x0049 }
        r0 = r1.isEmpty();	 Catch:{ SQLiteException -> 0x0049 }
        if (r0 == 0) goto L_0x005f;	 Catch:{ SQLiteException -> 0x0049 }
    L_0x0045:
        r6.zzog();	 Catch:{ SQLiteException -> 0x0049 }
        goto L_0x0022;
    L_0x0049:
        r0 = move-exception;
        r1 = "Failed to read hits from store";
        r6.zze(r1, r0);
        r6.zzok();
        goto L_0x0022;
    L_0x0053:
        r1.remove(r0);
        r2 = r6.zzadz;	 Catch:{ SQLiteException -> 0x0078 }
        r4 = r0.zzpp();	 Catch:{ SQLiteException -> 0x0078 }
        r2.zzu(r4);	 Catch:{ SQLiteException -> 0x0078 }
    L_0x005f:
        r0 = r1.isEmpty();
        if (r0 != 0) goto L_0x0030;
    L_0x0065:
        r0 = 0;
        r0 = r1.get(r0);
        r0 = (com.google.android.gms.internal.zzst) r0;
        r2 = r6.zzadC;
        r2 = r2.zzb(r0);
        if (r2 != 0) goto L_0x0053;
    L_0x0074:
        r6.zzog();
        goto L_0x0022;
    L_0x0078:
        r0 = move-exception;
        r1 = "Failed to remove hit that was send for delivery";
        r6.zze(r1, r0);
        r6.zzok();
        goto L_0x0022;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzsc.zzod():void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected boolean zzoe() {
        /*
        r12 = this;
        r1 = 1;
        r2 = 0;
        com.google.android.gms.analytics.zzh.zzmq();
        r12.zznA();
        r0 = "Dispatching a batch of local hits";
        r12.zzbO(r0);
        r0 = r12.zzadC;
        r0 = r0.isConnected();
        if (r0 != 0) goto L_0x0028;
    L_0x0015:
        r0 = r1;
    L_0x0016:
        r3 = r12.zzadA;
        r3 = r3.zzpA();
        if (r3 != 0) goto L_0x002a;
    L_0x001e:
        if (r0 == 0) goto L_0x002c;
    L_0x0020:
        if (r1 == 0) goto L_0x002c;
    L_0x0022:
        r0 = "No network or service available. Will retry later";
        r12.zzbO(r0);
    L_0x0027:
        return r2;
    L_0x0028:
        r0 = r2;
        goto L_0x0016;
    L_0x002a:
        r1 = r2;
        goto L_0x001e;
    L_0x002c:
        r0 = r12.zzns();
        r0 = r0.zzoG();
        r1 = r12.zzns();
        r1 = r1.zzoH();
        r0 = java.lang.Math.max(r0, r1);
        r6 = (long) r0;
        r3 = new java.util.ArrayList;
        r3.<init>();
        r4 = 0;
    L_0x0048:
        r0 = r12.zzadz;	 Catch:{ all -> 0x01d7 }
        r0.beginTransaction();	 Catch:{ all -> 0x01d7 }
        r3.clear();	 Catch:{ all -> 0x01d7 }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x00c9 }
        r8 = r0.zzt(r6);	 Catch:{ SQLiteException -> 0x00c9 }
        r0 = r8.isEmpty();	 Catch:{ SQLiteException -> 0x00c9 }
        if (r0 == 0) goto L_0x0079;
    L_0x005c:
        r0 = "Store is empty, nothing to dispatch";
        r12.zzbO(r0);	 Catch:{ SQLiteException -> 0x00c9 }
        r12.zzok();	 Catch:{ SQLiteException -> 0x00c9 }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x006f }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x006f }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x006f }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x006f }
        goto L_0x0027;
    L_0x006f:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r12.zze(r1, r0);
        r12.zzok();
        goto L_0x0027;
    L_0x0079:
        r0 = "Hits loaded from store. count";
        r1 = r8.size();	 Catch:{ SQLiteException -> 0x00c9 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ SQLiteException -> 0x00c9 }
        r12.zza(r0, r1);	 Catch:{ SQLiteException -> 0x00c9 }
        r1 = r8.iterator();	 Catch:{ all -> 0x01d7 }
    L_0x008a:
        r0 = r1.hasNext();	 Catch:{ all -> 0x01d7 }
        if (r0 == 0) goto L_0x00e9;
    L_0x0090:
        r0 = r1.next();	 Catch:{ all -> 0x01d7 }
        r0 = (com.google.android.gms.internal.zzst) r0;	 Catch:{ all -> 0x01d7 }
        r10 = r0.zzpp();	 Catch:{ all -> 0x01d7 }
        r0 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1));
        if (r0 != 0) goto L_0x008a;
    L_0x009e:
        r0 = "Database contains successfully uploaded hit";
        r1 = java.lang.Long.valueOf(r4);	 Catch:{ all -> 0x01d7 }
        r3 = r8.size();	 Catch:{ all -> 0x01d7 }
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ all -> 0x01d7 }
        r12.zzd(r0, r1, r3);	 Catch:{ all -> 0x01d7 }
        r12.zzok();	 Catch:{ all -> 0x01d7 }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x00be }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x00be }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x00be }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x00be }
        goto L_0x0027;
    L_0x00be:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r12.zze(r1, r0);
        r12.zzok();
        goto L_0x0027;
    L_0x00c9:
        r0 = move-exception;
        r1 = "Failed to read hits from persisted store";
        r12.zzd(r1, r0);	 Catch:{ all -> 0x01d7 }
        r12.zzok();	 Catch:{ all -> 0x01d7 }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x00de }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x00de }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x00de }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x00de }
        goto L_0x0027;
    L_0x00de:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r12.zze(r1, r0);
        r12.zzok();
        goto L_0x0027;
    L_0x00e9:
        r0 = r12.zzadC;	 Catch:{ all -> 0x01d7 }
        r0 = r0.isConnected();	 Catch:{ all -> 0x01d7 }
        if (r0 == 0) goto L_0x01ee;
    L_0x00f1:
        r0 = "Service connected, sending hits to the service";
        r12.zzbO(r0);	 Catch:{ all -> 0x01d7 }
    L_0x00f6:
        r0 = r8.isEmpty();	 Catch:{ all -> 0x01d7 }
        if (r0 != 0) goto L_0x01ee;
    L_0x00fc:
        r0 = 0;
        r0 = r8.get(r0);	 Catch:{ all -> 0x01d7 }
        r0 = (com.google.android.gms.internal.zzst) r0;	 Catch:{ all -> 0x01d7 }
        r1 = r12.zzadC;	 Catch:{ all -> 0x01d7 }
        r1 = r1.zzb(r0);	 Catch:{ all -> 0x01d7 }
        if (r1 != 0) goto L_0x0134;
    L_0x010b:
        r0 = r4;
    L_0x010c:
        r4 = r12.zzadA;	 Catch:{ all -> 0x01d7 }
        r4 = r4.zzpA();	 Catch:{ all -> 0x01d7 }
        if (r4 == 0) goto L_0x0182;
    L_0x0114:
        r4 = r12.zzadA;	 Catch:{ all -> 0x01d7 }
        r8 = r4.zzt(r8);	 Catch:{ all -> 0x01d7 }
        r9 = r8.iterator();	 Catch:{ all -> 0x01d7 }
        r4 = r0;
    L_0x011f:
        r0 = r9.hasNext();	 Catch:{ all -> 0x01d7 }
        if (r0 == 0) goto L_0x0179;
    L_0x0125:
        r0 = r9.next();	 Catch:{ all -> 0x01d7 }
        r0 = (java.lang.Long) r0;	 Catch:{ all -> 0x01d7 }
        r0 = r0.longValue();	 Catch:{ all -> 0x01d7 }
        r4 = java.lang.Math.max(r4, r0);	 Catch:{ all -> 0x01d7 }
        goto L_0x011f;
    L_0x0134:
        r10 = r0.zzpp();	 Catch:{ all -> 0x01d7 }
        r4 = java.lang.Math.max(r4, r10);	 Catch:{ all -> 0x01d7 }
        r8.remove(r0);	 Catch:{ all -> 0x01d7 }
        r1 = "Hit sent do device AnalyticsService for delivery";
        r12.zzb(r1, r0);	 Catch:{ all -> 0x01d7 }
        r1 = r12.zzadz;	 Catch:{ SQLiteException -> 0x0159 }
        r10 = r0.zzpp();	 Catch:{ SQLiteException -> 0x0159 }
        r1.zzu(r10);	 Catch:{ SQLiteException -> 0x0159 }
        r0 = r0.zzpp();	 Catch:{ SQLiteException -> 0x0159 }
        r0 = java.lang.Long.valueOf(r0);	 Catch:{ SQLiteException -> 0x0159 }
        r3.add(r0);	 Catch:{ SQLiteException -> 0x0159 }
        goto L_0x00f6;
    L_0x0159:
        r0 = move-exception;
        r1 = "Failed to remove hit that was send for delivery";
        r12.zze(r1, r0);	 Catch:{ all -> 0x01d7 }
        r12.zzok();	 Catch:{ all -> 0x01d7 }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x016e }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x016e }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x016e }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x016e }
        goto L_0x0027;
    L_0x016e:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r12.zze(r1, r0);
        r12.zzok();
        goto L_0x0027;
    L_0x0179:
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x019f }
        r0.zzr(r8);	 Catch:{ SQLiteException -> 0x019f }
        r3.addAll(r8);	 Catch:{ SQLiteException -> 0x019f }
        r0 = r4;
    L_0x0182:
        r4 = r3.isEmpty();	 Catch:{ all -> 0x01d7 }
        if (r4 == 0) goto L_0x01bf;
    L_0x0188:
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x0194 }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x0194 }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x0194 }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x0194 }
        goto L_0x0027;
    L_0x0194:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r12.zze(r1, r0);
        r12.zzok();
        goto L_0x0027;
    L_0x019f:
        r0 = move-exception;
        r1 = "Failed to remove successfully uploaded hits";
        r12.zze(r1, r0);	 Catch:{ all -> 0x01d7 }
        r12.zzok();	 Catch:{ all -> 0x01d7 }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x01b4 }
        r0.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x01b4 }
        r0 = r12.zzadz;	 Catch:{ SQLiteException -> 0x01b4 }
        r0.endTransaction();	 Catch:{ SQLiteException -> 0x01b4 }
        goto L_0x0027;
    L_0x01b4:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r12.zze(r1, r0);
        r12.zzok();
        goto L_0x0027;
    L_0x01bf:
        r4 = r12.zzadz;	 Catch:{ SQLiteException -> 0x01cc }
        r4.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x01cc }
        r4 = r12.zzadz;	 Catch:{ SQLiteException -> 0x01cc }
        r4.endTransaction();	 Catch:{ SQLiteException -> 0x01cc }
        r4 = r0;
        goto L_0x0048;
    L_0x01cc:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r12.zze(r1, r0);
        r12.zzok();
        goto L_0x0027;
    L_0x01d7:
        r0 = move-exception;
        r1 = r12.zzadz;	 Catch:{ SQLiteException -> 0x01e3 }
        r1.setTransactionSuccessful();	 Catch:{ SQLiteException -> 0x01e3 }
        r1 = r12.zzadz;	 Catch:{ SQLiteException -> 0x01e3 }
        r1.endTransaction();	 Catch:{ SQLiteException -> 0x01e3 }
        throw r0;
    L_0x01e3:
        r0 = move-exception;
        r1 = "Failed to commit local dispatch transaction";
        r12.zze(r1, r0);
        r12.zzok();
        goto L_0x0027;
    L_0x01ee:
        r0 = r4;
        goto L_0x010c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzsc.zzoe():boolean");
    }

    public void zzog() {
        zznp().zzmq();
        zznA();
        if (!zzoh()) {
            this.zzadB.unregister();
            zzok();
        } else if (this.zzadz.isEmpty()) {
            this.zzadB.unregister();
            zzok();
        } else {
            boolean z;
            if (((Boolean) zzsq.zzaeR.get()).booleanValue()) {
                z = true;
            } else {
                this.zzadB.zzpx();
                z = this.zzadB.isConnected();
            }
            if (z) {
                zzoj();
                return;
            }
            zzok();
            zzoi();
        }
    }

    public long zzon() {
        if (this.zzadD != Long.MIN_VALUE) {
            return this.zzadD;
        }
        return zzma().zzpk() ? ((long) zzma().zzqb()) * 1000 : zzns().zzoD();
    }

    public void zzoo() {
        zznA();
        zzmq();
        this.zzadI = true;
        this.zzadC.disconnect();
        zzog();
    }
}
