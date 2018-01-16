package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import java.util.List;

@zzmb
public class zzgl implements zzbvb {
    private CustomTabsSession zzFA;
    private CustomTabsClient zzFB;
    private CustomTabsServiceConnection zzFC;
    private zza zzFD;

    public interface zza {
    }

    public static boolean zzn(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        List queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        if (queryIntentActivities == null || resolveActivity == null) {
            return false;
        }
        for (int i = 0; i < queryIntentActivities.size(); i++) {
            if (resolveActivity.activityInfo.name.equals(((ResolveInfo) queryIntentActivities.get(i)).activityInfo.name)) {
                return resolveActivity.activityInfo.packageName.equals(zzbuz.zzcf(context));
            }
        }
        return false;
    }

    public void zza(zza com_google_android_gms_internal_zzgl_zza) {
        this.zzFD = com_google_android_gms_internal_zzgl_zza;
    }

    public void zzd(Activity activity) {
        if (this.zzFC != null) {
            activity.unbindService(this.zzFC);
            this.zzFB = null;
            this.zzFA = null;
            this.zzFC = null;
        }
    }

    public void zze(Activity activity) {
        if (this.zzFB == null) {
            String zzcf = zzbuz.zzcf(activity);
            if (zzcf != null) {
                this.zzFC = new zzbva(this);
                CustomTabsClient.bindCustomTabsService(activity, zzcf, this.zzFC);
            }
        }
    }

    public CustomTabsSession zzfC() {
        if (this.zzFB == null) {
            this.zzFA = null;
        } else if (this.zzFA == null) {
            this.zzFA = this.zzFB.newSession(null);
        }
        return this.zzFA;
    }
}
