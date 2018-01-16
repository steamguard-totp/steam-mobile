package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzayv.zza;
import com.google.android.gms.tagmanager.zzay;
import com.google.android.gms.tagmanager.zzbb;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class zzazn extends zza {
    private final ExecutorService zzbHn;
    private final zzbb zzbHp;
    private final Map<String, zzayg> zzbJg;
    private final zzayh zzbJh;

    public zzazn(Context context, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) {
        this(com_google_android_gms_tagmanager_zzbb, new zzayh(context, com_google_android_gms_tagmanager_zzbb, com_google_android_gms_tagmanager_zzay), zzazo.zzQR());
    }

    zzazn(zzbb com_google_android_gms_tagmanager_zzbb, zzayh com_google_android_gms_internal_zzayh, ExecutorService executorService) {
        this.zzbJg = new HashMap(1);
        zzac.zzw(com_google_android_gms_tagmanager_zzbb);
        this.zzbHp = com_google_android_gms_tagmanager_zzbb;
        this.zzbJh = com_google_android_gms_internal_zzayh;
        this.zzbHn = executorService;
    }

    public void dispatch() {
        this.zzbHn.execute(new Runnable(this) {
            final /* synthetic */ zzazn zzbJj;

            {
                this.zzbJj = r1;
            }

            public void run() {
                if (this.zzbJj.zzbJg.isEmpty()) {
                    zzayx.zzbe("TagManagerBackend dispatch called without loaded container.");
                    return;
                }
                for (zzayg dispatch : this.zzbJj.zzbJg.values()) {
                    dispatch.dispatch();
                }
            }
        });
    }

    public void zzQw() throws RemoteException {
        this.zzbJg.clear();
    }

    public void zza(String str, Bundle bundle, String str2, long j, boolean z) throws RemoteException {
        final zzaym com_google_android_gms_internal_zzaym = new zzaym(str, bundle, str2, new Date(j), z, this.zzbHp);
        this.zzbHn.execute(new Runnable(this) {
            final /* synthetic */ zzazn zzbJj;

            public void run() {
                if (this.zzbJj.zzbJg.isEmpty()) {
                    zzayx.e("TagManagerBackend emit called without loaded container.");
                    return;
                }
                for (zzayg zza : this.zzbJj.zzbJg.values()) {
                    zza.zza(com_google_android_gms_internal_zzaym);
                }
            }
        });
    }

    public void zza(String str, String str2, String str3, zzayu com_google_android_gms_internal_zzayu) throws RemoteException {
        final String str4 = str;
        final String str5 = str2;
        final String str6 = str3;
        final zzayu com_google_android_gms_internal_zzayu2 = com_google_android_gms_internal_zzayu;
        this.zzbHn.execute(new Runnable(this) {
            final /* synthetic */ zzazn zzbJj;

            public void run() {
                boolean z = true;
                try {
                    if (!this.zzbJj.zzbJg.containsKey(str4)) {
                        this.zzbJj.zzbJg.put(str4, this.zzbJj.zzbJh.zzm(str4, str5, str6));
                    }
                } catch (Throwable th) {
                    z = false;
                }
                try {
                    if (com_google_android_gms_internal_zzayu2 != null) {
                        com_google_android_gms_internal_zzayu2.zza(z, str4);
                    }
                } catch (Throwable e) {
                    zzayx.zzb("Error relaying callback", e);
                }
            }
        });
    }

    public void zzn(String str, String str2, String str3) throws RemoteException {
        zza(str, str2, str3, null);
    }
}
