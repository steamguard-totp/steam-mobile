package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzayd;
import com.google.android.gms.internal.zzrw;
import com.google.android.gms.internal.zzsx;
import com.google.android.gms.internal.zztg;

public class CampaignTrackingService extends Service {
    private static Boolean zzaax;
    private Handler mHandler;

    private Handler getHandler() {
        Handler handler = this.mHandler;
        if (handler != null) {
            return handler;
        }
        handler = new Handler(getMainLooper());
        this.mHandler = handler;
        return handler;
    }

    public static boolean zzU(Context context) {
        zzac.zzw(context);
        if (zzaax != null) {
            return zzaax.booleanValue();
        }
        boolean zzr = zztg.zzr(context, "com.google.android.gms.analytics.CampaignTrackingService");
        zzaax = Boolean.valueOf(zzr);
        return zzr;
    }

    private void zzlS() {
        try {
            synchronized (CampaignTrackingReceiver.zztU) {
                zzayd com_google_android_gms_internal_zzayd = CampaignTrackingReceiver.zzaav;
                if (com_google_android_gms_internal_zzayd != null && com_google_android_gms_internal_zzayd.isHeld()) {
                    com_google_android_gms_internal_zzayd.release();
                }
            }
        } catch (SecurityException e) {
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        zzrw.zzW(this).zznr().zzbO("CampaignTrackingService is starting up");
    }

    public void onDestroy() {
        zzrw.zzW(this).zznr().zzbO("CampaignTrackingService is shutting down");
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, final int i2) {
        zzlS();
        zzrw zzW = zzrw.zzW(this);
        final zzsx zznr = zzW.zznr();
        String stringExtra = intent.getStringExtra("referrer");
        final Handler handler = getHandler();
        if (TextUtils.isEmpty(stringExtra)) {
            zznr.zzbR("No campaign found on com.android.vending.INSTALL_REFERRER \"referrer\" extra");
            zzW.zznt().zzg(new Runnable(this) {
                final /* synthetic */ CampaignTrackingService zzaaA;

                public void run() {
                    this.zzaaA.zza(zznr, handler, i2);
                }
            });
        } else {
            int zzoz = zzW.zzns().zzoz();
            if (stringExtra.length() > zzoz) {
                zznr.zzc("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(zzoz));
                stringExtra = stringExtra.substring(0, zzoz);
            }
            zznr.zza("CampaignTrackingService called. startId, campaign", Integer.valueOf(i2), stringExtra);
            zzW.zzlZ().zza(stringExtra, new Runnable(this) {
                final /* synthetic */ CampaignTrackingService zzaaA;

                public void run() {
                    this.zzaaA.zza(zznr, handler, i2);
                }
            });
        }
        return 2;
    }

    protected void zza(final zzsx com_google_android_gms_internal_zzsx, Handler handler, final int i) {
        handler.post(new Runnable(this) {
            final /* synthetic */ CampaignTrackingService zzaaA;

            public void run() {
                boolean stopSelfResult = this.zzaaA.stopSelfResult(i);
                if (stopSelfResult) {
                    com_google_android_gms_internal_zzsx.zza("Install campaign broadcast processed", Boolean.valueOf(stopSelfResult));
                }
            }
        });
    }
}
