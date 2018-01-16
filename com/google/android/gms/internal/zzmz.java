package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzja.zzb;
import com.google.android.gms.internal.zzja.zzc;
import com.google.android.gms.internal.zzmq.zza;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@zzmb
public final class zzmz extends zza {
    private static zzmz zzSS;
    private static final Object zztU = new Object();
    private final Context mContext;
    private final zzmy zzST;
    private final zzfq zzSU;
    private final zzja zzSV;

    class AnonymousClass1 implements Callable<Void> {
        final /* synthetic */ zzmy zzSW;
        final /* synthetic */ zzmh zzSX;
        final /* synthetic */ Bundle zzSY;
        final /* synthetic */ Context zztd;

        AnonymousClass1(zzmy com_google_android_gms_internal_zzmy, Context context, zzmh com_google_android_gms_internal_zzmh, Bundle bundle) {
            this.zzSW = com_google_android_gms_internal_zzmy;
            this.zztd = context;
            this.zzSX = com_google_android_gms_internal_zzmh;
            this.zzSY = bundle;
        }

        public /* synthetic */ Object call() throws Exception {
            return zzbl();
        }

        public Void zzbl() throws Exception {
            String str = this.zzSX.zzRe.packageName;
            return null;
        }
    }

    class AnonymousClass2 implements Runnable {
        final /* synthetic */ zznb zzSZ;
        final /* synthetic */ zzgd zzTa;
        final /* synthetic */ String zzTb;
        final /* synthetic */ zzgf zzsK;
        final /* synthetic */ zzja zzsZ;

        AnonymousClass2(zzja com_google_android_gms_internal_zzja, zznb com_google_android_gms_internal_zznb, zzgf com_google_android_gms_internal_zzgf, zzgd com_google_android_gms_internal_zzgd, String str) {
            this.zzsZ = com_google_android_gms_internal_zzja;
            this.zzSZ = com_google_android_gms_internal_zznb;
            this.zzsK = com_google_android_gms_internal_zzgf;
            this.zzTa = com_google_android_gms_internal_zzgd;
            this.zzTb = str;
        }

        public void run() {
            zzc zzgv = this.zzsZ.zzgv();
            this.zzSZ.zzb(zzgv);
            this.zzsK.zza(this.zzTa, "rwc");
            final zzgd zzfw = this.zzsK.zzfw();
            zzgv.zza(new zzqi.zzc<zzjb>(this) {
                final /* synthetic */ AnonymousClass2 zzTd;

                public void zzb(zzjb com_google_android_gms_internal_zzjb) {
                    this.zzTd.zzsK.zza(zzfw, "jsf");
                    this.zzTd.zzsK.zzfx();
                    com_google_android_gms_internal_zzjb.zza("/invalidRequest", this.zzTd.zzSZ.zzTk);
                    com_google_android_gms_internal_zzjb.zza("/loadAdURL", this.zzTd.zzSZ.zzTl);
                    com_google_android_gms_internal_zzjb.zza("/loadAd", this.zzTd.zzSZ.zzTm);
                    try {
                        com_google_android_gms_internal_zzjb.zzi("AFMA_getAd", this.zzTd.zzTb);
                    } catch (Throwable e) {
                        zzpy.zzb("Error requesting an ad url", e);
                    }
                }

                public /* synthetic */ void zzd(Object obj) {
                    zzb((zzjb) obj);
                }
            }, new zzqi.zza(this) {
                public void run() {
                }
            });
        }
    }

    class AnonymousClass3 implements Runnable {
        final /* synthetic */ zzmy zzSW;
        final /* synthetic */ zzmh zzSX;
        final /* synthetic */ zznb zzSZ;
        final /* synthetic */ Context zztd;

        AnonymousClass3(zzmy com_google_android_gms_internal_zzmy, Context context, zznb com_google_android_gms_internal_zznb, zzmh com_google_android_gms_internal_zzmh) {
            this.zzSW = com_google_android_gms_internal_zzmy;
            this.zztd = context;
            this.zzSZ = com_google_android_gms_internal_zznb;
            this.zzSX = com_google_android_gms_internal_zzmh;
        }

        public void run() {
            this.zzSW.zzSM.zza(this.zztd, this.zzSZ, this.zzSX.zzvf);
        }
    }

    zzmz(Context context, zzfq com_google_android_gms_internal_zzfq, zzmy com_google_android_gms_internal_zzmy) {
        this.mContext = context;
        this.zzST = com_google_android_gms_internal_zzmy;
        this.zzSU = com_google_android_gms_internal_zzfq;
        this.zzSV = new zzja(context.getApplicationContext() != null ? context.getApplicationContext() : context, zzqa.zzkK(), com_google_android_gms_internal_zzfq.zzfl(), new zzpn<zzix>(this) {
            public void zza(zzix com_google_android_gms_internal_zzix) {
                com_google_android_gms_internal_zzix.zza("/log", zzhw.zzHl);
            }

            public /* synthetic */ void zzd(Object obj) {
                zza((zzix) obj);
            }
        }, new zzb());
    }

    private static zzmk zza(Context context, zzja com_google_android_gms_internal_zzja, zzfq com_google_android_gms_internal_zzfq, zzmy com_google_android_gms_internal_zzmy, zzmh com_google_android_gms_internal_zzmh) {
        Bundle bundle;
        Future future;
        Throwable e;
        zzpy.zzbc("Starting ad request from service using: AFMA_getAd");
        zzfx.initialize(context);
        zzqf zzii = com_google_android_gms_internal_zzmy.zzSQ.zzii();
        zzgf com_google_android_gms_internal_zzgf = new zzgf(((Boolean) zzfx.zzBK.get()).booleanValue(), "load_ad", com_google_android_gms_internal_zzmh.zzvj.zzzk);
        if (com_google_android_gms_internal_zzmh.versionCode > 10 && com_google_android_gms_internal_zzmh.zzRu != -1) {
            com_google_android_gms_internal_zzgf.zza(com_google_android_gms_internal_zzgf.zzc(com_google_android_gms_internal_zzmh.zzRu), "cts");
        }
        zzgd zzfw = com_google_android_gms_internal_zzgf.zzfw();
        Bundle bundle2 = (com_google_android_gms_internal_zzmh.versionCode < 4 || com_google_android_gms_internal_zzmh.zzRk == null) ? null : com_google_android_gms_internal_zzmh.zzRk;
        if (!((Boolean) zzfx.zzCb.get()).booleanValue() || com_google_android_gms_internal_zzmy.zzSI == null) {
            bundle = bundle2;
            future = null;
        } else {
            if (bundle2 == null && ((Boolean) zzfx.zzCc.get()).booleanValue()) {
                zzpe.v("contentInfo is not present, but we'll still launch the app index task");
                bundle2 = new Bundle();
            }
            if (bundle2 != null) {
                bundle = bundle2;
                future = zzph.zza(new AnonymousClass1(com_google_android_gms_internal_zzmy, context, com_google_android_gms_internal_zzmh, bundle2));
            } else {
                bundle = bundle2;
                future = null;
            }
        }
        zzqd com_google_android_gms_internal_zzqd = new zzqd(null);
        Bundle bundle3 = com_google_android_gms_internal_zzmh.zzRd.extras;
        Object obj = (bundle3 == null || bundle3.getString("_ad") == null) ? null : 1;
        if (com_google_android_gms_internal_zzmh.zzRB && obj == null) {
            zzqf zza = com_google_android_gms_internal_zzmy.zzSN.zza(com_google_android_gms_internal_zzmh.applicationInfo);
        } else {
            Object obj2 = com_google_android_gms_internal_zzqd;
        }
        zznf zzv = zzv.zzcS().zzv(context);
        if (zzv.zzUm == -1) {
            zzpy.zzbc("Device is offline.");
            return new zzmk(2);
        }
        String string;
        String uuid = com_google_android_gms_internal_zzmh.versionCode >= 7 ? com_google_android_gms_internal_zzmh.zzRr : UUID.randomUUID().toString();
        zznb com_google_android_gms_internal_zznb = new zznb(uuid, com_google_android_gms_internal_zzmh.applicationInfo.packageName);
        if (com_google_android_gms_internal_zzmh.zzRd.extras != null) {
            string = com_google_android_gms_internal_zzmh.zzRd.extras.getString("_ad");
            if (string != null) {
                return zzna.zza(context, com_google_android_gms_internal_zzmh, string);
            }
        }
        List zza2 = com_google_android_gms_internal_zzmy.zzSL.zza(com_google_android_gms_internal_zzmh);
        String zzg = com_google_android_gms_internal_zzmy.zzSR.zzg(com_google_android_gms_internal_zzmh);
        if (future != null) {
            try {
                zzpe.v("Waiting for app index fetching task.");
                future.get(((Long) zzfx.zzCd.get()).longValue(), TimeUnit.MILLISECONDS);
                zzpe.v("App index fetching task completed.");
            } catch (ExecutionException e2) {
                e = e2;
                zzpy.zzc("Failed to fetch app index signal", e);
            } catch (InterruptedException e3) {
                e = e3;
                zzpy.zzc("Failed to fetch app index signal", e);
            } catch (TimeoutException e4) {
                zzpy.zzbc("Timed out waiting for app index fetching task");
            }
        }
        string = com_google_android_gms_internal_zzmh.zzRe.packageName;
        zzd(zzii);
        JSONObject zza3 = zzna.zza(context, new zzmx().zzf(com_google_android_gms_internal_zzmh).zza(zzv).zza(null).zzc(zzc(zza)).zze(zzd(zzii)).zzaJ(zzg).zzk(zza2).zzf(bundle).zzaK(null).zzh(com_google_android_gms_internal_zzmy.zzSJ.zzi(context)));
        if (zza3 == null) {
            return new zzmk(0);
        }
        if (com_google_android_gms_internal_zzmh.versionCode < 7) {
            try {
                zza3.put("request_id", uuid);
            } catch (JSONException e5) {
            }
        }
        try {
            zza3.put("prefetch_mode", "url");
        } catch (Throwable e6) {
            zzpy.zzc("Failed putting prefetch parameters to ad request.", e6);
        }
        String jSONObject = zza3.toString();
        com_google_android_gms_internal_zzgf.zza(zzfw, "arc");
        zzpi.zzWR.post(new AnonymousClass2(com_google_android_gms_internal_zzja, com_google_android_gms_internal_zznb, com_google_android_gms_internal_zzgf, com_google_android_gms_internal_zzgf.zzfw(), jSONObject));
        zzmk com_google_android_gms_internal_zzmk;
        try {
            zzne com_google_android_gms_internal_zzne = (zzne) com_google_android_gms_internal_zznb.zzjh().get(10, TimeUnit.SECONDS);
            if (com_google_android_gms_internal_zzne == null) {
                com_google_android_gms_internal_zzmk = new zzmk(0);
                return com_google_android_gms_internal_zzmk;
            } else if (com_google_android_gms_internal_zzne.getErrorCode() != -2) {
                com_google_android_gms_internal_zzmk = new zzmk(com_google_android_gms_internal_zzne.getErrorCode());
                zzpi.zzWR.post(new AnonymousClass3(com_google_android_gms_internal_zzmy, context, com_google_android_gms_internal_zznb, com_google_android_gms_internal_zzmh));
                return com_google_android_gms_internal_zzmk;
            } else {
                if (com_google_android_gms_internal_zzgf.zzfA() != null) {
                    com_google_android_gms_internal_zzgf.zza(com_google_android_gms_internal_zzgf.zzfA(), "rur");
                }
                com_google_android_gms_internal_zzmk = null;
                if (!TextUtils.isEmpty(com_google_android_gms_internal_zzne.zzjm())) {
                    com_google_android_gms_internal_zzmk = zzna.zza(context, com_google_android_gms_internal_zzmh, com_google_android_gms_internal_zzne.zzjm());
                }
                if (com_google_android_gms_internal_zzmk == null && !TextUtils.isEmpty(com_google_android_gms_internal_zzne.getUrl())) {
                    com_google_android_gms_internal_zzmk = zza(com_google_android_gms_internal_zzmh, context, com_google_android_gms_internal_zzmh.zzvf.zzaZ, com_google_android_gms_internal_zzne.getUrl(), null, com_google_android_gms_internal_zzne, com_google_android_gms_internal_zzgf, com_google_android_gms_internal_zzmy);
                }
                if (com_google_android_gms_internal_zzmk == null) {
                    com_google_android_gms_internal_zzmk = new zzmk(0);
                }
                com_google_android_gms_internal_zzgf.zza(zzfw, "tts");
                com_google_android_gms_internal_zzmk.zzRX = com_google_android_gms_internal_zzgf.zzfy();
                zzpi.zzWR.post(new AnonymousClass3(com_google_android_gms_internal_zzmy, context, com_google_android_gms_internal_zznb, com_google_android_gms_internal_zzmh));
                return com_google_android_gms_internal_zzmk;
            }
        } catch (Exception e7) {
            com_google_android_gms_internal_zzmk = new zzmk(0);
            return com_google_android_gms_internal_zzmk;
        } finally {
            zzpi.zzWR.post(new AnonymousClass3(com_google_android_gms_internal_zzmy, context, com_google_android_gms_internal_zznb, com_google_android_gms_internal_zzmh));
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.internal.zzmk zza(com.google.android.gms.internal.zzmh r13, android.content.Context r14, java.lang.String r15, java.lang.String r16, java.lang.String r17, com.google.android.gms.internal.zzne r18, com.google.android.gms.internal.zzgf r19, com.google.android.gms.internal.zzmy r20) {
        /*
        if (r19 == 0) goto L_0x00db;
    L_0x0002:
        r2 = r19.zzfw();
        r3 = r2;
    L_0x0007:
        r8 = new com.google.android.gms.internal.zznc;	 Catch:{ IOException -> 0x00e6 }
        r2 = r18.zzjj();	 Catch:{ IOException -> 0x00e6 }
        r8.<init>(r13, r2);	 Catch:{ IOException -> 0x00e6 }
        r4 = "AdRequestServiceImpl: Sending request: ";
        r2 = java.lang.String.valueOf(r16);	 Catch:{ IOException -> 0x00e6 }
        r5 = r2.length();	 Catch:{ IOException -> 0x00e6 }
        if (r5 == 0) goto L_0x00df;
    L_0x001c:
        r2 = r4.concat(r2);	 Catch:{ IOException -> 0x00e6 }
    L_0x0020:
        com.google.android.gms.internal.zzpy.zzbc(r2);	 Catch:{ IOException -> 0x00e6 }
        r4 = new java.net.URL;	 Catch:{ IOException -> 0x00e6 }
        r0 = r16;
        r4.<init>(r0);	 Catch:{ IOException -> 0x00e6 }
        r2 = 0;
        r5 = com.google.android.gms.ads.internal.zzv.zzcP();	 Catch:{ IOException -> 0x00e6 }
        r10 = r5.elapsedRealtime();	 Catch:{ IOException -> 0x00e6 }
        r6 = r2;
        r7 = r4;
    L_0x0035:
        r2 = r7.openConnection();	 Catch:{ IOException -> 0x00e6 }
        r2 = (java.net.HttpURLConnection) r2;	 Catch:{ IOException -> 0x00e6 }
        r4 = com.google.android.gms.ads.internal.zzv.zzcJ();	 Catch:{ all -> 0x010b }
        r5 = 0;
        r4.zza(r14, r15, r5, r2);	 Catch:{ all -> 0x010b }
        r4 = android.text.TextUtils.isEmpty(r17);	 Catch:{ all -> 0x010b }
        if (r4 != 0) goto L_0x0056;
    L_0x0049:
        r4 = r18.zzjl();	 Catch:{ all -> 0x010b }
        if (r4 == 0) goto L_0x0056;
    L_0x004f:
        r4 = "x-afma-drt-cookie";
        r0 = r17;
        r2.addRequestProperty(r4, r0);	 Catch:{ all -> 0x010b }
    L_0x0056:
        r4 = r13.zzRC;	 Catch:{ all -> 0x010b }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x010b }
        if (r5 != 0) goto L_0x0068;
    L_0x005e:
        r5 = "Sending webview cookie in ad request header.";
        com.google.android.gms.internal.zzpy.zzbc(r5);	 Catch:{ all -> 0x010b }
        r5 = "Cookie";
        r2.addRequestProperty(r5, r4);	 Catch:{ all -> 0x010b }
    L_0x0068:
        if (r18 == 0) goto L_0x0094;
    L_0x006a:
        r4 = r18.zzjk();	 Catch:{ all -> 0x010b }
        r4 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x010b }
        if (r4 != 0) goto L_0x0094;
    L_0x0074:
        r4 = 1;
        r2.setDoOutput(r4);	 Catch:{ all -> 0x010b }
        r4 = r18.zzjk();	 Catch:{ all -> 0x010b }
        r9 = r4.getBytes();	 Catch:{ all -> 0x010b }
        r4 = r9.length;	 Catch:{ all -> 0x010b }
        r2.setFixedLengthStreamingMode(r4);	 Catch:{ all -> 0x010b }
        r5 = 0;
        r4 = new java.io.BufferedOutputStream;	 Catch:{ all -> 0x0105 }
        r12 = r2.getOutputStream();	 Catch:{ all -> 0x0105 }
        r4.<init>(r12);	 Catch:{ all -> 0x0105 }
        r4.write(r9);	 Catch:{ all -> 0x0197 }
        com.google.android.gms.common.util.zzo.zzb(r4);	 Catch:{ all -> 0x010b }
    L_0x0094:
        r9 = r2.getResponseCode();	 Catch:{ all -> 0x010b }
        r12 = r2.getHeaderFields();	 Catch:{ all -> 0x010b }
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r9 < r4) goto L_0x0116;
    L_0x00a0:
        r4 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r9 >= r4) goto L_0x0116;
    L_0x00a4:
        r6 = r7.toString();	 Catch:{ all -> 0x010b }
        r5 = 0;
        r4 = new java.io.InputStreamReader;	 Catch:{ all -> 0x0110 }
        r7 = r2.getInputStream();	 Catch:{ all -> 0x0110 }
        r4.<init>(r7);	 Catch:{ all -> 0x0110 }
        r5 = com.google.android.gms.ads.internal.zzv.zzcJ();	 Catch:{ all -> 0x0194 }
        r5 = r5.zza(r4);	 Catch:{ all -> 0x0194 }
        com.google.android.gms.common.util.zzo.zzb(r4);	 Catch:{ all -> 0x010b }
        zza(r6, r12, r5, r9);	 Catch:{ all -> 0x010b }
        r8.zzb(r6, r12, r5);	 Catch:{ all -> 0x010b }
        if (r19 == 0) goto L_0x00d2;
    L_0x00c5:
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ all -> 0x010b }
        r5 = 0;
        r6 = "ufe";
        r4[r5] = r6;	 Catch:{ all -> 0x010b }
        r0 = r19;
        r0.zza(r3, r4);	 Catch:{ all -> 0x010b }
    L_0x00d2:
        r3 = r8.zzj(r10);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        r2 = r3;
    L_0x00da:
        return r2;
    L_0x00db:
        r2 = 0;
        r3 = r2;
        goto L_0x0007;
    L_0x00df:
        r2 = new java.lang.String;	 Catch:{ IOException -> 0x00e6 }
        r2.<init>(r4);	 Catch:{ IOException -> 0x00e6 }
        goto L_0x0020;
    L_0x00e6:
        r2 = move-exception;
        r3 = "Error while connecting to ad server: ";
        r2 = r2.getMessage();
        r2 = java.lang.String.valueOf(r2);
        r4 = r2.length();
        if (r4 == 0) goto L_0x018d;
    L_0x00f7:
        r2 = r3.concat(r2);
    L_0x00fb:
        com.google.android.gms.internal.zzpy.zzbe(r2);
        r2 = new com.google.android.gms.internal.zzmk;
        r3 = 2;
        r2.<init>(r3);
        goto L_0x00da;
    L_0x0105:
        r3 = move-exception;
        r4 = r5;
    L_0x0107:
        com.google.android.gms.common.util.zzo.zzb(r4);	 Catch:{ all -> 0x010b }
        throw r3;	 Catch:{ all -> 0x010b }
    L_0x010b:
        r3 = move-exception;
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        throw r3;	 Catch:{ IOException -> 0x00e6 }
    L_0x0110:
        r3 = move-exception;
        r4 = r5;
    L_0x0112:
        com.google.android.gms.common.util.zzo.zzb(r4);	 Catch:{ all -> 0x010b }
        throw r3;	 Catch:{ all -> 0x010b }
    L_0x0116:
        r4 = r7.toString();	 Catch:{ all -> 0x010b }
        r5 = 0;
        zza(r4, r12, r5, r9);	 Catch:{ all -> 0x010b }
        r4 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
        if (r9 < r4) goto L_0x015d;
    L_0x0122:
        r4 = 400; // 0x190 float:5.6E-43 double:1.976E-321;
        if (r9 >= r4) goto L_0x015d;
    L_0x0126:
        r4 = "Location";
        r4 = r2.getHeaderField(r4);	 Catch:{ all -> 0x010b }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ all -> 0x010b }
        if (r5 == 0) goto L_0x0142;
    L_0x0132:
        r3 = "No location header to follow redirect.";
        com.google.android.gms.internal.zzpy.zzbe(r3);	 Catch:{ all -> 0x010b }
        r3 = new com.google.android.gms.internal.zzmk;	 Catch:{ all -> 0x010b }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        r2 = r3;
        goto L_0x00da;
    L_0x0142:
        r5 = new java.net.URL;	 Catch:{ all -> 0x010b }
        r5.<init>(r4);	 Catch:{ all -> 0x010b }
        r4 = r6 + 1;
        r6 = 5;
        if (r4 <= r6) goto L_0x0181;
    L_0x014c:
        r3 = "Too many redirects.";
        com.google.android.gms.internal.zzpy.zzbe(r3);	 Catch:{ all -> 0x010b }
        r3 = new com.google.android.gms.internal.zzmk;	 Catch:{ all -> 0x010b }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        r2 = r3;
        goto L_0x00da;
    L_0x015d:
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x010b }
        r4 = 46;
        r3.<init>(r4);	 Catch:{ all -> 0x010b }
        r4 = "Received error HTTP response code: ";
        r3 = r3.append(r4);	 Catch:{ all -> 0x010b }
        r3 = r3.append(r9);	 Catch:{ all -> 0x010b }
        r3 = r3.toString();	 Catch:{ all -> 0x010b }
        com.google.android.gms.internal.zzpy.zzbe(r3);	 Catch:{ all -> 0x010b }
        r3 = new com.google.android.gms.internal.zzmk;	 Catch:{ all -> 0x010b }
        r4 = 0;
        r3.<init>(r4);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        r2 = r3;
        goto L_0x00da;
    L_0x0181:
        r8.zzk(r12);	 Catch:{ all -> 0x010b }
        r2.disconnect();	 Catch:{ IOException -> 0x00e6 }
        if (r20 == 0) goto L_0x0189;
    L_0x0189:
        r6 = r4;
        r7 = r5;
        goto L_0x0035;
    L_0x018d:
        r2 = new java.lang.String;
        r2.<init>(r3);
        goto L_0x00fb;
    L_0x0194:
        r3 = move-exception;
        goto L_0x0112;
    L_0x0197:
        r3 = move-exception;
        goto L_0x0107;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzmz.zza(com.google.android.gms.internal.zzmh, android.content.Context, java.lang.String, java.lang.String, java.lang.String, com.google.android.gms.internal.zzne, com.google.android.gms.internal.zzgf, com.google.android.gms.internal.zzmy):com.google.android.gms.internal.zzmk");
    }

    public static zzmz zza(Context context, zzfq com_google_android_gms_internal_zzfq, zzmy com_google_android_gms_internal_zzmy) {
        zzmz com_google_android_gms_internal_zzmz;
        synchronized (zztU) {
            if (zzSS == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                zzSS = new zzmz(context, com_google_android_gms_internal_zzfq, com_google_android_gms_internal_zzmy);
            }
            com_google_android_gms_internal_zzmz = zzSS;
        }
        return com_google_android_gms_internal_zzmz;
    }

    private static void zza(String str, Map<String, List<String>> map, String str2, int i) {
        if (zzpy.zzai(2)) {
            zzpe.v(new StringBuilder(String.valueOf(str).length() + 39).append("Http Response: {\n  URL:\n    ").append(str).append("\n  Headers:").toString());
            if (map != null) {
                for (String str3 : map.keySet()) {
                    String str32;
                    zzpe.v(new StringBuilder(String.valueOf(str32).length() + 5).append("    ").append(str32).append(":").toString());
                    for (String str322 : (List) map.get(str322)) {
                        String str4 = "      ";
                        str322 = String.valueOf(str322);
                        zzpe.v(str322.length() != 0 ? str4.concat(str322) : new String(str4));
                    }
                }
            }
            zzpe.v("  Body:");
            if (str2 != null) {
                for (int i2 = 0; i2 < Math.min(str2.length(), 100000); i2 += 1000) {
                    zzpe.v(str2.substring(i2, Math.min(str2.length(), i2 + 1000)));
                }
            } else {
                zzpe.v("    null");
            }
            zzpe.v("  Response Code:\n    " + i + "\n}");
        }
    }

    private static Location zzc(zzqf<Location> com_google_android_gms_internal_zzqf_android_location_Location) {
        try {
            return (Location) com_google_android_gms_internal_zzqf_android_location_Location.get(((Long) zzfx.zzEl.get()).longValue(), TimeUnit.MILLISECONDS);
        } catch (Throwable e) {
            zzpy.zzc("Exception caught while getting location", e);
            return null;
        }
    }

    private static Bundle zzd(zzqf<Bundle> com_google_android_gms_internal_zzqf_android_os_Bundle) {
        Bundle bundle = new Bundle();
        try {
            return (Bundle) com_google_android_gms_internal_zzqf_android_os_Bundle.get(((Long) zzfx.zzED.get()).longValue(), TimeUnit.MILLISECONDS);
        } catch (Throwable e) {
            zzpy.zzc("Exception caught while getting parental controls.", e);
            return bundle;
        }
    }

    public void zza(final zzmh com_google_android_gms_internal_zzmh, final zzmr com_google_android_gms_internal_zzmr) {
        zzv.zzcN().zzc(this.mContext, com_google_android_gms_internal_zzmh.zzvf);
        zzph.zza(new Runnable(this) {
            final /* synthetic */ zzmz zzTf;

            public void run() {
                zzmk zzd;
                try {
                    zzd = this.zzTf.zzd(com_google_android_gms_internal_zzmh);
                } catch (Throwable e) {
                    zzv.zzcN().zza(e, "AdRequestServiceImpl.loadAdAsync");
                    zzpy.zzc("Could not fetch ad response due to an Exception.", e);
                    zzd = null;
                }
                if (zzd == null) {
                    zzd = new zzmk(0);
                }
                try {
                    com_google_android_gms_internal_zzmr.zzb(zzd);
                } catch (Throwable e2) {
                    zzpy.zzc("Fail to forward ad response.", e2);
                }
            }
        });
    }

    public zzmk zzd(zzmh com_google_android_gms_internal_zzmh) {
        return zza(this.mContext, this.zzSV, this.zzSU, this.zzST, com_google_android_gms_internal_zzmh);
    }
}
