package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzre;
import com.google.android.gms.internal.zzrr;
import com.google.android.gms.internal.zzru;
import com.google.android.gms.internal.zzrv;
import com.google.android.gms.internal.zzrw;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzst;
import com.google.android.gms.internal.zzsv;
import com.google.android.gms.internal.zztg;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;

public class Tracker extends zzru {
    private final Map<String, String> zzFs = new HashMap();
    private boolean zzabr;
    private final Map<String, String> zzabs = new HashMap();
    private final zzsv zzabt;
    private final zza zzabu;

    private class zza extends zzru {
        final /* synthetic */ Tracker zzabE;
        private long zzabH = -1;
        private boolean zzabI;

        protected zza(Tracker tracker, zzrw com_google_android_gms_internal_zzrw) {
            this.zzabE = tracker;
            super(com_google_android_gms_internal_zzrw);
        }

        protected void zzmr() {
        }

        public synchronized boolean zzmu() {
            boolean z;
            z = this.zzabI;
            this.zzabI = false;
            return z;
        }
    }

    Tracker(zzrw com_google_android_gms_internal_zzrw, String str, zzsv com_google_android_gms_internal_zzsv) {
        super(com_google_android_gms_internal_zzrw);
        if (str != null) {
            this.zzFs.put("&tid", str);
        }
        this.zzFs.put("useSecure", "1");
        this.zzFs.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
        if (com_google_android_gms_internal_zzsv == null) {
            this.zzabt = new zzsv("tracking", zznq());
        } else {
            this.zzabt = com_google_android_gms_internal_zzsv;
        }
        this.zzabu = new zza(this, com_google_android_gms_internal_zzrw);
    }

    private static boolean zza(Entry<String, String> entry) {
        String str = (String) entry.getKey();
        entry.getValue();
        return str.startsWith("&") && str.length() >= 2;
    }

    private static String zzb(Entry<String, String> entry) {
        return !zza((Entry) entry) ? null : ((String) entry.getKey()).substring(1);
    }

    private static void zzb(Map<String, String> map, Map<String, String> map2) {
        zzac.zzw(map2);
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                String zzb = zzb(entry);
                if (zzb != null) {
                    map2.put(zzb, (String) entry.getValue());
                }
            }
        }
    }

    private static void zzc(Map<String, String> map, Map<String, String> map2) {
        zzac.zzw(map2);
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                String zzb = zzb(entry);
                if (!(zzb == null || map2.containsKey(zzb))) {
                    map2.put(zzb, (String) entry.getValue());
                }
            }
        }
    }

    public void enableAdvertisingIdCollection(boolean z) {
        this.zzabr = z;
    }

    public void send(Map<String, String> map) {
        final long currentTimeMillis = zznq().currentTimeMillis();
        if (zzlT().getAppOptOut()) {
            zzbP("AppOptOut is set to true. Not sending Google Analytics hit");
            return;
        }
        final boolean isDryRunEnabled = zzlT().isDryRunEnabled();
        final Map hashMap = new HashMap();
        zzb(this.zzFs, hashMap);
        zzb(map, hashMap);
        final boolean zzg = zztg.zzg((String) this.zzFs.get("useSecure"), true);
        zzc(this.zzabs, hashMap);
        this.zzabs.clear();
        final String str = (String) hashMap.get("t");
        if (TextUtils.isEmpty(str)) {
            zznr().zzg(hashMap, "Missing hit type parameter");
            return;
        }
        final String str2 = (String) hashMap.get("tid");
        if (TextUtils.isEmpty(str2)) {
            zznr().zzg(hashMap, "Missing tracking id parameter");
            return;
        }
        final boolean zzmt = zzmt();
        synchronized (this) {
            if ("screenview".equalsIgnoreCase(str) || "pageview".equalsIgnoreCase(str) || "appview".equalsIgnoreCase(str) || TextUtils.isEmpty(str)) {
                int parseInt = Integer.parseInt((String) this.zzFs.get("&a")) + 1;
                if (parseInt >= Integer.MAX_VALUE) {
                    parseInt = 1;
                }
                this.zzFs.put("&a", Integer.toString(parseInt));
            }
        }
        zznt().zzg(new Runnable(this) {
            final /* synthetic */ Tracker zzabE;

            public void run() {
                boolean z = true;
                if (this.zzabE.zzabu.zzmu()) {
                    hashMap.put("sc", "start");
                }
                zztg.zzd(hashMap, "cid", this.zzabE.zzlT().zzlX());
                String str = (String) hashMap.get("sf");
                if (str != null) {
                    double zza = zztg.zza(str, 100.0d);
                    if (zztg.zza(zza, (String) hashMap.get("cid"))) {
                        this.zzabE.zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(zza));
                        return;
                    }
                }
                zzrr zzb = this.zzabE.zznx();
                if (zzmt) {
                    zztg.zzb(hashMap, "ate", zzb.zzmV());
                    zztg.zzc(hashMap, "adid", zzb.zznf());
                } else {
                    hashMap.remove("ate");
                    hashMap.remove("adid");
                }
                zzre zznX = this.zzabE.zzny().zznX();
                zztg.zzc(hashMap, "an", zznX.zzmx());
                zztg.zzc(hashMap, "av", zznX.zzmy());
                zztg.zzc(hashMap, "aid", zznX.zzjI());
                zztg.zzc(hashMap, "aiid", zznX.zzmz());
                hashMap.put("v", "1");
                hashMap.put("_v", zzrv.zzacP);
                zztg.zzc(hashMap, "ul", this.zzabE.zznz().zzpb().getLanguage());
                zztg.zzc(hashMap, "sr", this.zzabE.zznz().zzpc());
                boolean z2 = str.equals("transaction") || str.equals("item");
                if (z2 || this.zzabE.zzabt.zzpv()) {
                    long zzce = zztg.zzce((String) hashMap.get("ht"));
                    if (zzce == 0) {
                        zzce = currentTimeMillis;
                    }
                    if (isDryRunEnabled) {
                        this.zzabE.zznr().zzc("Dry run enabled. Would have sent hit", new zzst(this.zzabE, hashMap, zzce, zzg));
                        return;
                    }
                    String str2 = (String) hashMap.get("cid");
                    Map hashMap = new HashMap();
                    zztg.zza(hashMap, "uid", hashMap);
                    zztg.zza(hashMap, "an", hashMap);
                    zztg.zza(hashMap, "aid", hashMap);
                    zztg.zza(hashMap, "av", hashMap);
                    zztg.zza(hashMap, "aiid", hashMap);
                    String str3 = str2;
                    if (TextUtils.isEmpty((CharSequence) hashMap.get("adid"))) {
                        z = false;
                    }
                    hashMap.put("_s", String.valueOf(this.zzabE.zzlZ().zza(new zzry(0, str2, str3, z, 0, hashMap))));
                    this.zzabE.zzlZ().zza(new zzst(this.zzabE, hashMap, zzce, zzg));
                    return;
                }
                this.zzabE.zznr().zzg(hashMap, "Too many hits sent too quickly, rate limiting invoked");
            }
        });
    }

    public void set(String str, String str2) {
        zzac.zzb((Object) str, (Object) "Key should be non-null");
        if (!TextUtils.isEmpty(str)) {
            this.zzFs.put(str, str2);
        }
    }

    protected void zzmr() {
        this.zzabu.initialize();
        String zzmx = zzma().zzmx();
        if (zzmx != null) {
            set("&an", zzmx);
        }
        zzmx = zzma().zzmy();
        if (zzmx != null) {
            set("&av", zzmx);
        }
    }

    boolean zzmt() {
        return this.zzabr;
    }
}
