package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build.VERSION;
import com.google.android.gms.ads.internal.zzv;
import java.util.LinkedHashMap;
import java.util.Map;

@zzmb
public class zzfy {
    private Context mContext = null;
    private boolean zzFa;
    private String zzFb;
    private Map<String, String> zzFc;
    private String zzvU = null;

    public zzfy(Context context, String str) {
        this.mContext = context;
        this.zzvU = str;
        this.zzFa = ((Boolean) zzfx.zzBK.get()).booleanValue();
        this.zzFb = (String) zzfx.zzBL.get();
        this.zzFc = new LinkedHashMap();
        this.zzFc.put("s", "gmob_sdk");
        this.zzFc.put("v", "3");
        this.zzFc.put("os", VERSION.RELEASE);
        this.zzFc.put("sdk", VERSION.SDK);
        this.zzFc.put("device", zzv.zzcJ().zzkm());
        this.zzFc.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        this.zzFc.put("is_lite_sdk", zzv.zzcJ().zzJ(context) ? "1" : "0");
        zznf zzv = zzv.zzcS().zzv(this.mContext);
        this.zzFc.put("network_coarse", Integer.toString(zzv.zzUm));
        this.zzFc.put("network_fine", Integer.toString(zzv.zzUn));
    }

    Context getContext() {
        return this.mContext;
    }

    String zzdw() {
        return this.zzvU;
    }

    boolean zzfp() {
        return this.zzFa;
    }

    String zzfq() {
        return this.zzFb;
    }

    Map<String, String> zzfr() {
        return this.zzFc;
    }
}
