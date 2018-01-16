package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzky.zza;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@zzmb
public class zzd extends zza {
    private Context mContext;
    private String zzOX;
    private ArrayList<String> zzOY;
    private String zzvU;

    public zzd(String str, ArrayList<String> arrayList, Context context, String str2) {
        this.zzOX = str;
        this.zzOY = arrayList;
        this.zzvU = str2;
        this.mContext = context;
    }

    public String getProductId() {
        return this.zzOX;
    }

    public void recordPlayBillingResolution(int i) {
        if (i == 0) {
            zziq();
        }
        Map zzip = zzip();
        zzip.put("google_play_status", String.valueOf(i));
        zzip.put("sku", this.zzOX);
        zzip.put("status", String.valueOf(zzN(i)));
        List linkedList = new LinkedList();
        Iterator it = this.zzOY.iterator();
        while (it.hasNext()) {
            linkedList.add(zzv.zzcJ().zzb((String) it.next(), zzip));
        }
        zzv.zzcJ().zza(this.mContext, this.zzvU, linkedList);
    }

    public void recordResolution(int i) {
        if (i == 1) {
            zziq();
        }
        Map zzip = zzip();
        zzip.put("status", String.valueOf(i));
        zzip.put("sku", this.zzOX);
        List linkedList = new LinkedList();
        Iterator it = this.zzOY.iterator();
        while (it.hasNext()) {
            linkedList.add(zzv.zzcJ().zzb((String) it.next(), zzip));
        }
        zzv.zzcJ().zza(this.mContext, this.zzvU, linkedList);
    }

    protected int zzN(int i) {
        return i == 0 ? 1 : i == 1 ? 2 : i == 4 ? 3 : 0;
    }

    Map<String, String> zzip() {
        String packageName = this.mContext.getPackageName();
        Object obj = "";
        try {
            obj = this.mContext.getPackageManager().getPackageInfo(packageName, 0).versionName;
        } catch (Throwable e) {
            zzpy.zzc("Error to retrieve app version", e);
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - zzv.zzcN().zzjM().zzkd();
        Map<String, String> hashMap = new HashMap();
        hashMap.put("sessionid", zzv.zzcN().getSessionId());
        hashMap.put("appid", packageName);
        hashMap.put("osversion", String.valueOf(VERSION.SDK_INT));
        hashMap.put("sdkversion", this.zzvU);
        hashMap.put("appversion", obj);
        hashMap.put("timestamp", String.valueOf(elapsedRealtime));
        return hashMap;
    }

    void zziq() {
        try {
            this.mContext.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[]{Context.class, String.class, String.class, Boolean.TYPE}).invoke(null, new Object[]{this.mContext, this.zzOX, "", Boolean.valueOf(true)});
        } catch (ClassNotFoundException e) {
            zzpy.zzbe("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (NoSuchMethodException e2) {
            zzpy.zzbe("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (Throwable e3) {
            zzpy.zzc("Fail to report a conversion.", e3);
        }
    }
}
