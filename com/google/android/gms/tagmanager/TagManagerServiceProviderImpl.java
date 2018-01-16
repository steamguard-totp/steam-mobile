package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzayv;
import com.google.android.gms.internal.zzazn;
import com.google.android.gms.tagmanager.zzbd.zza;

@DynamiteApi
public class TagManagerServiceProviderImpl extends zza {
    private static volatile zzazn zzbGC;

    public zzayv getService(zzd com_google_android_gms_dynamic_zzd, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) throws RemoteException {
        zzayv com_google_android_gms_internal_zzayv = zzbGC;
        if (com_google_android_gms_internal_zzayv == null) {
            synchronized (TagManagerServiceProviderImpl.class) {
                com_google_android_gms_internal_zzayv = zzbGC;
                if (com_google_android_gms_internal_zzayv == null) {
                    zzazn com_google_android_gms_internal_zzazn = new zzazn((Context) zze.zzE(com_google_android_gms_dynamic_zzd), com_google_android_gms_tagmanager_zzbb, com_google_android_gms_tagmanager_zzay);
                    zzbGC = com_google_android_gms_internal_zzazn;
                    com_google_android_gms_internal_zzayv = com_google_android_gms_internal_zzazn;
                }
            }
        }
        return com_google_android_gms_internal_zzayv;
    }
}
