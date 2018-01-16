package com.google.android.gms.internal;

import android.app.Service;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.IBinder;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.zzc;
import com.google.android.gms.cast.framework.zzf;
import com.google.android.gms.cast.framework.zzg;
import com.google.android.gms.cast.framework.zzh;
import com.google.android.gms.cast.framework.zzl;
import com.google.android.gms.cast.framework.zzm;
import com.google.android.gms.cast.framework.zzq;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.zzwt.zza;
import java.util.Map;

public class zzwq {
    private static final zzyu zzaoQ = new zzyu("CastDynamiteModule");

    public static zzc zza(Service service, zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, CastMediaOptions castMediaOptions) {
        try {
            return zzae(service.getApplicationContext()).zza(zze.zzA(service), com_google_android_gms_dynamic_zzd, com_google_android_gms_dynamic_zzd2, castMediaOptions);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "newMediaNotificationServiceImpl", zzwt.class.getSimpleName());
            return null;
        }
    }

    public static zzg zza(Context context, CastOptions castOptions, zzwu com_google_android_gms_internal_zzwu, Map<String, IBinder> map) {
        try {
            return zzae(context).zza(zze.zzA(context.getApplicationContext()), castOptions, com_google_android_gms_internal_zzwu, (Map) map);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "newCastContextImpl", zzwt.class.getSimpleName());
            return null;
        }
    }

    public static zzh zza(Context context, CastOptions castOptions, zzd com_google_android_gms_dynamic_zzd, zzf com_google_android_gms_cast_framework_zzf) {
        try {
            return zzae(context).zza(castOptions, com_google_android_gms_dynamic_zzd, com_google_android_gms_cast_framework_zzf);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "newCastSessionImpl", zzwt.class.getSimpleName());
            return null;
        }
    }

    public static zzl zza(Service service, zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2) {
        try {
            return zzae(service.getApplicationContext()).zza(zze.zzA(service), com_google_android_gms_dynamic_zzd, com_google_android_gms_dynamic_zzd2);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "newReconnectionServiceImpl", zzwt.class.getSimpleName());
            return null;
        }
    }

    public static zzm zza(Context context, String str, String str2, zzq com_google_android_gms_cast_framework_zzq) {
        try {
            return zzae(context).zza(str, str2, com_google_android_gms_cast_framework_zzq);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "newSessionImpl", zzwt.class.getSimpleName());
            return null;
        }
    }

    public static zzxc zza(Context context, AsyncTask<Uri, Long, Bitmap> asyncTask, zzxd com_google_android_gms_internal_zzxd, int i, int i2, boolean z, long j, int i3, int i4, int i5) {
        try {
            return zzae(context.getApplicationContext()).zza(zze.zzA(asyncTask), com_google_android_gms_internal_zzxd, i, i2, z, j, i3, i4, i5);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "newFetchBitmapTaskImpl", zzwt.class.getSimpleName());
            return null;
        }
    }

    private static zzwt zzae(Context context) {
        try {
            return zza.zzaZ(DynamiteModule.zza(context, DynamiteModule.zzaQw, "com.google.android.gms.cast.framework.dynamite").zzdX("com.google.android.gms.cast.framework.internal.CastDynamiteModuleImpl"));
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }
}
