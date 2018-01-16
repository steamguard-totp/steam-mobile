package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.internal.zznj.zza;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@zzmb
public class zzmx {
    public String zzRf;
    public Bundle zzRk;
    public List<String> zzRs = new ArrayList();
    public Bundle zzSC;
    public zza zzSD;
    public String zzSE;
    public zzmh zzSF;
    public zznf zzSG;
    public JSONObject zzSH = new JSONObject();
    public Location zzyN;

    public zzmx zza(zznf com_google_android_gms_internal_zznf) {
        this.zzSG = com_google_android_gms_internal_zznf;
        return this;
    }

    public zzmx zza(zza com_google_android_gms_internal_zznj_zza) {
        this.zzSD = com_google_android_gms_internal_zznj_zza;
        return this;
    }

    public zzmx zzaJ(String str) {
        this.zzRf = str;
        return this;
    }

    public zzmx zzaK(String str) {
        this.zzSE = str;
        return this;
    }

    public zzmx zzc(Location location) {
        this.zzyN = location;
        return this;
    }

    public zzmx zze(Bundle bundle) {
        this.zzSC = bundle;
        return this;
    }

    public zzmx zzf(Bundle bundle) {
        this.zzRk = bundle;
        return this;
    }

    public zzmx zzf(zzmh com_google_android_gms_internal_zzmh) {
        this.zzSF = com_google_android_gms_internal_zzmh;
        return this;
    }

    public zzmx zzh(JSONObject jSONObject) {
        this.zzSH = jSONObject;
        return this;
    }

    public zzmx zzk(List<String> list) {
        if (list == null) {
            this.zzRs.clear();
        }
        this.zzRs = list;
        return this;
    }
}
