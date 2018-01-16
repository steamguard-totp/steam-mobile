package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.common.stats.zza;
import com.google.android.gms.tagmanager.TagManagerService;

public class zzazp implements ServiceConnection {
    private final Context mContext;
    private final zza zzaEG;
    private volatile boolean zzbJn;
    private volatile boolean zzbJo;
    private zzayv zzbJp;

    public zzazp(Context context) {
        this(context, zza.zzyc());
    }

    zzazp(Context context, zza com_google_android_gms_common_stats_zza) {
        this.zzbJn = false;
        this.zzbJo = false;
        this.mContext = context;
        this.zzaEG = com_google_android_gms_common_stats_zza;
    }

    private void zza(zzayu com_google_android_gms_internal_zzayu, String str) {
        if (com_google_android_gms_internal_zzayu != null) {
            try {
                com_google_android_gms_internal_zzayu.zza(false, str);
            } catch (Throwable e) {
                zzayx.zzb("Error - local callback should not throw RemoteException", e);
            }
        }
    }

    public void dispatch() {
        if (zzQV()) {
            try {
                this.zzbJp.dispatch();
            } catch (Throwable e) {
                zzayx.zzc("Error calling service to dispatch pending events", e);
            }
        }
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            this.zzbJp = zzayv.zza.zzff(iBinder);
            this.zzbJn = true;
            this.zzbJo = false;
            notifyAll();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            this.zzbJp = null;
            this.zzbJn = false;
            this.zzbJo = false;
        }
    }

    public boolean zzQV() {
        if (this.zzbJn) {
            return true;
        }
        synchronized (this) {
            if (this.zzbJn) {
                return true;
            }
            if (!this.zzbJo) {
                if (this.zzaEG.zza(this.mContext, new Intent(this.mContext, TagManagerService.class), (ServiceConnection) this, 1)) {
                    this.zzbJo = true;
                } else {
                    return false;
                }
            }
            while (this.zzbJo) {
                try {
                    wait();
                    this.zzbJo = false;
                } catch (Throwable e) {
                    zzayx.zzc("Error connecting to TagManagerService", e);
                    this.zzbJo = false;
                }
            }
            boolean z = this.zzbJn;
            return z;
        }
    }

    public boolean zzQW() {
        if (zzQV()) {
            try {
                this.zzbJp.zzQw();
                return true;
            } catch (Throwable e) {
                zzayx.zzc("Error in resetting service", e);
            }
        }
        return false;
    }

    public void zza(String str, Bundle bundle, String str2, long j, boolean z) {
        if (zzQV()) {
            try {
                this.zzbJp.zza(str, bundle, str2, j, z);
            } catch (Throwable e) {
                zzayx.zzc("Error calling service to emit event", e);
            }
        }
    }

    public void zzb(String str, String str2, String str3, zzayu com_google_android_gms_internal_zzayu) {
        if (zzQV()) {
            try {
                this.zzbJp.zza(str, str2, str3, com_google_android_gms_internal_zzayu);
                return;
            } catch (Throwable e) {
                zzayx.zzc("Error calling service to load container", e);
                zza(com_google_android_gms_internal_zzayu, str);
                return;
            }
        }
        zza(com_google_android_gms_internal_zzayu, str);
    }
}
