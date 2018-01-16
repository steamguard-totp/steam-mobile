package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

@zzmb
public final class zzey {
    public static final String DEVICE_ID_EMULATOR = zzeh.zzeO().zzbb("emulator");
    private final Date zzcQ;
    private final Set<String> zzcS;
    private final Location zzcU;
    private final boolean zzsS;
    private final int zzyW;
    private final int zzyZ;
    private final Bundle zzzL;
    private final Map<Class<? extends Object>, Object> zzzM;
    private final SearchAdRequest zzzN;
    private final Set<String> zzzO;
    private final Set<String> zzzP;
    private final String zzza;
    private final String zzzc;
    private final Bundle zzze;
    private final String zzzg;
    private final boolean zzzi;

    public static final class zza {
        private Date zzcQ;
        private Location zzcU;
        private boolean zzsS = false;
        private int zzyW = -1;
        private int zzyZ = -1;
        private final Bundle zzzL = new Bundle();
        private final HashSet<String> zzzQ = new HashSet();
        private final HashMap<Class<? extends Object>, Object> zzzR = new HashMap();
        private final HashSet<String> zzzS = new HashSet();
        private final HashSet<String> zzzT = new HashSet();
        private String zzza;
        private String zzzc;
        private final Bundle zzze = new Bundle();
        private String zzzg;
        private boolean zzzi;

        public void zzL(String str) {
            this.zzzQ.add(str);
        }

        public void zzM(String str) {
            this.zzzS.add(str);
        }

        public void zzN(String str) {
            this.zzzS.remove(str);
        }

        public void zza(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zzzL.putBundle(cls.getName(), bundle);
        }

        public void zza(Date date) {
            this.zzcQ = date;
        }

        public void zzb(Location location) {
            this.zzcU = location;
        }

        public void zzo(boolean z) {
            this.zzyZ = z ? 1 : 0;
        }

        public void zzp(boolean z) {
            this.zzzi = z;
        }

        public void zzx(int i) {
            this.zzyW = i;
        }
    }

    public zzey(zza com_google_android_gms_internal_zzey_zza) {
        this(com_google_android_gms_internal_zzey_zza, null);
    }

    public zzey(zza com_google_android_gms_internal_zzey_zza, SearchAdRequest searchAdRequest) {
        this.zzcQ = com_google_android_gms_internal_zzey_zza.zzcQ;
        this.zzzc = com_google_android_gms_internal_zzey_zza.zzzc;
        this.zzyW = com_google_android_gms_internal_zzey_zza.zzyW;
        this.zzcS = Collections.unmodifiableSet(com_google_android_gms_internal_zzey_zza.zzzQ);
        this.zzcU = com_google_android_gms_internal_zzey_zza.zzcU;
        this.zzsS = com_google_android_gms_internal_zzey_zza.zzsS;
        this.zzzL = com_google_android_gms_internal_zzey_zza.zzzL;
        this.zzzM = Collections.unmodifiableMap(com_google_android_gms_internal_zzey_zza.zzzR);
        this.zzza = com_google_android_gms_internal_zzey_zza.zzza;
        this.zzzg = com_google_android_gms_internal_zzey_zza.zzzg;
        this.zzzN = searchAdRequest;
        this.zzyZ = com_google_android_gms_internal_zzey_zza.zzyZ;
        this.zzzO = Collections.unmodifiableSet(com_google_android_gms_internal_zzey_zza.zzzS);
        this.zzze = com_google_android_gms_internal_zzey_zza.zzze;
        this.zzzP = Collections.unmodifiableSet(com_google_android_gms_internal_zzey_zza.zzzT);
        this.zzzi = com_google_android_gms_internal_zzey_zza.zzzi;
    }

    public Date getBirthday() {
        return this.zzcQ;
    }

    public String getContentUrl() {
        return this.zzzc;
    }

    public Bundle getCustomTargeting() {
        return this.zzze;
    }

    public int getGender() {
        return this.zzyW;
    }

    public Set<String> getKeywords() {
        return this.zzcS;
    }

    public Location getLocation() {
        return this.zzcU;
    }

    public boolean getManualImpressionsEnabled() {
        return this.zzsS;
    }

    public Bundle getNetworkExtrasBundle(Class<? extends MediationAdapter> cls) {
        return this.zzzL.getBundle(cls.getName());
    }

    public String getPublisherProvidedId() {
        return this.zzza;
    }

    public boolean isDesignedForFamilies() {
        return this.zzzi;
    }

    public boolean isTestDevice(Context context) {
        return this.zzzO.contains(zzeh.zzeO().zzO(context));
    }

    public String zzeW() {
        return this.zzzg;
    }

    public SearchAdRequest zzeX() {
        return this.zzzN;
    }

    public Map<Class<? extends Object>, Object> zzeY() {
        return this.zzzM;
    }

    public Bundle zzeZ() {
        return this.zzzL;
    }

    public int zzfa() {
        return this.zzyZ;
    }

    public Set<String> zzfb() {
        return this.zzzP;
    }
}
