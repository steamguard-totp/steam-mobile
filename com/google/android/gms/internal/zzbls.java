package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public class zzbls implements com.google.android.gms.internal.zzbll.zza, zzblr {
    static final /* synthetic */ boolean $assertionsDisabled = (!zzbls.class.desiredAssertionStatus());
    private static long zzbZj = 0;
    private final ScheduledExecutorService zzbYl;
    private final zzbop zzbYx;
    private final com.google.android.gms.internal.zzblr.zza zzbZC;
    private String zzbZD;
    private HashSet<String> zzbZE = new HashSet();
    private boolean zzbZF = true;
    private long zzbZG;
    private zzbll zzbZH;
    private zzb zzbZI = zzb.Disconnected;
    private long zzbZJ = 0;
    private long zzbZK = 0;
    private Map<Long, zza> zzbZL;
    private List<zzd> zzbZM;
    private Map<Long, zzf> zzbZN;
    private Map<zzc, zze> zzbZO;
    private String zzbZP;
    private boolean zzbZQ;
    private final zzbln zzbZR;
    private final zzblw zzbZS;
    private String zzbZT;
    private long zzbZU = 0;
    private int zzbZV = 0;
    private ScheduledFuture<?> zzbZW = null;
    private long zzbZX;
    private boolean zzbZY;
    private final zzblp zzbZk;
    private final zzblm zzbZv;

    private interface zza {
        void zzaz(Map<String, Object> map);
    }

    private enum zzb {
        Disconnected,
        GettingToken,
        Connecting,
        Authenticating,
        Connected
    }

    private static class zzc {
        private final List<String> zzcao;
        private final Map<String, Object> zzcap;

        public zzc(List<String> list, Map<String, Object> map) {
            this.zzcao = list;
            this.zzcap = map;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc com_google_android_gms_internal_zzbls_zzc = (zzc) obj;
            return this.zzcao.equals(com_google_android_gms_internal_zzbls_zzc.zzcao) ? this.zzcap.equals(com_google_android_gms_internal_zzbls_zzc.zzcap) : false;
        }

        public int hashCode() {
            return (this.zzcao.hashCode() * 31) + this.zzcap.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(zzblo.zzT(this.zzcao));
            String valueOf2 = String.valueOf(this.zzcap);
            return new StringBuilder((String.valueOf(valueOf).length() + 11) + String.valueOf(valueOf2).length()).append(valueOf).append(" (params: ").append(valueOf2).append(")").toString();
        }
    }

    private static class zzd {
        private final Object data;
        private final List<String> zzcao;
        private final String zzcaq;
        private final zzblu zzcar;

        private zzd(String str, List<String> list, Object obj, zzblu com_google_android_gms_internal_zzblu) {
            this.zzcaq = str;
            this.zzcao = list;
            this.data = obj;
            this.zzcar = com_google_android_gms_internal_zzblu;
        }

        public String getAction() {
            return this.zzcaq;
        }

        public Object getData() {
            return this.data;
        }

        public List<String> zzWe() {
            return this.zzcao;
        }

        public zzblu zzWf() {
            return this.zzcar;
        }
    }

    private static class zze {
        private final zzblu zzcas;
        private final zzc zzcat;
        private final zzblq zzcau;
        private final Long zzcav;

        private zze(zzblu com_google_android_gms_internal_zzblu, zzc com_google_android_gms_internal_zzbls_zzc, Long l, zzblq com_google_android_gms_internal_zzblq) {
            this.zzcas = com_google_android_gms_internal_zzblu;
            this.zzcat = com_google_android_gms_internal_zzbls_zzc;
            this.zzcau = com_google_android_gms_internal_zzblq;
            this.zzcav = l;
        }

        public String toString() {
            String valueOf = String.valueOf(this.zzcat.toString());
            String valueOf2 = String.valueOf(this.zzcav);
            return new StringBuilder((String.valueOf(valueOf).length() + 8) + String.valueOf(valueOf2).length()).append(valueOf).append(" (Tag: ").append(valueOf2).append(")").toString();
        }

        public zzc zzWg() {
            return this.zzcat;
        }

        public Long zzWh() {
            return this.zzcav;
        }

        public zzblq zzWi() {
            return this.zzcau;
        }
    }

    private static class zzf {
        private String zzcaq;
        private zzblu zzcar;
        private Map<String, Object> zzcaw;
        private boolean zzcax;

        private zzf(String str, Map<String, Object> map, zzblu com_google_android_gms_internal_zzblu) {
            this.zzcaq = str;
            this.zzcaw = map;
            this.zzcar = com_google_android_gms_internal_zzblu;
        }

        public String getAction() {
            return this.zzcaq;
        }

        public zzblu zzWf() {
            return this.zzcar;
        }

        public Map<String, Object> zzWj() {
            return this.zzcaw;
        }

        public void zzWk() {
            this.zzcax = true;
        }

        public boolean zzWl() {
            return this.zzcax;
        }
    }

    public zzbls(zzbln com_google_android_gms_internal_zzbln, zzblp com_google_android_gms_internal_zzblp, com.google.android.gms.internal.zzblr.zza com_google_android_gms_internal_zzblr_zza) {
        this.zzbZC = com_google_android_gms_internal_zzblr_zza;
        this.zzbZR = com_google_android_gms_internal_zzbln;
        this.zzbYl = com_google_android_gms_internal_zzbln.zzVJ();
        this.zzbZv = com_google_android_gms_internal_zzbln.zzVI();
        this.zzbZk = com_google_android_gms_internal_zzblp;
        this.zzbZO = new HashMap();
        this.zzbZL = new HashMap();
        this.zzbZN = new HashMap();
        this.zzbZM = new ArrayList();
        this.zzbZS = new com.google.android.gms.internal.zzblw.zza(this.zzbYl, com_google_android_gms_internal_zzbln.zzVH(), "ConnectionRetryHelper").zzaI(1000).zzj(1.3d).zzaJ(30000).zzk(0.7d).zzWy();
        long j = zzbZj;
        zzbZj = 1 + j;
        this.zzbYx = new zzbop(com_google_android_gms_internal_zzbln.zzVH(), "PersistentConnection", "pc_" + j);
        this.zzbZT = null;
        zzWc();
    }

    private boolean isIdle() {
        return this.zzbZO.isEmpty() && this.zzbZL.isEmpty() && !this.zzbZY && this.zzbZN.isEmpty();
    }

    private Collection<zze> zzU(List<String> list) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String valueOf = String.valueOf(list);
            com_google_android_gms_internal_zzbop.zzi(new StringBuilder(String.valueOf(valueOf).length() + 29).append("removing all listens at path ").append(valueOf).toString(), new Object[0]);
        }
        Collection<zze> arrayList = new ArrayList();
        for (Entry entry : this.zzbZO.entrySet()) {
            zzc com_google_android_gms_internal_zzbls_zzc = (zzc) entry.getKey();
            zze com_google_android_gms_internal_zzbls_zze = (zze) entry.getValue();
            if (com_google_android_gms_internal_zzbls_zzc.zzcao.equals(list)) {
                arrayList.add(com_google_android_gms_internal_zzbls_zze);
            }
        }
        for (zze com_google_android_gms_internal_zzbls_zze2 : arrayList) {
            this.zzbZO.remove(com_google_android_gms_internal_zzbls_zze2.zzWg());
        }
        zzWc();
        return arrayList;
    }

    private void zzV(List<String> list) {
        for (zze zzd : zzU(list)) {
            zzd.zzcas.zzan("permission_denied", null);
        }
    }

    private boolean zzVQ() {
        return this.zzbZI == zzb.Authenticating || this.zzbZI == zzb.Connected;
    }

    private boolean zzVR() {
        return this.zzbZI == zzb.Connected;
    }

    private void zzVT() {
        if (zzVS()) {
            zzblo.zzc(this.zzbZI == zzb.Disconnected, "Not in disconnected state: %s", this.zzbZI);
            final boolean z = this.zzbZQ;
            this.zzbYx.zzi("Scheduling connection attempt", new Object[0]);
            this.zzbZQ = false;
            this.zzbZS.zzr(new Runnable(this) {
                final /* synthetic */ zzbls zzcaa;

                public void run() {
                    this.zzcaa.zzbYx.zzi("Trying to fetch auth token", new Object[0]);
                    zzblo.zzc(this.zzcaa.zzbZI == zzb.Disconnected, "Not in disconnected state: %s", this.zzcaa.zzbZI);
                    this.zzcaa.zzbZI = zzb.GettingToken;
                    this.zzcaa.zzbZU = 1 + this.zzcaa.zzbZU;
                    final long zzd = this.zzcaa.zzbZU;
                    this.zzcaa.zzbZv.zza(z, new com.google.android.gms.internal.zzblm.zza(this) {
                        final /* synthetic */ AnonymousClass1 zzcac;

                        public void onError(String str) {
                            if (zzd == this.zzcac.zzcaa.zzbZU) {
                                this.zzcac.zzcaa.zzbZI = zzb.Disconnected;
                                zzbop zza = this.zzcac.zzcaa.zzbYx;
                                String str2 = "Error fetching token: ";
                                String valueOf = String.valueOf(str);
                                zza.zzi(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), new Object[0]);
                                this.zzcac.zzcaa.zzVT();
                                return;
                            }
                            this.zzcac.zzcaa.zzbYx.zzi("Ignoring getToken error, because this was not the latest attempt.", new Object[0]);
                        }

                        public void zziM(String str) {
                            if (zzd != this.zzcac.zzcaa.zzbZU) {
                                this.zzcac.zzcaa.zzbYx.zzi("Ignoring getToken result, because this was not the latest attempt.", new Object[0]);
                            } else if (this.zzcac.zzcaa.zzbZI == zzb.GettingToken) {
                                this.zzcac.zzcaa.zzbYx.zzi("Successfully fetched token, opening connection", new Object[0]);
                                this.zzcac.zzcaa.zziP(str);
                            } else {
                                zzblo.zzc(this.zzcac.zzcaa.zzbZI == zzb.Disconnected, "Expected connection state disconnected, but was %s", this.zzcac.zzcaa.zzbZI);
                                this.zzcac.zzcaa.zzbYx.zzi("Not opening connection after token refresh, because connection was set to disconnected", new Object[0]);
                            }
                        }
                    });
                }
            });
        }
    }

    private void zzVU() {
        Iterator it = this.zzbZN.entrySet().iterator();
        while (it.hasNext()) {
            zzf com_google_android_gms_internal_zzbls_zzf = (zzf) ((Entry) it.next()).getValue();
            if (com_google_android_gms_internal_zzbls_zzf.zzWj().containsKey("h") && com_google_android_gms_internal_zzbls_zzf.zzWl()) {
                com_google_android_gms_internal_zzbls_zzf.zzWf().zzan("disconnected", null);
                it.remove();
            }
        }
    }

    private void zzVV() {
        zzaY(false);
    }

    private void zzVW() {
        zzaY(true);
    }

    private void zzVX() {
        zzblo.zzc(zzVQ(), "Must be connected to send unauth.", new Object[0]);
        zzblo.zzc(this.zzbZP == null, "Auth token must not be set.", new Object[0]);
        zza("unauth", Collections.emptyMap(), null);
    }

    private void zzVY() {
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("calling restore state", new Object[0]);
        }
        zzblo.zzc(this.zzbZI == zzb.Connecting, "Wanted to restore auth, but was in wrong state: %s", this.zzbZI);
        if (this.zzbZP == null) {
            if (this.zzbYx.zzYT()) {
                this.zzbYx.zzi("Not restoring auth because token is null.", new Object[0]);
            }
            this.zzbZI = zzb.Connected;
            zzVZ();
            return;
        }
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("Restoring auth.", new Object[0]);
        }
        this.zzbZI = zzb.Authenticating;
        zzVW();
    }

    private void zzVZ() {
        zzblo.zzc(this.zzbZI == zzb.Connected, "Should be connected if we're restoring state, but we are: %s", this.zzbZI);
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("Restoring outstanding listens", new Object[0]);
        }
        for (zze com_google_android_gms_internal_zzbls_zze : this.zzbZO.values()) {
            if (this.zzbYx.zzYT()) {
                zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
                String valueOf = String.valueOf(com_google_android_gms_internal_zzbls_zze.zzWg());
                com_google_android_gms_internal_zzbop.zzi(new StringBuilder(String.valueOf(valueOf).length() + 17).append("Restoring listen ").append(valueOf).toString(), new Object[0]);
            }
            zzb(com_google_android_gms_internal_zzbls_zze);
        }
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("Restoring writes.", new Object[0]);
        }
        Object arrayList = new ArrayList(this.zzbZN.keySet());
        Collections.sort(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zzaF(((Long) it.next()).longValue());
        }
        for (zzd com_google_android_gms_internal_zzbls_zzd : this.zzbZM) {
            zza(com_google_android_gms_internal_zzbls_zzd.getAction(), com_google_android_gms_internal_zzbls_zzd.zzWe(), com_google_android_gms_internal_zzbls_zzd.getData(), com_google_android_gms_internal_zzbls_zzd.zzWf());
        }
        this.zzbZM.clear();
    }

    private void zzWa() {
        Map hashMap = new HashMap();
        String str;
        String valueOf;
        if (zzbpv.zzZW()) {
            if (this.zzbZR.zzVK()) {
                hashMap.put("persistence.android.enabled", Integer.valueOf(1));
            }
            str = "sdk.android.";
            valueOf = String.valueOf(this.zzbZR.zzVL().replace('.', '-'));
            hashMap.put(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), Integer.valueOf(1));
        } else if ($assertionsDisabled || !this.zzbZR.zzVK()) {
            str = "sdk.java.";
            valueOf = String.valueOf(this.zzbZR.zzVL().replace('.', '-'));
            hashMap.put(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), Integer.valueOf(1));
        } else {
            throw new AssertionError("Stats for persistence on JVM missing (persistence not yet supported)");
        }
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("Sending first connection stats", new Object[0]);
        }
        zzay(hashMap);
    }

    private long zzWb() {
        long j = this.zzbZK;
        this.zzbZK = 1 + j;
        return j;
    }

    private void zzWc() {
        boolean z = false;
        if (isIdle()) {
            if (this.zzbZW != null) {
                this.zzbZW.cancel(false);
            }
            this.zzbZW = this.zzbYl.schedule(new Runnable(this) {
                final /* synthetic */ zzbls zzcaa;

                {
                    this.zzcaa = r1;
                }

                public void run() {
                    this.zzcaa.zzbZW = null;
                    if (this.zzcaa.zzWd()) {
                        this.zzcaa.interrupt("connection_idle");
                    } else {
                        this.zzcaa.zzWc();
                    }
                }
            }, 60000, TimeUnit.MILLISECONDS);
        } else if (isInterrupted("connection_idle")) {
            if (!isIdle()) {
                z = true;
            }
            zzblo.zzaW(z);
            resume("connection_idle");
        }
    }

    private boolean zzWd() {
        return isIdle() && System.currentTimeMillis() > this.zzbZX + 60000;
    }

    private zze zza(zzc com_google_android_gms_internal_zzbls_zzc) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbls_zzc);
            com_google_android_gms_internal_zzbop.zzi(new StringBuilder(String.valueOf(valueOf).length() + 15).append("removing query ").append(valueOf).toString(), new Object[0]);
        }
        if (this.zzbZO.containsKey(com_google_android_gms_internal_zzbls_zzc)) {
            zze com_google_android_gms_internal_zzbls_zze = (zze) this.zzbZO.get(com_google_android_gms_internal_zzbls_zzc);
            this.zzbZO.remove(com_google_android_gms_internal_zzbls_zzc);
            zzWc();
            return com_google_android_gms_internal_zzbls_zze;
        }
        if (this.zzbYx.zzYT()) {
            com_google_android_gms_internal_zzbop = this.zzbYx;
            valueOf = String.valueOf(com_google_android_gms_internal_zzbls_zzc);
            com_google_android_gms_internal_zzbop.zzi(new StringBuilder(String.valueOf(valueOf).length() + 64).append("Trying to remove listener for QuerySpec ").append(valueOf).append(" but no listener exists.").toString(), new Object[0]);
        }
        return null;
    }

    private Map<String, Object> zza(List<String> list, Object obj, String str) {
        Map<String, Object> hashMap = new HashMap();
        hashMap.put("p", zzblo.zzT(list));
        hashMap.put("d", obj);
        if (str != null) {
            hashMap.put("h", str);
        }
        return hashMap;
    }

    private void zza(zze com_google_android_gms_internal_zzbls_zze) {
        Map hashMap = new HashMap();
        hashMap.put("p", zzblo.zzT(com_google_android_gms_internal_zzbls_zze.zzcat.zzcao));
        Long zzWh = com_google_android_gms_internal_zzbls_zze.zzWh();
        if (zzWh != null) {
            hashMap.put("q", com_google_android_gms_internal_zzbls_zze.zzWg().zzcap);
            hashMap.put("t", zzWh);
        }
        zza("n", hashMap, null);
    }

    private void zza(String str, List<String> list, Object obj, final zzblu com_google_android_gms_internal_zzblu) {
        Map hashMap = new HashMap();
        hashMap.put("p", zzblo.zzT(list));
        hashMap.put("d", obj);
        zza(str, hashMap, new zza(this) {
            public void zzaz(Map<String, Object> map) {
                String str = null;
                String str2 = (String) map.get("s");
                if (str2.equals("ok")) {
                    str2 = null;
                } else {
                    str = (String) map.get("d");
                }
                if (com_google_android_gms_internal_zzblu != null) {
                    com_google_android_gms_internal_zzblu.zzan(str2, str);
                }
            }
        });
    }

    private void zza(String str, List<String> list, Object obj, String str2, zzblu com_google_android_gms_internal_zzblu) {
        Map zza = zza((List) list, obj, str2);
        long j = this.zzbZJ;
        this.zzbZJ = 1 + j;
        this.zzbZN.put(Long.valueOf(j), new zzf(str, zza, com_google_android_gms_internal_zzblu));
        if (zzVR()) {
            zzaF(j);
        }
        this.zzbZX = System.currentTimeMillis();
        zzWc();
    }

    private void zza(String str, Map<String, Object> map, zza com_google_android_gms_internal_zzbls_zza) {
        zza(str, false, (Map) map, com_google_android_gms_internal_zzbls_zza);
    }

    private void zza(String str, boolean z, Map<String, Object> map, zza com_google_android_gms_internal_zzbls_zza) {
        long zzWb = zzWb();
        Map hashMap = new HashMap();
        hashMap.put("r", Long.valueOf(zzWb));
        hashMap.put("a", str);
        hashMap.put("b", map);
        this.zzbZH.zza(hashMap, z);
        this.zzbZL.put(Long.valueOf(zzWb), com_google_android_gms_internal_zzbls_zza);
    }

    private void zza(List<String> list, zzc com_google_android_gms_internal_zzbls_zzc) {
        if (list.contains("no_index")) {
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbls_zzc.zzcap.get("i"));
            valueOf = new StringBuilder(String.valueOf(valueOf).length() + 14).append("\".indexOn\": \"").append(valueOf).append("\"").toString();
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String valueOf2 = String.valueOf(zzblo.zzT(com_google_android_gms_internal_zzbls_zzc.zzcao));
            com_google_android_gms_internal_zzbop.warn(new StringBuilder((String.valueOf(valueOf).length() + 118) + String.valueOf(valueOf2).length()).append("Using an unspecified index. Consider adding '").append(valueOf).append("' at ").append(valueOf2).append(" to your security and Firebase Database rules for better performance").toString());
        }
    }

    private void zzaE(long j) {
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("handling timestamp", new Object[0]);
        }
        long currentTimeMillis = j - System.currentTimeMillis();
        Map hashMap = new HashMap();
        hashMap.put("serverTimeOffset", Long.valueOf(currentTimeMillis));
        this.zzbZC.zzaw(hashMap);
    }

    private void zzaF(long j) {
        if ($assertionsDisabled || zzVR()) {
            final zzf com_google_android_gms_internal_zzbls_zzf = (zzf) this.zzbZN.get(Long.valueOf(j));
            final zzblu zzWf = com_google_android_gms_internal_zzbls_zzf.zzWf();
            final String action = com_google_android_gms_internal_zzbls_zzf.getAction();
            com_google_android_gms_internal_zzbls_zzf.zzWk();
            final long j2 = j;
            zza(action, com_google_android_gms_internal_zzbls_zzf.zzWj(), new zza(this) {
                final /* synthetic */ zzbls zzcaa;

                public void zzaz(Map<String, Object> map) {
                    if (this.zzcaa.zzbYx.zzYT()) {
                        zzbop zza = this.zzcaa.zzbYx;
                        String str = action;
                        String valueOf = String.valueOf(map);
                        zza.zzi(new StringBuilder((String.valueOf(str).length() + 11) + String.valueOf(valueOf).length()).append(str).append(" response: ").append(valueOf).toString(), new Object[0]);
                    }
                    if (((zzf) this.zzcaa.zzbZN.get(Long.valueOf(j2))) == com_google_android_gms_internal_zzbls_zzf) {
                        this.zzcaa.zzbZN.remove(Long.valueOf(j2));
                        if (zzWf != null) {
                            String str2 = (String) map.get("s");
                            if (str2.equals("ok")) {
                                zzWf.zzan(null, null);
                            } else {
                                zzWf.zzan(str2, (String) map.get("d"));
                            }
                        }
                    } else if (this.zzcaa.zzbYx.zzYT()) {
                        this.zzcaa.zzbYx.zzi("Ignoring on complete for put " + j2 + " because it was removed already.", new Object[0]);
                    }
                    this.zzcaa.zzWc();
                }
            });
            return;
        }
        throw new AssertionError("sendPut called when we can't send writes (we're disconnected or writes are paused).");
    }

    private void zzaY(final boolean z) {
        zzblo.zzc(zzVQ(), "Must be connected to send auth, but was: %s", this.zzbZI);
        zzblo.zzc(this.zzbZP != null, "Auth token must be set to authenticate!", new Object[0]);
        zza anonymousClass3 = new zza(this) {
            final /* synthetic */ zzbls zzcaa;

            public void zzaz(Map<String, Object> map) {
                this.zzcaa.zzbZI = zzb.Connected;
                String str = (String) map.get("s");
                if (str.equals("ok")) {
                    this.zzcaa.zzbZV = 0;
                    this.zzcaa.zzbZC.zzaX(true);
                    if (z) {
                        this.zzcaa.zzVZ();
                        return;
                    }
                    return;
                }
                this.zzcaa.zzbZP = null;
                this.zzcaa.zzbZQ = true;
                this.zzcaa.zzbZC.zzaX(false);
                String str2 = (String) map.get("d");
                this.zzcaa.zzbYx.zzi(new StringBuilder((String.valueOf(str).length() + 26) + String.valueOf(str2).length()).append("Authentication failed: ").append(str).append(" (").append(str2).append(")").toString(), new Object[0]);
                this.zzcaa.zzbZH.close();
                if (str.equals("invalid_token")) {
                    this.zzcaa.zzbZV = this.zzcaa.zzbZV + 1;
                    if (((long) this.zzcaa.zzbZV) >= 3) {
                        this.zzcaa.zzbZS.zzWx();
                        this.zzcaa.zzbYx.warn("Provided authentication credentials are invalid. This usually indicates your FirebaseApp instance was not initialized correctly. Make sure your google-services.json file has the correct firebase_url and api_key. You can re-download google-services.json from https://console.firebase.google.com/.");
                    }
                }
            }
        };
        Map hashMap = new HashMap();
        zzbpw zzje = zzbpw.zzje(this.zzbZP);
        if (zzje != null) {
            hashMap.put("cred", zzje.getToken());
            if (zzje.zzZX() != null) {
                hashMap.put("authvar", zzje.zzZX());
            }
            zza("gauth", true, hashMap, anonymousClass3);
            return;
        }
        hashMap.put("cred", this.zzbZP);
        zza("auth", true, hashMap, anonymousClass3);
    }

    private void zzam(String str, String str2) {
        this.zzbYx.warn(new StringBuilder((String.valueOf(str).length() + 23) + String.valueOf(str2).length()).append("Auth token revoked: ").append(str).append(" (").append(str2).append(")").toString());
        this.zzbZP = null;
        this.zzbZQ = true;
        this.zzbZC.zzaX(false);
        this.zzbZH.close();
    }

    private void zzax(Map<String, Object> map) {
        this.zzbYx.info((String) map.get("msg"));
    }

    private void zzay(Map<String, Integer> map) {
        if (!map.isEmpty()) {
            Map hashMap = new HashMap();
            hashMap.put("c", map);
            zza("s", hashMap, new zza(this) {
                final /* synthetic */ zzbls zzcaa;

                {
                    this.zzcaa = r1;
                }

                public void zzaz(Map<String, Object> map) {
                    String str = (String) map.get("s");
                    if (!str.equals("ok")) {
                        String str2 = (String) map.get("d");
                        if (this.zzcaa.zzbYx.zzYT()) {
                            this.zzcaa.zzbYx.zzi(new StringBuilder((String.valueOf(str).length() + 34) + String.valueOf(str2).length()).append("Failed to send stats: ").append(str).append(" (message: ").append(str2).append(")").toString(), new Object[0]);
                        }
                    }
                }
            });
        } else if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("Not sending stats because stats are empty", new Object[0]);
        }
    }

    private void zzb(final zze com_google_android_gms_internal_zzbls_zze) {
        Map hashMap = new HashMap();
        hashMap.put("p", zzblo.zzT(com_google_android_gms_internal_zzbls_zze.zzWg().zzcao));
        Long zzWh = com_google_android_gms_internal_zzbls_zze.zzWh();
        if (zzWh != null) {
            hashMap.put("q", com_google_android_gms_internal_zzbls_zze.zzcat.zzcap);
            hashMap.put("t", zzWh);
        }
        zzblq zzWi = com_google_android_gms_internal_zzbls_zze.zzWi();
        hashMap.put("h", zzWi.zzVM());
        if (zzWi.zzVN()) {
            zzblk zzVO = zzWi.zzVO();
            List arrayList = new ArrayList();
            for (List zzT : zzVO.zzVF()) {
                arrayList.add(zzblo.zzT(zzT));
            }
            Map hashMap2 = new HashMap();
            hashMap2.put("hs", zzVO.zzVG());
            hashMap2.put("ps", arrayList);
            hashMap.put("ch", hashMap2);
        }
        zza("q", hashMap, new zza(this) {
            final /* synthetic */ zzbls zzcaa;

            public void zzaz(Map<String, Object> map) {
                String str = (String) map.get("s");
                if (str.equals("ok")) {
                    Map map2 = (Map) map.get("d");
                    if (map2.containsKey("w")) {
                        this.zzcaa.zza((List) map2.get("w"), com_google_android_gms_internal_zzbls_zze.zzcat);
                    }
                }
                if (((zze) this.zzcaa.zzbZO.get(com_google_android_gms_internal_zzbls_zze.zzWg())) != com_google_android_gms_internal_zzbls_zze) {
                    return;
                }
                if (str.equals("ok")) {
                    com_google_android_gms_internal_zzbls_zze.zzcas.zzan(null, null);
                    return;
                }
                this.zzcaa.zza(com_google_android_gms_internal_zzbls_zze.zzWg());
                com_google_android_gms_internal_zzbls_zze.zzcas.zzan(str, (String) map.get("d"));
            }
        });
    }

    private void zzk(String str, Map<String, Object> map) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String valueOf = String.valueOf(map);
            com_google_android_gms_internal_zzbop.zzi(new StringBuilder((String.valueOf(str).length() + 22) + String.valueOf(valueOf).length()).append("handleServerMessage: ").append(str).append(" ").append(valueOf).toString(), new Object[0]);
        }
        String str2;
        zzbop com_google_android_gms_internal_zzbop2;
        String str3;
        if (str.equals("d") || str.equals("m")) {
            boolean equals = str.equals("m");
            str2 = (String) map.get("p");
            Object obj = map.get("d");
            Long zzao = zzblo.zzao(map.get("t"));
            if (!equals || !(obj instanceof Map) || ((Map) obj).size() != 0) {
                this.zzbZC.zza(zzblo.zziN(str2), obj, equals, zzao);
            } else if (this.zzbYx.zzYT()) {
                com_google_android_gms_internal_zzbop2 = this.zzbYx;
                str3 = "ignoring empty merge for path ";
                str2 = String.valueOf(str2);
                com_google_android_gms_internal_zzbop2.zzi(str2.length() != 0 ? str3.concat(str2) : new String(str3), new Object[0]);
            }
        } else if (str.equals("rm")) {
            str2 = (String) map.get("p");
            List zziN = zzblo.zziN(str2);
            Object obj2 = map.get("d");
            Long zzao2 = zzblo.zzao(map.get("t"));
            List<Map> list = (List) obj2;
            List arrayList = new ArrayList();
            for (Map map2 : list) {
                str3 = (String) map2.get("s");
                String str4 = (String) map2.get("e");
                arrayList.add(new zzblt(str3 != null ? zzblo.zziN(str3) : null, str4 != null ? zzblo.zziN(str4) : null, map2.get("m")));
            }
            if (!arrayList.isEmpty()) {
                this.zzbZC.zza(zziN, arrayList, zzao2);
            } else if (this.zzbYx.zzYT()) {
                com_google_android_gms_internal_zzbop2 = this.zzbYx;
                str3 = "Ignoring empty range merge for path ";
                str2 = String.valueOf(str2);
                com_google_android_gms_internal_zzbop2.zzi(str2.length() != 0 ? str3.concat(str2) : new String(str3), new Object[0]);
            }
        } else if (str.equals("c")) {
            zzV(zzblo.zziN((String) map.get("p")));
        } else if (str.equals("ac")) {
            zzam((String) map.get("s"), (String) map.get("d"));
        } else if (str.equals("sd")) {
            zzax(map);
        } else if (this.zzbYx.zzYT()) {
            com_google_android_gms_internal_zzbop2 = this.zzbYx;
            str3 = "Unrecognized action from server: ";
            str2 = String.valueOf(str);
            com_google_android_gms_internal_zzbop2.zzi(str2.length() != 0 ? str3.concat(str2) : new String(str3), new Object[0]);
        }
    }

    public void initialize() {
        zzVT();
    }

    public void interrupt(String str) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String str2 = "Connection interrupted for: ";
            String valueOf = String.valueOf(str);
            com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), new Object[0]);
        }
        this.zzbZE.add(str);
        if (this.zzbZH != null) {
            this.zzbZH.close();
            this.zzbZH = null;
        } else {
            this.zzbZS.cancel();
            this.zzbZI = zzb.Disconnected;
        }
        this.zzbZS.zzUk();
    }

    public boolean isInterrupted(String str) {
        return this.zzbZE.contains(str);
    }

    public void purgeOutstandingWrites() {
        for (zzf com_google_android_gms_internal_zzbls_zzf : this.zzbZN.values()) {
            if (com_google_android_gms_internal_zzbls_zzf.zzcar != null) {
                com_google_android_gms_internal_zzbls_zzf.zzcar.zzan("write_canceled", null);
            }
        }
        for (zzd com_google_android_gms_internal_zzbls_zzd : this.zzbZM) {
            if (com_google_android_gms_internal_zzbls_zzd.zzcar != null) {
                com_google_android_gms_internal_zzbls_zzd.zzcar.zzan("write_canceled", null);
            }
        }
        this.zzbZN.clear();
        this.zzbZM.clear();
        if (!zzVQ()) {
            this.zzbZY = false;
        }
        zzWc();
    }

    public void refreshAuthToken() {
        this.zzbYx.zzi("Auth token refresh requested", new Object[0]);
        interrupt("token_refresh");
        resume("token_refresh");
    }

    public void resume(String str) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String str2 = "Connection no longer interrupted for: ";
            String valueOf = String.valueOf(str);
            com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), new Object[0]);
        }
        this.zzbZE.remove(str);
        if (zzVS() && this.zzbZI == zzb.Disconnected) {
            zzVT();
        }
    }

    public void shutdown() {
        interrupt("shutdown");
    }

    boolean zzVS() {
        return this.zzbZE.size() == 0;
    }

    public void zza(List<String> list, zzblu com_google_android_gms_internal_zzblu) {
        if (zzVR()) {
            zza("oc", (List) list, null, com_google_android_gms_internal_zzblu);
        } else {
            this.zzbZM.add(new zzd("oc", list, null, com_google_android_gms_internal_zzblu));
        }
        zzWc();
    }

    public void zza(List<String> list, Object obj, zzblu com_google_android_gms_internal_zzblu) {
        zza("p", (List) list, obj, null, com_google_android_gms_internal_zzblu);
    }

    public void zza(List<String> list, Object obj, String str, zzblu com_google_android_gms_internal_zzblu) {
        zza("p", (List) list, obj, str, com_google_android_gms_internal_zzblu);
    }

    public void zza(List<String> list, Map<String, Object> map) {
        zzc com_google_android_gms_internal_zzbls_zzc = new zzc(list, map);
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbls_zzc);
            com_google_android_gms_internal_zzbop.zzi(new StringBuilder(String.valueOf(valueOf).length() + 15).append("unlistening on ").append(valueOf).toString(), new Object[0]);
        }
        zze zza = zza(com_google_android_gms_internal_zzbls_zzc);
        if (zza != null && zzVQ()) {
            zza(zza);
        }
        zzWc();
    }

    public void zza(List<String> list, Map<String, Object> map, zzblq com_google_android_gms_internal_zzblq, Long l, zzblu com_google_android_gms_internal_zzblu) {
        zzc com_google_android_gms_internal_zzbls_zzc = new zzc(list, map);
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbls_zzc);
            com_google_android_gms_internal_zzbop.zzi(new StringBuilder(String.valueOf(valueOf).length() + 13).append("Listening on ").append(valueOf).toString(), new Object[0]);
        }
        zzblo.zzc(!this.zzbZO.containsKey(com_google_android_gms_internal_zzbls_zzc), "listen() called twice for same QuerySpec.", new Object[0]);
        if (this.zzbYx.zzYT()) {
            com_google_android_gms_internal_zzbop = this.zzbYx;
            valueOf = String.valueOf(com_google_android_gms_internal_zzbls_zzc);
            com_google_android_gms_internal_zzbop.zzi(new StringBuilder(String.valueOf(valueOf).length() + 21).append("Adding listen query: ").append(valueOf).toString(), new Object[0]);
        }
        zze com_google_android_gms_internal_zzbls_zze = new zze(com_google_android_gms_internal_zzblu, com_google_android_gms_internal_zzbls_zzc, l, com_google_android_gms_internal_zzblq);
        this.zzbZO.put(com_google_android_gms_internal_zzbls_zzc, com_google_android_gms_internal_zzbls_zze);
        if (zzVQ()) {
            zzb(com_google_android_gms_internal_zzbls_zze);
        }
        zzWc();
    }

    public void zza(List<String> list, Map<String, Object> map, zzblu com_google_android_gms_internal_zzblu) {
        zza("m", (List) list, (Object) map, null, com_google_android_gms_internal_zzblu);
    }

    public void zzat(Map<String, Object> map) {
        if (map.containsKey("r")) {
            zza com_google_android_gms_internal_zzbls_zza = (zza) this.zzbZL.remove(Long.valueOf((long) ((Integer) map.get("r")).intValue()));
            if (com_google_android_gms_internal_zzbls_zza != null) {
                com_google_android_gms_internal_zzbls_zza.zzaz((Map) map.get("b"));
            }
        } else if (!map.containsKey("error")) {
            if (map.containsKey("a")) {
                zzk((String) map.get("a"), (Map) map.get("b"));
            } else if (this.zzbYx.zzYT()) {
                zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
                String valueOf = String.valueOf(map);
                com_google_android_gms_internal_zzbop.zzi(new StringBuilder(String.valueOf(valueOf).length() + 26).append("Ignoring unknown message: ").append(valueOf).toString(), new Object[0]);
            }
        }
    }

    public void zzb(com.google.android.gms.internal.zzbll.zzb com_google_android_gms_internal_zzbll_zzb) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String str = "Got on disconnect due to ";
            String valueOf = String.valueOf(com_google_android_gms_internal_zzbll_zzb.name());
            com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str.concat(valueOf) : new String(str), new Object[0]);
        }
        this.zzbZI = zzb.Disconnected;
        this.zzbZH = null;
        this.zzbZY = false;
        this.zzbZL.clear();
        zzVU();
        if (zzVS()) {
            boolean z = this.zzbZG > 0 ? System.currentTimeMillis() - this.zzbZG > 30000 : false;
            if (com_google_android_gms_internal_zzbll_zzb == com.google.android.gms.internal.zzbll.zzb.SERVER_RESET || r0) {
                this.zzbZS.zzUk();
            }
            zzVT();
        }
        this.zzbZG = 0;
        this.zzbZC.onDisconnect();
    }

    public void zzb(List<String> list, Object obj, zzblu com_google_android_gms_internal_zzblu) {
        this.zzbZY = true;
        if (zzVR()) {
            zza("o", (List) list, obj, com_google_android_gms_internal_zzblu);
        } else {
            this.zzbZM.add(new zzd("o", list, obj, com_google_android_gms_internal_zzblu));
        }
        zzWc();
    }

    public void zzb(List<String> list, Map<String, Object> map, zzblu com_google_android_gms_internal_zzblu) {
        this.zzbZY = true;
        if (zzVR()) {
            zza("om", (List) list, (Object) map, com_google_android_gms_internal_zzblu);
        } else {
            this.zzbZM.add(new zzd("om", list, map, com_google_android_gms_internal_zzblu));
        }
        zzWc();
    }

    public void zziK(String str) {
        this.zzbZD = str;
    }

    public void zziL(String str) {
        if (this.zzbYx.zzYT()) {
            zzbop com_google_android_gms_internal_zzbop = this.zzbYx;
            String str2 = "Firebase Database connection was forcefully killed by the server. Will not attempt reconnect. Reason: ";
            String valueOf = String.valueOf(str);
            com_google_android_gms_internal_zzbop.zzi(valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2), new Object[0]);
        }
        interrupt("server_kill");
    }

    public void zziO(String str) {
        this.zzbYx.zzi("Auth token refreshed.", new Object[0]);
        this.zzbZP = str;
        if (!zzVQ()) {
            return;
        }
        if (str != null) {
            zzVV();
        } else {
            zzVX();
        }
    }

    public void zziP(String str) {
        zzblo.zzc(this.zzbZI == zzb.GettingToken, "Trying to open network connection while in the wrong state: %s", this.zzbZI);
        if (str == null) {
            this.zzbZC.zzaX(false);
        }
        this.zzbZP = str;
        this.zzbZI = zzb.Connecting;
        this.zzbZH = new zzbll(this.zzbZR, this.zzbZk, this.zzbZD, this, this.zzbZT);
        this.zzbZH.open();
    }

    public void zzj(long j, String str) {
        if (this.zzbYx.zzYT()) {
            this.zzbYx.zzi("onReady", new Object[0]);
        }
        this.zzbZG = System.currentTimeMillis();
        zzaE(j);
        if (this.zzbZF) {
            zzWa();
        }
        zzVY();
        this.zzbZF = false;
        this.zzbZT = str;
        this.zzbZC.zzVP();
    }
}
