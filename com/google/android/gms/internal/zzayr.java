package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

class zzayr extends Thread implements zzayq {
    private static zzayr zzbHN;
    private volatile boolean mClosed = false;
    private final Context mContext;
    private volatile boolean zzMS = false;
    private final LinkedBlockingQueue<Runnable> zzbEn = new LinkedBlockingQueue();
    private volatile zzays zzbHO;
    private final zze zzuI = zzh.zzyv();

    private zzayr(Context context) {
        super("GAThread");
        if (context != null) {
            this.mContext = context.getApplicationContext();
        } else {
            this.mContext = context;
        }
        start();
    }

    static zzayr zzbN(Context context) {
        if (zzbHN == null) {
            zzbHN = new zzayr(context);
        }
        return zzbHN;
    }

    private String zzg(Throwable th) {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PrintStream printStream = new PrintStream(byteArrayOutputStream);
        th.printStackTrace(printStream);
        printStream.flush();
        return new String(byteArrayOutputStream.toByteArray());
    }

    public void run() {
        while (true) {
            boolean z = this.mClosed;
            try {
                Runnable runnable = (Runnable) this.zzbEn.take();
                if (!this.zzMS) {
                    runnable.run();
                }
            } catch (InterruptedException e) {
                zzayx.zzbd(e.toString());
            } catch (Throwable th) {
                String str = "Error on Google TagManager Thread: ";
                String valueOf = String.valueOf(zzg(th));
                zzayx.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                zzayx.e("Google TagManager is shutting down.");
                this.zzMS = true;
            }
        }
    }

    void zza(String str, long j, String str2, String str3, Map<String, String> map, String str4) {
        final zzayr com_google_android_gms_internal_zzayr = this;
        final long j2 = j;
        final String str5 = str;
        final String str6 = str2;
        final String str7 = str3;
        final Map<String, String> map2 = map;
        final String str8 = str4;
        zzp(new Runnable(this) {
            final /* synthetic */ zzayr zzbHU;

            public void run() {
                if (this.zzbHU.zzbHO == null) {
                    zzazj zzQM = zzazj.zzQM();
                    zzQM.zza(this.zzbHU.mContext, com_google_android_gms_internal_zzayr);
                    this.zzbHU.zzbHO = zzQM.zzQN();
                }
                this.zzbHU.zzbHO.zza(j2, str5, str6, str7, map2, str8);
            }
        });
    }

    public void zzb(String str, String str2, String str3, Map<String, String> map, String str4) {
        zza(str, this.zzuI.currentTimeMillis(), str2, str3, map, str4);
    }

    public void zzp(Runnable runnable) {
        this.zzbEn.add(runnable);
    }
}
