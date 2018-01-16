package com.google.firebase.auth;

import android.support.annotation.Keep;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzbiu;
import com.google.android.gms.internal.zzbiz;
import com.google.android.gms.internal.zzbjc;
import com.google.android.gms.internal.zzbjc.zza.zza;
import com.google.android.gms.internal.zzbjp;
import com.google.android.gms.internal.zzbkg;
import com.google.android.gms.internal.zzbkl;
import com.google.android.gms.internal.zzbkm;
import com.google.android.gms.internal.zzbql;
import com.google.android.gms.internal.zzbqm;
import com.google.firebase.FirebaseApp;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class FirebaseAuth implements zzbql {
    private static FirebaseAuth zzbVC;
    private static Map<String, FirebaseAuth> zzbha = new ArrayMap();
    private List<Object> mListeners;
    private zzbkl zzbVA;
    private zzbkm zzbVB;
    private FirebaseApp zzbVx;
    private zzbiu zzbVy;
    private FirebaseUser zzbVz;

    public FirebaseAuth(FirebaseApp firebaseApp) {
        this(firebaseApp, zzb(firebaseApp), new zzbkl(firebaseApp.getApplicationContext(), firebaseApp.zzTu(), zzbiz.zzUg()));
    }

    FirebaseAuth(FirebaseApp firebaseApp, zzbiu com_google_android_gms_internal_zzbiu, zzbkl com_google_android_gms_internal_zzbkl) {
        this.zzbVx = (FirebaseApp) zzac.zzw(firebaseApp);
        this.zzbVy = (zzbiu) zzac.zzw(com_google_android_gms_internal_zzbiu);
        this.zzbVA = (zzbkl) zzac.zzw(com_google_android_gms_internal_zzbkl);
        this.mListeners = new CopyOnWriteArrayList();
        this.zzbVB = zzbkm.zzUK();
        zzTT();
    }

    @Keep
    public static FirebaseAuth getInstance(FirebaseApp firebaseApp) {
        return zzc(firebaseApp);
    }

    static zzbiu zzb(FirebaseApp firebaseApp) {
        return zzbjc.zza(firebaseApp.getApplicationContext(), new zza(firebaseApp.getOptions().getApiKey()).zzUj());
    }

    private static FirebaseAuth zzc(FirebaseApp firebaseApp) {
        return zzd(firebaseApp);
    }

    private static synchronized FirebaseAuth zzd(FirebaseApp firebaseApp) {
        FirebaseAuth firebaseAuth;
        synchronized (FirebaseAuth.class) {
            firebaseAuth = (FirebaseAuth) zzbha.get(firebaseApp.zzTu());
            if (firebaseAuth == null) {
                firebaseAuth = new zzbkg(firebaseApp);
                firebaseApp.zza((zzbql) firebaseAuth);
                if (zzbVC == null) {
                    zzbVC = firebaseAuth;
                }
                zzbha.put(firebaseApp.zzTu(), firebaseAuth);
            }
        }
        return firebaseAuth;
    }

    protected void zzTT() {
        this.zzbVz = this.zzbVA.zzUI();
        if (this.zzbVz != null) {
            zzbjp zzg = this.zzbVA.zzg(this.zzbVz);
            if (zzg != null) {
                zza(this.zzbVz, zzg, false);
            }
        }
    }

    public void zza(FirebaseUser firebaseUser) {
        if (firebaseUser != null) {
            String valueOf = String.valueOf(firebaseUser.getUid());
            new StringBuilder(String.valueOf(valueOf).length() + 36).append("Notifying listeners about user ( ").append(valueOf).append(" ).").toString();
        }
        final zzbqm com_google_android_gms_internal_zzbqm = new zzbqm(firebaseUser != null ? firebaseUser.zzTY() : null);
        this.zzbVB.execute(new Runnable(this) {
            final /* synthetic */ FirebaseAuth zzbVE;

            public void run() {
                this.zzbVE.zzbVx.zza(com_google_android_gms_internal_zzbqm);
                Iterator it = this.zzbVE.mListeners.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        });
    }

    public void zza(FirebaseUser firebaseUser, zzbjp com_google_android_gms_internal_zzbjp, boolean z) {
        boolean z2 = true;
        zzac.zzw(firebaseUser);
        zzac.zzw(com_google_android_gms_internal_zzbjp);
        if (this.zzbVz != null) {
            boolean z3 = !this.zzbVz.zzTW().getAccessToken().equals(com_google_android_gms_internal_zzbjp.getAccessToken());
            if (this.zzbVz.getUid().equals(firebaseUser.getUid()) && !z3) {
                z2 = false;
            }
        }
        if (z2) {
            if (this.zzbVz != null) {
                this.zzbVz.zza(com_google_android_gms_internal_zzbjp);
            }
            zza(firebaseUser, z, false);
            zza(this.zzbVz);
        }
        if (z) {
            this.zzbVA.zza(firebaseUser, com_google_android_gms_internal_zzbjp);
        }
    }

    public void zza(FirebaseUser firebaseUser, boolean z, boolean z2) {
        zzac.zzw(firebaseUser);
        if (this.zzbVz == null) {
            this.zzbVz = firebaseUser;
        } else {
            this.zzbVz.zzaT(firebaseUser.isAnonymous());
            this.zzbVz.zzR(firebaseUser.getProviderData());
        }
        if (z) {
            this.zzbVA.zzf(this.zzbVz);
        }
        if (z2) {
            zza(this.zzbVz);
        }
    }
}
