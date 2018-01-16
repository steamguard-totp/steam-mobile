package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzayd;
import com.google.android.gms.internal.zzrw;
import com.google.android.gms.internal.zzsx;
import com.google.android.gms.internal.zztg;

public class CampaignTrackingReceiver extends BroadcastReceiver {
    static zzayd zzaav;
    static Boolean zzaaw;
    static Object zztU = new Object();

    public static boolean zzT(Context context) {
        zzac.zzw(context);
        if (zzaaw != null) {
            return zzaaw.booleanValue();
        }
        boolean zza = zztg.zza(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        zzaaw = Boolean.valueOf(zza);
        return zza;
    }

    public void onReceive(Context context, Intent intent) {
        zzsx zznr = zzrw.zzW(context).zznr();
        if (intent == null) {
            zznr.zzbR("CampaignTrackingReceiver received null intent");
            return;
        }
        Object stringExtra = intent.getStringExtra("referrer");
        String action = intent.getAction();
        zznr.zza("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            zznr.zzbR("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        boolean zzU = CampaignTrackingService.zzU(context);
        if (!zzU) {
            zznr.zzbR("CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        Class zzlR = zzlR();
        zzac.zzw(zzlR);
        Intent intent2 = new Intent(context, zzlR);
        intent2.putExtra("referrer", stringExtra);
        synchronized (zztU) {
            context.startService(intent2);
            if (zzU) {
                try {
                    if (zzaav == null) {
                        zzaav = new zzayd(context, 1, "Analytics campaign WakeLock");
                        zzaav.setReferenceCounted(false);
                    }
                    zzaav.acquire(1000);
                } catch (SecurityException e) {
                    zznr.zzbR("CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                }
                return;
            }
        }
    }

    protected Class<? extends CampaignTrackingService> zzlR() {
        return CampaignTrackingService.class;
    }
}
