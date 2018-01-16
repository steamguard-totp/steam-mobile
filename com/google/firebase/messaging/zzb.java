package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;

class zzb {
    private static AppMeasurement zzaR(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }

    private static void zzc(Context context, String str, Intent intent) {
        Bundle bundle = new Bundle();
        String stringExtra = intent.getStringExtra("google.c.a.c_id");
        if (stringExtra != null) {
            bundle.putString("_nmid", stringExtra);
        }
        stringExtra = intent.getStringExtra("google.c.a.c_l");
        if (stringExtra != null) {
            bundle.putString("_nmn", stringExtra);
        }
        stringExtra = intent.getStringExtra("from");
        if (stringExtra == null || !stringExtra.startsWith("/topics/")) {
            stringExtra = null;
        }
        if (stringExtra != null) {
            bundle.putString("_nt", stringExtra);
        }
        try {
            bundle.putInt("_nmt", Integer.valueOf(intent.getStringExtra("google.c.a.ts")).intValue());
        } catch (Throwable e) {
            Log.w("FirebaseMessaging", "Error while parsing timestamp in GCM event", e);
        }
        if (intent.hasExtra("google.c.a.udt")) {
            try {
                bundle.putInt("_ndt", Integer.valueOf(intent.getStringExtra("google.c.a.udt")).intValue());
            } catch (Throwable e2) {
                Log.w("FirebaseMessaging", "Error while parsing use_device_time in GCM event", e2);
            }
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            stringExtra = String.valueOf(bundle);
            new StringBuilder((String.valueOf(str).length() + 22) + String.valueOf(stringExtra).length()).append("Sending event=").append(str).append(" params=").append(stringExtra).toString();
        }
        AppMeasurement zzaR = zzaR(context);
        if (zzaR != null) {
            zzaR.logEventInternal("fcm", str, bundle);
        } else {
            Log.w("FirebaseMessaging", "Unable to log event: analytics library is missing");
        }
    }

    public static void zzi(Context context, Intent intent) {
        zzc(context, "_nr", intent);
    }

    public static void zzj(Context context, Intent intent) {
        zzm(context, intent);
        zzc(context, "_no", intent);
    }

    public static void zzk(Context context, Intent intent) {
        zzc(context, "_nd", intent);
    }

    public static void zzl(Context context, Intent intent) {
        zzc(context, "_nf", intent);
    }

    private static void zzm(Context context, Intent intent) {
        if (intent != null) {
            if ("1".equals(intent.getStringExtra("google.c.a.tc"))) {
                AppMeasurement zzaR = zzaR(context);
                Log.isLoggable("FirebaseMessaging", 3);
                if (zzaR != null) {
                    String stringExtra = intent.getStringExtra("google.c.a.c_id");
                    zzaR.zzb("fcm", "_ln", stringExtra);
                    Bundle bundle = new Bundle();
                    bundle.putString("source", "Firebase");
                    bundle.putString("medium", "notification");
                    bundle.putString("campaign", stringExtra);
                    zzaR.logEventInternal("fcm", "_cmp", bundle);
                    return;
                }
                Log.w("FirebaseMessaging", "Unable to set user property for conversion tracking:  analytics library is missing");
                return;
            }
            Log.isLoggable("FirebaseMessaging", 3);
        }
    }
}
