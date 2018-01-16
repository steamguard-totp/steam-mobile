package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.util.zzf;
import com.google.android.gms.internal.zzew.zza;
import java.util.HashMap;
import java.util.Map;

@zzmb
public class zzqu extends zza {
    private final zzqp zzGt;
    private boolean zzZA;
    private float zzZB;
    private float zzZC;
    private final float zzZw;
    private int zzZx;
    private zzex zzZy;
    private boolean zzZz;
    private final Object zzrN = new Object();
    private boolean zzrQ = true;

    public zzqu(zzqp com_google_android_gms_internal_zzqp, float f) {
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzZw = f;
    }

    private void zzbk(String str) {
        zzd(str, null);
    }

    private void zzd(String str, Map<String, String> map) {
        final Map hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("action", str);
        zzv.zzcJ().runOnUiThread(new Runnable(this) {
            final /* synthetic */ zzqu zzZE;

            public void run() {
                this.zzZE.zzGt.zza("pubVideoCmd", hashMap);
            }
        });
    }

    private void zzk(final int i, final int i2) {
        zzv.zzcJ().runOnUiThread(new Runnable(this) {
            final /* synthetic */ zzqu zzZE;

            public void run() {
                boolean z = false;
                synchronized (this.zzZE.zzrN) {
                    boolean z2 = i != i2;
                    boolean z3 = !this.zzZE.zzZz && i2 == 1;
                    boolean z4 = z2 && i2 == 1;
                    boolean z5 = z2 && i2 == 2;
                    z2 = z2 && i2 == 3;
                    zzqu com_google_android_gms_internal_zzqu = this.zzZE;
                    if (this.zzZE.zzZz || z3) {
                        z = true;
                    }
                    com_google_android_gms_internal_zzqu.zzZz = z;
                    if (this.zzZE.zzZy == null) {
                        return;
                    }
                    if (z3) {
                        try {
                            this.zzZE.zzZy.zzeT();
                        } catch (Throwable e) {
                            zzpy.zzc("Unable to call onVideoStart()", e);
                        }
                    }
                    if (z4) {
                        try {
                            this.zzZE.zzZy.zzeU();
                        } catch (Throwable e2) {
                            zzpy.zzc("Unable to call onVideoPlay()", e2);
                        }
                    }
                    if (z5) {
                        try {
                            this.zzZE.zzZy.zzeV();
                        } catch (Throwable e22) {
                            zzpy.zzc("Unable to call onVideoPause()", e22);
                        }
                    }
                    if (z2) {
                        try {
                            this.zzZE.zzZy.onVideoEnd();
                        } catch (Throwable e222) {
                            zzpy.zzc("Unable to call onVideoEnd()", e222);
                        }
                    }
                }
            }
        });
    }

    public float getAspectRatio() {
        float f;
        synchronized (this.zzrN) {
            f = this.zzZC;
        }
        return f;
    }

    public int getPlaybackState() {
        int i;
        synchronized (this.zzrN) {
            i = this.zzZx;
        }
        return i;
    }

    public boolean isMuted() {
        boolean z;
        synchronized (this.zzrN) {
            z = this.zzZA;
        }
        return z;
    }

    public void pause() {
        zzbk("pause");
    }

    public void play() {
        zzbk("play");
    }

    public void zzP(boolean z) {
        synchronized (this.zzrN) {
            this.zzrQ = z;
        }
        zzd("initialState", zzf.zze("muteStart", z ? "1" : "0"));
    }

    public void zza(float f, int i, boolean z, float f2) {
        int i2;
        synchronized (this.zzrN) {
            this.zzZB = f;
            this.zzZA = z;
            i2 = this.zzZx;
            this.zzZx = i;
            this.zzZC = f2;
        }
        zzk(i2, i);
    }

    public void zza(zzex com_google_android_gms_internal_zzex) {
        synchronized (this.zzrN) {
            this.zzZy = com_google_android_gms_internal_zzex;
        }
    }

    public float zzeR() {
        return this.zzZw;
    }

    public float zzeS() {
        float f;
        synchronized (this.zzrN) {
            f = this.zzZB;
        }
        return f;
    }

    public void zzn(boolean z) {
        zzbk(z ? "mute" : "unmute");
    }
}
