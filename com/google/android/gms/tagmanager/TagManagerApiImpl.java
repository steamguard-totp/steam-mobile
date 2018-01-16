package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzayx;
import com.google.android.gms.internal.zzazb;
import com.google.android.gms.internal.zzazm;
import com.google.android.gms.tagmanager.zzbc.zza;

@DynamiteApi
public class TagManagerApiImpl extends zza {
    private zzazm zzbGB;

    public void initialize(zzd com_google_android_gms_dynamic_zzd, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) throws RemoteException {
        this.zzbGB = zzazm.zza((Context) zze.zzE(com_google_android_gms_dynamic_zzd), com_google_android_gms_tagmanager_zzbb, com_google_android_gms_tagmanager_zzay);
        this.zzbGB.initialize();
    }

    @Deprecated
    public void preview(Intent intent, zzd com_google_android_gms_dynamic_zzd) {
        zzayx.zzbe("Deprecated. Please use previewIntent instead.");
    }

    public void previewIntent(Intent intent, zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) {
        Context context = (Context) zze.zzE(com_google_android_gms_dynamic_zzd);
        Context context2 = (Context) zze.zzE(com_google_android_gms_dynamic_zzd2);
        this.zzbGB = zzazm.zza(context, com_google_android_gms_tagmanager_zzbb, com_google_android_gms_tagmanager_zzay);
        new zzazb(intent, context, context2, this.zzbGB).zzQA();
    }
}
