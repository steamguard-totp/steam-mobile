package com.google.android.gms.tagmanager;

class zzdc extends zzdb {
    private static final Object zzbFZ = new Object();
    private static zzdc zzbGl;
    private boolean connected = true;
    private zzaw zzbGb;
    private volatile zzau zzbGc;
    private int zzbGd = 1800000;
    private boolean zzbGe = true;
    private boolean zzbGf = false;
    private boolean zzbGg = true;
    private zzax zzbGh = new zzax(this) {
        final /* synthetic */ zzdc zzbGm;

        {
            this.zzbGm = r1;
        }
    };
    private boolean zzbGk = false;

    private zzdc() {
    }

    public static zzdc zzPT() {
        if (zzbGl == null) {
            zzbGl = new zzdc();
        }
        return zzbGl;
    }

    public synchronized void dispatch() {
        if (this.zzbGf) {
            zzau com_google_android_gms_tagmanager_zzau = this.zzbGc;
            AnonymousClass2 anonymousClass2 = new Runnable(this) {
                final /* synthetic */ zzdc zzbGm;

                {
                    this.zzbGm = r1;
                }

                public void run() {
                    this.zzbGm.zzbGb;
                }
            };
        } else {
            zzbo.v("Dispatch call queued. Dispatch will run once initialization is complete.");
            this.zzbGe = true;
        }
    }
}
