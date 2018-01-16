package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.stats.zza;
import com.google.android.gms.internal.zzld;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpd;
import com.google.android.gms.internal.zzpe;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@zzmb
public class zzc extends zzpd implements ServiceConnection {
    private Context mContext;
    private zzld zzIO;
    private boolean zzOQ;
    private zzb zzOR;
    private zzh zzOS;
    private List<zzf> zzOT;
    private zzk zzOU;
    private final Object zzrN;

    public zzc(Context context, zzld com_google_android_gms_internal_zzld, zzk com_google_android_gms_ads_internal_purchase_zzk) {
        this(context, com_google_android_gms_internal_zzld, com_google_android_gms_ads_internal_purchase_zzk, new zzb(context), zzh.zzq(context.getApplicationContext()));
    }

    zzc(Context context, zzld com_google_android_gms_internal_zzld, zzk com_google_android_gms_ads_internal_purchase_zzk, zzb com_google_android_gms_ads_internal_purchase_zzb, zzh com_google_android_gms_ads_internal_purchase_zzh) {
        this.zzrN = new Object();
        this.zzOQ = false;
        this.zzOT = null;
        this.mContext = context;
        this.zzIO = com_google_android_gms_internal_zzld;
        this.zzOU = com_google_android_gms_ads_internal_purchase_zzk;
        this.zzOR = com_google_android_gms_ads_internal_purchase_zzb;
        this.zzOS = com_google_android_gms_ads_internal_purchase_zzh;
        this.zzOT = this.zzOS.zzg(10);
    }

    private void zze(long j) {
        do {
            if (!zzf(j)) {
                zzpe.v("Timeout waiting for pending transaction to be processed.");
            }
        } while (!this.zzOQ);
    }

    private boolean zzf(long j) {
        long elapsedRealtime = 60000 - (SystemClock.elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.zzrN.wait(elapsedRealtime);
        } catch (InterruptedException e) {
            zzpy.zzbe("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.zzrN) {
            this.zzOR.zzV(iBinder);
            zzio();
            this.zzOQ = true;
            this.zzrN.notify();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        zzpy.zzbd("In-app billing service disconnected.");
        this.zzOR.destroy();
    }

    public void onStop() {
        synchronized (this.zzrN) {
            zza.zzyc().zza(this.mContext, this);
            this.zzOR.destroy();
        }
    }

    protected void zza(final zzf com_google_android_gms_ads_internal_purchase_zzf, String str, String str2) {
        final Intent intent = new Intent();
        zzv.zzcX();
        intent.putExtra("RESPONSE_CODE", 0);
        zzv.zzcX();
        intent.putExtra("INAPP_PURCHASE_DATA", str);
        zzv.zzcX();
        intent.putExtra("INAPP_DATA_SIGNATURE", str2);
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzc zzOW;

            public void run() {
                try {
                    if (this.zzOW.zzOU.zza(com_google_android_gms_ads_internal_purchase_zzf.zzPf, -1, intent)) {
                        this.zzOW.zzIO.zza(new zzg(this.zzOW.mContext, com_google_android_gms_ads_internal_purchase_zzf.zzPg, true, -1, intent, com_google_android_gms_ads_internal_purchase_zzf));
                    } else {
                        this.zzOW.zzIO.zza(new zzg(this.zzOW.mContext, com_google_android_gms_ads_internal_purchase_zzf.zzPg, false, -1, intent, com_google_android_gms_ads_internal_purchase_zzf));
                    }
                } catch (RemoteException e) {
                    zzpy.zzbe("Fail to verify and dispatch pending transaction");
                }
            }
        });
    }

    public void zzcm() {
        synchronized (this.zzrN) {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            zza.zzyc().zza(this.mContext, intent, (ServiceConnection) this, 1);
            zze(SystemClock.elapsedRealtime());
            zza.zzyc().zza(this.mContext, this);
            this.zzOR.destroy();
        }
    }

    protected void zzio() {
        if (!this.zzOT.isEmpty()) {
            HashMap hashMap = new HashMap();
            for (zzf com_google_android_gms_ads_internal_purchase_zzf : this.zzOT) {
                hashMap.put(com_google_android_gms_ads_internal_purchase_zzf.zzPg, com_google_android_gms_ads_internal_purchase_zzf);
            }
            String str = null;
            while (true) {
                Bundle zzm = this.zzOR.zzm(this.mContext.getPackageName(), str);
                if (zzm == null || zzv.zzcX().zzd(zzm) != 0) {
                    break;
                }
                ArrayList stringArrayList = zzm.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
                ArrayList stringArrayList2 = zzm.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                ArrayList stringArrayList3 = zzm.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
                String string = zzm.getString("INAPP_CONTINUATION_TOKEN");
                for (int i = 0; i < stringArrayList.size(); i++) {
                    if (hashMap.containsKey(stringArrayList.get(i))) {
                        str = (String) stringArrayList.get(i);
                        String str2 = (String) stringArrayList2.get(i);
                        String str3 = (String) stringArrayList3.get(i);
                        zzf com_google_android_gms_ads_internal_purchase_zzf2 = (zzf) hashMap.get(str);
                        if (com_google_android_gms_ads_internal_purchase_zzf2.zzPf.equals(zzv.zzcX().zzaD(str2))) {
                            zza(com_google_android_gms_ads_internal_purchase_zzf2, str2, str3);
                            hashMap.remove(str);
                        }
                    }
                }
                if (string == null || hashMap.isEmpty()) {
                    break;
                }
                str = string;
            }
            for (String str4 : hashMap.keySet()) {
                this.zzOS.zza((zzf) hashMap.get(str4));
            }
        }
    }
}
