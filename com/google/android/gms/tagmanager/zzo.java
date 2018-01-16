package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;
import com.google.android.gms.common.api.Status;

class zzo implements ContainerHolder {
    private boolean zzaKt;
    private Status zzahq;
    private Container zzbDa;
    private Container zzbDb;
    private zzb zzbDc;
    private zza zzbDd;
    private TagManager zzbDe;

    public interface zza {
        String zzOC();
    }

    private class zzb extends Handler {
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Object obj = message.obj;
                    return;
                default:
                    zzbo.e("Don't know how to handle this message.");
                    return;
            }
        }
    }

    String getContainerId() {
        if (!this.zzaKt) {
            return this.zzbDa.getContainerId();
        }
        zzbo.e("getContainerId called on a released ContainerHolder.");
        return "";
    }

    public Status getStatus() {
        return this.zzahq;
    }

    public synchronized void refresh() {
        if (this.zzaKt) {
            zzbo.e("Refreshing a released ContainerHolder.");
        }
    }

    public synchronized void release() {
        if (this.zzaKt) {
            zzbo.e("Releasing a released ContainerHolder.");
        } else {
            this.zzaKt = true;
            this.zzbDe.zzb(this);
            this.zzbDa.release();
            this.zzbDa = null;
            this.zzbDb = null;
            this.zzbDd = null;
            this.zzbDc = null;
        }
    }

    String zzOC() {
        if (!this.zzaKt) {
            return this.zzbDd.zzOC();
        }
        zzbo.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        return "";
    }

    public synchronized void zzgX(String str) {
        if (!this.zzaKt) {
            this.zzbDa.zzgX(str);
        }
    }

    void zzgZ(String str) {
        if (this.zzaKt) {
            zzbo.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        }
    }
}
