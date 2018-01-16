package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.internal.zzc;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpe;
import com.google.android.gms.internal.zzpi;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqp;
import java.util.HashMap;
import java.util.Map;

@zzmb
public class zzl extends FrameLayout implements zzi {
    private final zzqp zzGt;
    private String zzHV;
    private final FrameLayout zzNl;
    private final zzgf zzNm;
    private final zzaa zzNn;
    private final long zzNo;
    private zzj zzNp;
    private boolean zzNq;
    private boolean zzNr;
    private boolean zzNs;
    private boolean zzNt;
    private long zzNu;
    private long zzNv;
    private Bitmap zzNw;
    private ImageView zzNx;
    private boolean zzNy;

    public zzl(Context context, zzqp com_google_android_gms_internal_zzqp, int i, boolean z, zzgf com_google_android_gms_internal_zzgf) {
        super(context);
        this.zzGt = com_google_android_gms_internal_zzqp;
        this.zzNm = com_google_android_gms_internal_zzgf;
        this.zzNl = new FrameLayout(context);
        addView(this.zzNl, new LayoutParams(-1, -1));
        zzc.zzt(com_google_android_gms_internal_zzqp.zzbz());
        this.zzNp = com_google_android_gms_internal_zzqp.zzbz().zzsN.zza(context, com_google_android_gms_internal_zzqp, i, z, com_google_android_gms_internal_zzgf);
        if (this.zzNp != null) {
            this.zzNl.addView(this.zzNp, new LayoutParams(-1, -1, 17));
            if (((Boolean) zzfx.zzBr.get()).booleanValue()) {
                zzhG();
            }
        }
        this.zzNx = new ImageView(context);
        this.zzNo = ((Long) zzfx.zzBv.get()).longValue();
        this.zzNt = ((Boolean) zzfx.zzBt.get()).booleanValue();
        if (this.zzNm != null) {
            this.zzNm.zzg("spinner_used", this.zzNt ? "1" : "0");
        }
        this.zzNn = new zzaa(this);
        this.zzNn.zzid();
        if (this.zzNp != null) {
            this.zzNp.zza(this);
        }
        if (this.zzNp == null) {
            zzk("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    private void zza(String str, String... strArr) {
        Map hashMap = new HashMap();
        hashMap.put("event", str);
        int length = strArr.length;
        int i = 0;
        Object obj = null;
        while (i < length) {
            Object obj2 = strArr[i];
            if (obj != null) {
                hashMap.put(obj, obj2);
                obj2 = null;
            }
            i++;
            obj = obj2;
        }
        this.zzGt.zza("onVideoEvent", hashMap);
    }

    private void zzg(int i, int i2) {
        if (this.zzNt) {
            int max = Math.max(i / ((Integer) zzfx.zzBu.get()).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) zzfx.zzBu.get()).intValue(), 1);
            if (this.zzNw == null || this.zzNw.getWidth() != max || this.zzNw.getHeight() != max2) {
                this.zzNw = Bitmap.createBitmap(max, max2, Config.ARGB_8888);
                this.zzNy = false;
            }
        }
    }

    @TargetApi(14)
    private void zzhI() {
        if (this.zzNw != null) {
            long elapsedRealtime = zzv.zzcP().elapsedRealtime();
            if (this.zzNp.getBitmap(this.zzNw) != null) {
                this.zzNy = true;
            }
            elapsedRealtime = zzv.zzcP().elapsedRealtime() - elapsedRealtime;
            if (zzpe.zzkh()) {
                zzpe.v("Spinner frame grab took " + elapsedRealtime + "ms");
            }
            if (elapsedRealtime > this.zzNo) {
                zzpy.zzbe("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.zzNt = false;
                this.zzNw = null;
                if (this.zzNm != null) {
                    this.zzNm.zzg("spinner_jank", Long.toString(elapsedRealtime));
                }
            }
        }
    }

    private void zzhJ() {
        if (this.zzNy && this.zzNw != null && !zzhL()) {
            this.zzNx.setImageBitmap(this.zzNw);
            this.zzNx.invalidate();
            this.zzNl.addView(this.zzNx, new LayoutParams(-1, -1));
            this.zzNl.bringChildToFront(this.zzNx);
        }
    }

    private void zzhK() {
        if (zzhL()) {
            this.zzNl.removeView(this.zzNx);
        }
    }

    private boolean zzhL() {
        return this.zzNx.getParent() != null;
    }

    private void zzhM() {
        if (this.zzGt.zzkR() != null && !this.zzNr) {
            this.zzNs = (this.zzGt.zzkR().getWindow().getAttributes().flags & 128) != 0;
            if (!this.zzNs) {
                this.zzGt.zzkR().getWindow().addFlags(128);
                this.zzNr = true;
            }
        }
    }

    private void zzhN() {
        if (this.zzGt.zzkR() != null && this.zzNr && !this.zzNs) {
            this.zzGt.zzkR().getWindow().clearFlags(128);
            this.zzNr = false;
        }
    }

    public static void zzi(zzqp com_google_android_gms_internal_zzqp) {
        Map hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        com_google_android_gms_internal_zzqp.zza("onVideoEvent", hashMap);
    }

    public void destroy() {
        this.zzNn.cancel();
        if (this.zzNp != null) {
            this.zzNp.stop();
        }
        zzhN();
    }

    public void onPaused() {
        zza("pause", new String[0]);
        zzhN();
        this.zzNq = false;
    }

    public void pause() {
        if (this.zzNp != null) {
            this.zzNp.pause();
        }
    }

    public void play() {
        if (this.zzNp != null) {
            this.zzNp.play();
        }
    }

    public void seekTo(int i) {
        if (this.zzNp != null) {
            this.zzNp.seekTo(i);
        }
    }

    public void zza(float f, float f2) {
        if (this.zzNp != null) {
            this.zzNp.zza(f, f2);
        }
    }

    public void zzaB(String str) {
        this.zzHV = str;
    }

    public void zzb(float f) {
        if (this.zzNp != null) {
            this.zzNp.zzb(f);
        }
    }

    public void zzd(int i, int i2, int i3, int i4) {
        if (i3 != 0 && i4 != 0) {
            ViewGroup.LayoutParams layoutParams = new LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.zzNl.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    public void zzf(int i, int i2) {
        zzg(i, i2);
    }

    @TargetApi(14)
    public void zzf(MotionEvent motionEvent) {
        if (this.zzNp != null) {
            this.zzNp.dispatchTouchEvent(motionEvent);
        }
    }

    public void zzgq() {
        if (this.zzNp != null) {
            if (TextUtils.isEmpty(this.zzHV)) {
                zza("no_src", new String[0]);
            } else {
                this.zzNp.setVideoPath(this.zzHV);
            }
        }
    }

    public void zzhA() {
        zzhM();
        this.zzNq = true;
    }

    public void zzhB() {
        zza("ended", new String[0]);
        zzhN();
    }

    public void zzhC() {
        zzhJ();
        this.zzNv = this.zzNu;
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzl zzNz;

            {
                this.zzNz = r1;
            }

            public void run() {
                this.zzNz.zza("surfaceDestroyed", new String[0]);
            }
        });
    }

    public void zzhD() {
        if (this.zzNq) {
            zzhK();
        }
        zzhI();
    }

    public void zzhE() {
        if (this.zzNp != null) {
            this.zzNp.zzhE();
        }
    }

    public void zzhF() {
        if (this.zzNp != null) {
            this.zzNp.zzhF();
        }
    }

    @TargetApi(14)
    public void zzhG() {
        if (this.zzNp != null) {
            View textView = new TextView(this.zzNp.getContext());
            String str = "AdMob - ";
            String valueOf = String.valueOf(this.zzNp.zzhd());
            textView.setText(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            textView.setTextColor(-65536);
            textView.setBackgroundColor(-256);
            this.zzNl.addView(textView, new LayoutParams(-2, -2, 17));
            this.zzNl.bringChildToFront(textView);
        }
    }

    void zzhH() {
        if (this.zzNp != null) {
            long currentPosition = (long) this.zzNp.getCurrentPosition();
            if (this.zzNu != currentPosition && currentPosition > 0) {
                float f = ((float) currentPosition) / 1000.0f;
                zza("timeupdate", "time", String.valueOf(f));
                this.zzNu = currentPosition;
            }
        }
    }

    public void zzhy() {
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzl zzNz;

            {
                this.zzNz = r1;
            }

            public void run() {
                this.zzNz.zza("surfaceCreated", new String[0]);
            }
        });
    }

    public void zzhz() {
        if (this.zzNp != null && this.zzNv == 0) {
            float duration = ((float) this.zzNp.getDuration()) / 1000.0f;
            int videoWidth = this.zzNp.getVideoWidth();
            int videoHeight = this.zzNp.getVideoHeight();
            zza("canplaythrough", "duration", String.valueOf(duration), "videoWidth", String.valueOf(videoWidth), "videoHeight", String.valueOf(videoHeight));
        }
    }

    public void zzk(String str, String str2) {
        zza("error", "what", str, "extra", str2);
    }
}
