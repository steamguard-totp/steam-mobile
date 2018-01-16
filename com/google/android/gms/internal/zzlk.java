package com.google.android.gms.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View.MeasureSpec;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.zzv;

@zzmb
public class zzlk implements Runnable {
    protected final zzqp zzGt;
    private final Handler zzPu;
    private final long zzPv;
    private long zzPw;
    private com.google.android.gms.internal.zzqq.zza zzPx;
    protected boolean zzPy;
    protected boolean zzPz;
    private final int zzrG;
    private final int zzrH;

    protected final class zza extends AsyncTask<Void, Void, Boolean> {
        private final WebView zzPA;
        private Bitmap zzPB;
        final /* synthetic */ zzlk zzPC;

        public zza(zzlk com_google_android_gms_internal_zzlk, WebView webView) {
            this.zzPC = com_google_android_gms_internal_zzlk;
            this.zzPA = webView;
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return zzb((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            zza((Boolean) obj);
        }

        protected synchronized void onPreExecute() {
            this.zzPB = Bitmap.createBitmap(this.zzPC.zzrG, this.zzPC.zzrH, Config.ARGB_8888);
            this.zzPA.setVisibility(0);
            this.zzPA.measure(MeasureSpec.makeMeasureSpec(this.zzPC.zzrG, 0), MeasureSpec.makeMeasureSpec(this.zzPC.zzrH, 0));
            this.zzPA.layout(0, 0, this.zzPC.zzrG, this.zzPC.zzrH);
            this.zzPA.draw(new Canvas(this.zzPB));
            this.zzPA.invalidate();
        }

        protected void zza(Boolean bool) {
            zzlk.zzc(this.zzPC);
            if (bool.booleanValue() || this.zzPC.zziz() || this.zzPC.zzPw <= 0) {
                this.zzPC.zzPz = bool.booleanValue();
                this.zzPC.zzPx.zza(this.zzPC.zzGt, true);
            } else if (this.zzPC.zzPw > 0) {
                if (zzpy.zzai(2)) {
                    zzpy.zzbc("Ad not detected, scheduling another run.");
                }
                this.zzPC.zzPu.postDelayed(this.zzPC, this.zzPC.zzPv);
            }
        }

        protected synchronized Boolean zzb(Void... voidArr) {
            Boolean valueOf;
            int width = this.zzPB.getWidth();
            int height = this.zzPB.getHeight();
            if (width == 0 || height == 0) {
                valueOf = Boolean.valueOf(false);
            } else {
                int i = 0;
                for (int i2 = 0; i2 < width; i2 += 10) {
                    for (int i3 = 0; i3 < height; i3 += 10) {
                        if (this.zzPB.getPixel(i2, i3) != 0) {
                            i++;
                        }
                    }
                }
                valueOf = Boolean.valueOf(((double) i) / (((double) (width * height)) / 100.0d) > 0.1d);
            }
            return valueOf;
        }
    }

    public zzlk(com.google.android.gms.internal.zzqq.zza com_google_android_gms_internal_zzqq_zza, zzqp com_google_android_gms_internal_zzqp, int i, int i2) {
        this(com_google_android_gms_internal_zzqq_zza, com_google_android_gms_internal_zzqp, i, i2, 200, 50);
    }

    public zzlk(com.google.android.gms.internal.zzqq.zza com_google_android_gms_internal_zzqq_zza, zzqp com_google_android_gms_internal_zzqp, int i, int i2, long j, long j2) {
        this.zzPv = j;
        this.zzPw = j2;
        this.zzPu = new Handler(Looper.getMainLooper());
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzPx = com_google_android_gms_internal_zzqq_zza;
        this.zzPy = false;
        this.zzPz = false;
        this.zzrH = i2;
        this.zzrG = i;
    }

    static /* synthetic */ long zzc(zzlk com_google_android_gms_internal_zzlk) {
        long j = com_google_android_gms_internal_zzlk.zzPw - 1;
        com_google_android_gms_internal_zzlk.zzPw = j;
        return j;
    }

    public void run() {
        if (this.zzGt == null || zziz()) {
            this.zzPx.zza(this.zzGt, true);
        } else {
            new zza(this, this.zzGt.getWebView()).execute(new Void[0]);
        }
    }

    public void zza(zzmk com_google_android_gms_internal_zzmk) {
        zza(com_google_android_gms_internal_zzmk, new zzra(this, this.zzGt, com_google_android_gms_internal_zzmk.zzRR));
    }

    public void zza(zzmk com_google_android_gms_internal_zzmk, zzra com_google_android_gms_internal_zzra) {
        this.zzGt.setWebViewClient(com_google_android_gms_internal_zzra);
        this.zzGt.loadDataWithBaseURL(TextUtils.isEmpty(com_google_android_gms_internal_zzmk.zzNb) ? null : zzv.zzcJ().zzaV(com_google_android_gms_internal_zzmk.zzNb), com_google_android_gms_internal_zzmk.body, "text/html", "UTF-8", null);
    }

    public boolean zziA() {
        return this.zzPz;
    }

    public void zzix() {
        this.zzPu.postDelayed(this, this.zzPv);
    }

    public synchronized void zziy() {
        this.zzPy = true;
    }

    public synchronized boolean zziz() {
        return this.zzPy;
    }
}
