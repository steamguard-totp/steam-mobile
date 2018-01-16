package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseUser;
import java.util.ArrayList;
import java.util.List;

public class zzbkl {
    private Context mContext;
    private SharedPreferences zzAN;
    private zzbrl zzbVW;
    private String zzbWT;
    private zzbrw zzbWU = new zzbrw();

    public zzbkl(Context context, String str, zzbrl com_google_android_gms_internal_zzbrl) {
        zzac.zzw(context);
        this.zzbWT = zzac.zzdv(str);
        this.mContext = context.getApplicationContext();
        String format = String.format("com.google.firebase.auth.api.Store.%s", new Object[]{this.zzbWT});
        this.zzbVW = (zzbrl) zzac.zzw(com_google_android_gms_internal_zzbrl);
        this.zzAN = this.mContext.getSharedPreferences(format, 0);
    }

    private zzbkh zza(zzbru com_google_android_gms_internal_zzbru) {
        Object zzabu = com_google_android_gms_internal_zzbru.zzjS("cachedTokenState").zzabu();
        String zzabu2 = com_google_android_gms_internal_zzbru.zzjS("applicationName").zzabu();
        boolean asBoolean = com_google_android_gms_internal_zzbru.zzjS("anonymous").getAsBoolean();
        String str = "2";
        zzbrr zzjS = com_google_android_gms_internal_zzbru.zzjS("version");
        String zzabu3 = (zzjS == null || zzjS.zzaby()) ? str : zzjS.zzabu();
        zzbro zzjT = com_google_android_gms_internal_zzbru.zzjT("userInfos");
        int size = zzjT.size();
        List arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add((zzbkf) this.zzbVW.zza(zzjT.zzqc(i), zzbkf.class));
        }
        zzbkh com_google_android_gms_internal_zzbkh = new zzbkh(FirebaseApp.getInstance(zzabu2), arrayList);
        if (!TextUtils.isEmpty(zzabu)) {
            com_google_android_gms_internal_zzbkh.zza((zzbjp) this.zzbVW.zzf(zzabu, zzbjp.class));
        }
        ((zzbkh) com_google_android_gms_internal_zzbkh.zzaT(asBoolean)).zziA(zzabu3);
        return com_google_android_gms_internal_zzbkh;
    }

    private String zzi(FirebaseUser firebaseUser) {
        zzbru com_google_android_gms_internal_zzbru = new zzbru();
        if (!zzbkh.class.isAssignableFrom(firebaseUser.getClass())) {
            return null;
        }
        zzbkh com_google_android_gms_internal_zzbkh = (zzbkh) firebaseUser;
        com_google_android_gms_internal_zzbru.zzaB("cachedTokenState", com_google_android_gms_internal_zzbkh.zzTX());
        com_google_android_gms_internal_zzbru.zzaB("applicationName", com_google_android_gms_internal_zzbkh.zzTV().getName());
        com_google_android_gms_internal_zzbru.zzaB("type", "com.google.firebase.auth.internal.DefaultFirebaseUser");
        if (com_google_android_gms_internal_zzbkh.zzUG() != null) {
            zzbrr com_google_android_gms_internal_zzbro = new zzbro();
            List zzUG = com_google_android_gms_internal_zzbkh.zzUG();
            for (int i = 0; i < zzUG.size(); i++) {
                com_google_android_gms_internal_zzbro.zzc(zziB(this.zzbVW.zzaI((zzbkf) zzUG.get(i))));
            }
            com_google_android_gms_internal_zzbru.zza("userInfos", com_google_android_gms_internal_zzbro);
        }
        com_google_android_gms_internal_zzbru.zzb("anonymous", Boolean.valueOf(com_google_android_gms_internal_zzbkh.isAnonymous()));
        com_google_android_gms_internal_zzbru.zzaB("version", "2");
        return com_google_android_gms_internal_zzbru.toString();
    }

    private static zzbrr zziB(String str) {
        return new zzbrw().zzjU(str);
    }

    public String get(String str) {
        return this.zzAN.getString(str, null);
    }

    public FirebaseUser zzUI() {
        FirebaseUser firebaseUser = null;
        Object obj = get("com.google.firebase.auth.FIREBASE_USER");
        if (!TextUtils.isEmpty(obj)) {
            try {
                zzbru zzabz = this.zzbWU.zzjU(obj).zzabz();
                if (zzabz.has("type")) {
                    if ("com.google.firebase.auth.internal.DefaultFirebaseUser".equalsIgnoreCase(zzabz.zzjS("type").zzabu())) {
                        firebaseUser = zza(zzabz);
                    }
                }
            } catch (zzbsa e) {
            }
        }
        return firebaseUser;
    }

    public void zza(FirebaseUser firebaseUser, zzbjp com_google_android_gms_internal_zzbjp) {
        zzac.zzw(firebaseUser);
        zzac.zzw(com_google_android_gms_internal_zzbjp);
        zzp(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", new Object[]{firebaseUser.getUid()}), com_google_android_gms_internal_zzbjp);
    }

    public void zzak(String str, String str2) {
        this.zzAN.edit().putString(str, str2).apply();
    }

    public <T> T zze(String str, Class<T> cls) {
        Object obj = get(str);
        return TextUtils.isEmpty(obj) ? null : this.zzbVW.zzf(obj, cls);
    }

    public void zzf(FirebaseUser firebaseUser) {
        zzac.zzw(firebaseUser);
        Object zzi = zzi(firebaseUser);
        if (!TextUtils.isEmpty(zzi)) {
            zzak("com.google.firebase.auth.FIREBASE_USER", zzi);
        }
    }

    public zzbjp zzg(FirebaseUser firebaseUser) {
        zzac.zzw(firebaseUser);
        return (zzbjp) zze(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", new Object[]{firebaseUser.getUid()}), zzbjp.class);
    }

    public void zzp(String str, Object obj) {
        this.zzAN.edit().putString(str, this.zzbVW.zzaI(obj)).apply();
    }
}
