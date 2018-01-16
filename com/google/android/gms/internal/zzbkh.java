package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.internal.zzac;
import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.UserInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class zzbkh extends FirebaseUser {
    private zzbrl zzbVW = zzbiz.zzUg();
    private zzbjp zzbWK;
    private zzbkf zzbWL;
    private String zzbWM;
    private String zzbWN = "com.google.firebase.auth.internal.DefaultFirebaseUser";
    private List<zzbkf> zzbWO;
    private List<String> zzbWP;
    private Map<String, zzbkf> zzbWQ;
    private String zzbWR = "2";
    private boolean zzbWS;

    public zzbkh(FirebaseApp firebaseApp, List<? extends UserInfo> list) {
        zzac.zzw(firebaseApp);
        this.zzbWM = firebaseApp.getName();
        zzR(list);
    }

    public List<? extends UserInfo> getProviderData() {
        return this.zzbWO;
    }

    public String getProviderId() {
        return this.zzbWL.getProviderId();
    }

    public String getUid() {
        return this.zzbWL.getUid();
    }

    public boolean isAnonymous() {
        return this.zzbWS;
    }

    public FirebaseUser zzR(List<? extends UserInfo> list) {
        zzac.zzw(list);
        this.zzbWO = new ArrayList(list.size());
        this.zzbWP = new ArrayList(list.size());
        this.zzbWQ = new ArrayMap();
        for (int i = 0; i < list.size(); i++) {
            UserInfo userInfo = (UserInfo) list.get(i);
            if (userInfo.getProviderId().equals("firebase")) {
                this.zzbWL = (zzbkf) userInfo;
            } else {
                this.zzbWP.add(userInfo.getProviderId());
            }
            this.zzbWO.add((zzbkf) userInfo);
            this.zzbWQ.put(userInfo.getProviderId(), (zzbkf) userInfo);
        }
        if (this.zzbWL == null) {
            this.zzbWL = (zzbkf) this.zzbWO.get(0);
        }
        return this;
    }

    public FirebaseApp zzTV() {
        return FirebaseApp.getInstance(this.zzbWM);
    }

    public zzbjp zzTW() {
        return this.zzbWK;
    }

    public String zzTX() {
        return this.zzbVW.zzaI(this.zzbWK);
    }

    public String zzTY() {
        return zzTW().getAccessToken();
    }

    public List<zzbkf> zzUG() {
        return this.zzbWO;
    }

    public void zza(zzbjp com_google_android_gms_internal_zzbjp) {
        this.zzbWK = (zzbjp) zzac.zzw(com_google_android_gms_internal_zzbjp);
    }

    public /* synthetic */ FirebaseUser zzaT(boolean z) {
        return zzaU(z);
    }

    public zzbkh zzaU(boolean z) {
        this.zzbWS = z;
        return this;
    }

    public zzbkh zziA(String str) {
        this.zzbWR = str;
        return this;
    }
}
