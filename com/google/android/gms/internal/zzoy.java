package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.security.NetworkSecurityPolicy;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.zzda.zzb;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Future;

@zzmb
public class zzoy implements zzb, zzpg.zzb {
    private Context mContext;
    private String zzHY;
    private boolean zzTB = true;
    private boolean zzTC = true;
    private boolean zzTD = true;
    private boolean zzTL = false;
    private final String zzVW;
    private final zzoz zzVX;
    private BigInteger zzVY = BigInteger.ONE;
    private final HashSet<zzow> zzVZ = new HashSet();
    private final HashMap<String, zzpb> zzWa = new HashMap();
    private boolean zzWb = false;
    private int zzWc = 0;
    private zzfz zzWd = null;
    private zzdb zzWe = null;
    private String zzWf;
    private String zzWg;
    private Boolean zzWh = null;
    private boolean zzWi = false;
    private boolean zzWj = false;
    private boolean zzWk = false;
    private String zzWl = "";
    private long zzWm = 0;
    private long zzWn = 0;
    private int zzWo = -1;
    private final Object zzrN = new Object();
    private zzcp zzsy;
    private boolean zztW = false;
    private zzqa zztr;
    private zzcz zzxE = null;

    public zzoy(zzpi com_google_android_gms_internal_zzpi) {
        this.zzVW = com_google_android_gms_internal_zzpi.zzkl();
        this.zzVX = new zzoz(this.zzVW);
    }

    public Resources getResources() {
        if (this.zztr.zzYd) {
            return this.mContext.getResources();
        }
        try {
            DynamiteModule zza = DynamiteModule.zza(this.mContext, DynamiteModule.zzaQw, ModuleDescriptor.MODULE_ID);
            return zza != null ? zza.zzBd().getResources() : null;
        } catch (Throwable e) {
            zzpy.zzc("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public String getSessionId() {
        return this.zzVW;
    }

    public void zzE(boolean z) {
        synchronized (this.zzrN) {
            if (this.zzTC != z) {
                zzpg.zze(this.mContext, z);
            }
            this.zzTC = z;
            zzdb zzw = zzw(this.mContext);
            if (!(zzw == null || zzw.isAlive())) {
                zzpy.zzbd("start fetching content...");
                zzw.zzee();
            }
        }
    }

    public void zzF(boolean z) {
        synchronized (this.zzrN) {
            if (this.zzTD != z) {
                zzpg.zze(this.mContext, z);
            }
            zzpg.zze(this.mContext, z);
            this.zzTD = z;
            zzdb zzw = zzw(this.mContext);
            if (!(zzw == null || zzw.isAlive())) {
                zzpy.zzbd("start fetching content...");
                zzw.zzee();
            }
        }
    }

    public void zzG(boolean z) {
        this.zzWk = z;
    }

    public void zzH(boolean z) {
        synchronized (this.zzrN) {
            this.zzWi = z;
        }
    }

    public Bundle zza(Context context, zzpa com_google_android_gms_internal_zzpa, String str) {
        Bundle bundle;
        synchronized (this.zzrN) {
            bundle = new Bundle();
            bundle.putBundle("app", this.zzVX.zze(context, str));
            Bundle bundle2 = new Bundle();
            for (String str2 : this.zzWa.keySet()) {
                bundle2.putBundle(str2, ((zzpb) this.zzWa.get(str2)).toBundle());
            }
            bundle.putBundle("slots", bundle2);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.zzVZ.iterator();
            while (it.hasNext()) {
                arrayList.add(((zzow) it.next()).toBundle());
            }
            bundle.putParcelableArrayList("ads", arrayList);
            com_google_android_gms_internal_zzpa.zza(this.zzVZ);
            this.zzVZ.clear();
        }
        return bundle;
    }

    public void zza(zzow com_google_android_gms_internal_zzow) {
        synchronized (this.zzrN) {
            this.zzVZ.add(com_google_android_gms_internal_zzow);
        }
    }

    public void zza(String str, zzpb com_google_android_gms_internal_zzpb) {
        synchronized (this.zzrN) {
            this.zzWa.put(str, com_google_android_gms_internal_zzpb);
        }
    }

    public void zza(Throwable th, String str) {
        zzlz.zzb(this.mContext, this.zztr).zza(th, str);
    }

    public Future zzaS(String str) {
        Future zzf;
        synchronized (this.zzrN) {
            if (str != null) {
                if (!str.equals(this.zzWf)) {
                    this.zzWf = str;
                    zzf = zzpg.zzf(this.mContext, str);
                }
            }
            zzf = null;
        }
        return zzf;
    }

    public Future zzaT(String str) {
        Future zzg;
        synchronized (this.zzrN) {
            if (str != null) {
                if (!str.equals(this.zzWg)) {
                    this.zzWg = str;
                    zzg = zzpg.zzg(this.mContext, str);
                }
            }
            zzg = null;
        }
        return zzg;
    }

    public Future zzaf(int i) {
        Future zza;
        synchronized (this.zzrN) {
            this.zzWo = i;
            zza = zzpg.zza(this.mContext, i);
        }
        return zza;
    }

    public void zzb(Boolean bool) {
        synchronized (this.zzrN) {
            this.zzWh = bool;
        }
    }

    public void zzb(HashSet<zzow> hashSet) {
        synchronized (this.zzrN) {
            this.zzVZ.addAll(hashSet);
        }
    }

    public Future zzc(Context context, boolean z) {
        Future zzc;
        synchronized (this.zzrN) {
            if (z != this.zzTB) {
                this.zzTB = z;
                zzc = zzpg.zzc(context, z);
            } else {
                zzc = null;
            }
        }
        return zzc;
    }

    @TargetApi(23)
    public void zzc(Context context, zzqa com_google_android_gms_internal_zzqa) {
        synchronized (this.zzrN) {
            if (!this.zztW) {
                this.mContext = context.getApplicationContext();
                this.zztr = com_google_android_gms_internal_zzqa;
                zzv.zzcM().zza(this);
                zzpg.zza(context, (zzpg.zzb) this);
                zzpg.zzb(context, this);
                zzpg.zzc(context, (zzpg.zzb) this);
                zzpg.zzd(context, this);
                zzpg.zze(context, (zzpg.zzb) this);
                zzpg.zzf(context, (zzpg.zzb) this);
                zzpg.zzg(context, (zzpg.zzb) this);
                zzka();
                this.zzHY = zzv.zzcJ().zzh(context, com_google_android_gms_internal_zzqa.zzaZ);
                if (zzs.zzyJ() && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted()) {
                    this.zzWj = true;
                }
                this.zzsy = new zzcp(context.getApplicationContext(), this.zztr, zzv.zzcJ().zzd(context, com_google_android_gms_internal_zzqa));
                zzkc();
                zzv.zzcX().zzr(this.mContext);
                this.zztW = true;
            }
        }
    }

    public Future zzd(Context context, String str) {
        Future zza;
        this.zzWm = zzv.zzcP().currentTimeMillis();
        synchronized (this.zzrN) {
            if (str != null) {
                if (!str.equals(this.zzWl)) {
                    this.zzWl = str;
                    zza = zzpg.zza(context, str, this.zzWm);
                }
            }
            zza = null;
        }
        return zza;
    }

    public Future zzd(Context context, boolean z) {
        Future zzf;
        synchronized (this.zzrN) {
            if (z != this.zzTL) {
                this.zzTL = z;
                zzf = zzpg.zzf(context, z);
            } else {
                zzf = null;
            }
        }
        return zzf;
    }

    public void zzh(Bundle bundle) {
        synchronized (this.zzrN) {
            this.zzTB = bundle.getBoolean("use_https", this.zzTB);
            this.zzWc = bundle.getInt("webview_cache_version", this.zzWc);
            if (bundle.containsKey("content_url_opted_out")) {
                zzE(bundle.getBoolean("content_url_opted_out"));
            }
            if (bundle.containsKey("content_url_hashes")) {
                this.zzWf = bundle.getString("content_url_hashes");
            }
            this.zzTL = bundle.getBoolean("auto_collect_location", this.zzTL);
            if (bundle.containsKey("content_vertical_opted_out")) {
                zzF(bundle.getBoolean("content_vertical_opted_out"));
            }
            if (bundle.containsKey("content_vertical_hashes")) {
                this.zzWg = bundle.getString("content_vertical_hashes");
            }
            this.zzWl = bundle.containsKey("app_settings_json") ? bundle.getString("app_settings_json") : this.zzWl;
            this.zzWm = bundle.getLong("app_settings_last_update_ms", this.zzWm);
            this.zzWn = bundle.getLong("app_last_background_time_ms", this.zzWn);
            this.zzWo = bundle.getInt("request_in_session_count", this.zzWo);
        }
    }

    public boolean zzjJ() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzTC;
        }
        return z;
    }

    public boolean zzjK() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzTD;
        }
        return z;
    }

    public String zzjL() {
        String bigInteger;
        synchronized (this.zzrN) {
            bigInteger = this.zzVY.toString();
            this.zzVY = this.zzVY.add(BigInteger.ONE);
        }
        return bigInteger;
    }

    public zzoz zzjM() {
        zzoz com_google_android_gms_internal_zzoz;
        synchronized (this.zzrN) {
            com_google_android_gms_internal_zzoz = this.zzVX;
        }
        return com_google_android_gms_internal_zzoz;
    }

    public zzfz zzjN() {
        zzfz com_google_android_gms_internal_zzfz;
        synchronized (this.zzrN) {
            com_google_android_gms_internal_zzfz = this.zzWd;
        }
        return com_google_android_gms_internal_zzfz;
    }

    public boolean zzjO() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzWb;
            this.zzWb = true;
        }
        return z;
    }

    public boolean zzjP() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzTB || this.zzWj;
        }
        return z;
    }

    public String zzjQ() {
        String str;
        synchronized (this.zzrN) {
            str = this.zzHY;
        }
        return str;
    }

    public String zzjR() {
        String str;
        synchronized (this.zzrN) {
            str = this.zzWf;
        }
        return str;
    }

    public String zzjS() {
        String str;
        synchronized (this.zzrN) {
            str = this.zzWg;
        }
        return str;
    }

    public Boolean zzjT() {
        Boolean bool;
        synchronized (this.zzrN) {
            bool = this.zzWh;
        }
        return bool;
    }

    public boolean zzjU() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzTL;
        }
        return z;
    }

    public long zzjV() {
        long j;
        synchronized (this.zzrN) {
            j = this.zzWn;
        }
        return j;
    }

    public int zzjW() {
        int i;
        synchronized (this.zzrN) {
            i = this.zzWo;
        }
        return i;
    }

    public boolean zzjX() {
        return this.zzWk;
    }

    public zzox zzjY() {
        zzox com_google_android_gms_internal_zzox;
        synchronized (this.zzrN) {
            com_google_android_gms_internal_zzox = new zzox(this.zzWl, this.zzWm);
        }
        return com_google_android_gms_internal_zzox;
    }

    public zzcp zzjZ() {
        return this.zzsy;
    }

    public void zzk(boolean z) {
        if (!z) {
            zzo(zzv.zzcP().currentTimeMillis());
            zzaf(this.zzVX.zzjW());
        } else if (zzv.zzcP().currentTimeMillis() - this.zzWn > ((Long) zzfx.zzCv.get()).longValue()) {
            this.zzVX.zzag(-1);
        } else {
            this.zzVX.zzag(this.zzWo);
        }
    }

    public void zzka() {
        zzlz.zzb(this.mContext, this.zztr);
    }

    public boolean zzkb() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzWi;
        }
        return z;
    }

    void zzkc() {
        try {
            this.zzWd = zzv.zzcQ().zza(new zzfy(this.mContext, this.zztr.zzaZ));
        } catch (Throwable e) {
            zzpy.zzc("Cannot initialize CSI reporter.", e);
        }
    }

    public Future zzo(long j) {
        Future zza;
        synchronized (this.zzrN) {
            if (this.zzWn < j) {
                this.zzWn = j;
                zza = zzpg.zza(this.mContext, j);
            } else {
                zza = null;
            }
        }
        return zza;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.android.gms.internal.zzdb zzw(android.content.Context r6) {
        /*
        r5 = this;
        r1 = 0;
        r0 = com.google.android.gms.internal.zzfx.zzBO;
        r0 = r0.get();
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x0011;
    L_0x000f:
        r0 = r1;
    L_0x0010:
        return r0;
    L_0x0011:
        r0 = com.google.android.gms.common.util.zzs.zzyA();
        if (r0 != 0) goto L_0x0019;
    L_0x0017:
        r0 = r1;
        goto L_0x0010;
    L_0x0019:
        r0 = com.google.android.gms.internal.zzfx.zzBW;
        r0 = r0.get();
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x0037;
    L_0x0027:
        r0 = com.google.android.gms.internal.zzfx.zzBU;
        r0 = r0.get();
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        if (r0 != 0) goto L_0x0037;
    L_0x0035:
        r0 = r1;
        goto L_0x0010;
    L_0x0037:
        r0 = r5.zzjJ();
        if (r0 == 0) goto L_0x0045;
    L_0x003d:
        r0 = r5.zzjK();
        if (r0 == 0) goto L_0x0045;
    L_0x0043:
        r0 = r1;
        goto L_0x0010;
    L_0x0045:
        r2 = r5.zzrN;
        monitor-enter(r2);
        r0 = android.os.Looper.getMainLooper();	 Catch:{ all -> 0x007c }
        if (r0 == 0) goto L_0x0050;
    L_0x004e:
        if (r6 != 0) goto L_0x0053;
    L_0x0050:
        monitor-exit(r2);	 Catch:{ all -> 0x007c }
        r0 = r1;
        goto L_0x0010;
    L_0x0053:
        r0 = r5.zzxE;	 Catch:{ all -> 0x007c }
        if (r0 != 0) goto L_0x005e;
    L_0x0057:
        r0 = new com.google.android.gms.internal.zzcz;	 Catch:{ all -> 0x007c }
        r0.<init>();	 Catch:{ all -> 0x007c }
        r5.zzxE = r0;	 Catch:{ all -> 0x007c }
    L_0x005e:
        r0 = r5.zzWe;	 Catch:{ all -> 0x007c }
        if (r0 != 0) goto L_0x0073;
    L_0x0062:
        r0 = new com.google.android.gms.internal.zzdb;	 Catch:{ all -> 0x007c }
        r1 = r5.zzxE;	 Catch:{ all -> 0x007c }
        r3 = r5.mContext;	 Catch:{ all -> 0x007c }
        r4 = r5.zztr;	 Catch:{ all -> 0x007c }
        r3 = com.google.android.gms.internal.zzlz.zzb(r3, r4);	 Catch:{ all -> 0x007c }
        r0.<init>(r1, r3);	 Catch:{ all -> 0x007c }
        r5.zzWe = r0;	 Catch:{ all -> 0x007c }
    L_0x0073:
        r0 = r5.zzWe;	 Catch:{ all -> 0x007c }
        r0.zzee();	 Catch:{ all -> 0x007c }
        r0 = r5.zzWe;	 Catch:{ all -> 0x007c }
        monitor-exit(r2);	 Catch:{ all -> 0x007c }
        goto L_0x0010;
    L_0x007c:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x007c }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzoy.zzw(android.content.Context):com.google.android.gms.internal.zzdb");
    }
}
