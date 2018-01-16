package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.v4.util.SimpleArrayMap;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ViewSwitcher;
import com.google.android.gms.ads.internal.purchase.zzk;
import com.google.android.gms.internal.zzav;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzek;
import com.google.android.gms.internal.zzel;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzfn;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzgw;
import com.google.android.gms.internal.zzhj;
import com.google.android.gms.internal.zzhk;
import com.google.android.gms.internal.zzhl;
import com.google.android.gms.internal.zzhm;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzld;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zznt;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzow;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpd;
import com.google.android.gms.internal.zzpe;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpl;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import com.google.android.gms.internal.zzqp;
import com.google.android.gms.internal.zzqq;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;

@zzmb
public final class zzw implements OnGlobalLayoutListener, OnScrollChangedListener {
    public final Context zzqr;
    boolean zztH;
    zznt zzvA;
    List<String> zzvB;
    zzk zzvC;
    public zzpb zzvD;
    View zzvE;
    public int zzvF;
    boolean zzvG;
    private HashSet<zzow> zzvH;
    private int zzvI;
    private int zzvJ;
    private zzpt zzvK;
    private boolean zzvL;
    private boolean zzvM;
    private boolean zzvN;
    final String zzvc;
    public String zzvd;
    final zzav zzve;
    public final zzqa zzvf;
    zza zzvg;
    public zzpd zzvh;
    public zzpk zzvi;
    public zzec zzvj;
    public zzov zzvk;
    public com.google.android.gms.internal.zzov.zza zzvl;
    public zzow zzvm;
    zzek zzvn;
    zzel zzvo;
    zzer zzvp;
    zzet zzvq;
    zzkz zzvr;
    zzld zzvs;
    zzhj zzvt;
    zzhk zzvu;
    SimpleArrayMap<String, zzhl> zzvv;
    SimpleArrayMap<String, zzhm> zzvw;
    zzgw zzvx;
    zzfn zzvy;
    zzgj zzvz;

    public static class zza extends ViewSwitcher {
        private final zzpl zzvO;
        private final zzpw zzvP;
        private boolean zzvQ = true;

        public zza(Context context, String str, OnGlobalLayoutListener onGlobalLayoutListener, OnScrollChangedListener onScrollChangedListener) {
            super(context);
            this.zzvO = new zzpl(context);
            this.zzvO.setAdUnitId(str);
            if (context instanceof Activity) {
                this.zzvP = new zzpw((Activity) context, this, onGlobalLayoutListener, onScrollChangedListener);
            } else {
                this.zzvP = new zzpw(null, this, onGlobalLayoutListener, onScrollChangedListener);
            }
            this.zzvP.zzkE();
        }

        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.zzvP != null) {
                this.zzvP.onAttachedToWindow();
            }
        }

        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.zzvP != null) {
                this.zzvP.onDetachedFromWindow();
            }
        }

        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (this.zzvQ) {
                this.zzvO.zzg(motionEvent);
            }
            return false;
        }

        public void removeAllViews() {
            List<zzqp> arrayList = new ArrayList();
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (childAt != null && (childAt instanceof zzqp)) {
                    arrayList.add((zzqp) childAt);
                }
            }
            super.removeAllViews();
            for (zzqp destroy : arrayList) {
                destroy.destroy();
            }
        }

        public void zzdo() {
            zzpe.v("Disable position monitoring on adFrame.");
            if (this.zzvP != null) {
                this.zzvP.zzkF();
            }
        }

        public zzpl zzds() {
            return this.zzvO;
        }

        public void zzdt() {
            zzpe.v("Enable debug gesture detector on adFrame.");
            this.zzvQ = true;
        }

        public void zzdu() {
            zzpe.v("Disable debug gesture detector on adFrame.");
            this.zzvQ = false;
        }
    }

    public zzw(Context context, zzec com_google_android_gms_internal_zzec, String str, zzqa com_google_android_gms_internal_zzqa) {
        this(context, com_google_android_gms_internal_zzec, str, com_google_android_gms_internal_zzqa, null);
    }

    zzw(Context context, zzec com_google_android_gms_internal_zzec, String str, zzqa com_google_android_gms_internal_zzqa, zzav com_google_android_gms_internal_zzav) {
        this.zzvD = null;
        this.zzvE = null;
        this.zzvF = 0;
        this.zzvG = false;
        this.zztH = false;
        this.zzvH = null;
        this.zzvI = -1;
        this.zzvJ = -1;
        this.zzvL = true;
        this.zzvM = true;
        this.zzvN = false;
        zzfx.initialize(context);
        if (zzv.zzcN().zzjN() != null) {
            List zzfo = zzfx.zzfo();
            if (com_google_android_gms_internal_zzqa.zzYb != 0) {
                zzfo.add(Integer.toString(com_google_android_gms_internal_zzqa.zzYb));
            }
            zzv.zzcN().zzjN().zzc(zzfo);
        }
        this.zzvc = UUID.randomUUID().toString();
        if (com_google_android_gms_internal_zzec.zzzl || com_google_android_gms_internal_zzec.zzzn) {
            this.zzvg = null;
        } else {
            this.zzvg = new zza(context, str, this, this);
            this.zzvg.setMinimumWidth(com_google_android_gms_internal_zzec.widthPixels);
            this.zzvg.setMinimumHeight(com_google_android_gms_internal_zzec.heightPixels);
            this.zzvg.setVisibility(4);
        }
        this.zzvj = com_google_android_gms_internal_zzec;
        this.zzvd = str;
        this.zzqr = context;
        this.zzvf = com_google_android_gms_internal_zzqa;
        if (com_google_android_gms_internal_zzav == null) {
            com_google_android_gms_internal_zzav = new zzav(new zzi(this));
        }
        this.zzve = com_google_android_gms_internal_zzav;
        this.zzvK = new zzpt(200);
        this.zzvw = new SimpleArrayMap();
    }

    private void zzdp() {
        if (this.zzvg != null) {
            View findViewById = this.zzvg.getRootView().findViewById(16908290);
            if (findViewById != null) {
                Rect rect = new Rect();
                Rect rect2 = new Rect();
                this.zzvg.getGlobalVisibleRect(rect);
                findViewById.getGlobalVisibleRect(rect2);
                if (rect.top != rect2.top) {
                    this.zzvL = false;
                }
                if (rect.bottom != rect2.bottom) {
                    this.zzvM = false;
                }
            }
        }
    }

    private void zzh(boolean z) {
        boolean z2 = true;
        if (this.zzvg != null && this.zzvk != null && this.zzvk.zzMZ != null && this.zzvk.zzMZ.zzkV() != null) {
            if (!z || this.zzvK.tryAcquire()) {
                if (this.zzvk.zzMZ.zzkV().zzdz()) {
                    int[] iArr = new int[2];
                    this.zzvg.getLocationOnScreen(iArr);
                    int zzc = zzeh.zzeO().zzc(this.zzqr, iArr[0]);
                    int zzc2 = zzeh.zzeO().zzc(this.zzqr, iArr[1]);
                    if (!(zzc == this.zzvI && zzc2 == this.zzvJ)) {
                        this.zzvI = zzc;
                        this.zzvJ = zzc2;
                        zzqq zzkV = this.zzvk.zzMZ.zzkV();
                        zzc = this.zzvI;
                        int i = this.zzvJ;
                        if (z) {
                            z2 = false;
                        }
                        zzkV.zza(zzc, i, z2);
                    }
                }
                zzdp();
            }
        }
    }

    public void destroy() {
        zzdo();
        this.zzvo = null;
        this.zzvp = null;
        this.zzvs = null;
        this.zzvr = null;
        this.zzvz = null;
        this.zzvq = null;
        zzi(false);
        if (this.zzvg != null) {
            this.zzvg.removeAllViews();
        }
        zzdj();
        zzdl();
        this.zzvk = null;
    }

    public void onGlobalLayout() {
        zzh(false);
    }

    public void onScrollChanged() {
        zzh(true);
        this.zzvN = true;
    }

    public void zza(HashSet<zzow> hashSet) {
        this.zzvH = hashSet;
    }

    public HashSet<zzow> zzdi() {
        return this.zzvH;
    }

    public void zzdj() {
        if (this.zzvk != null && this.zzvk.zzMZ != null) {
            this.zzvk.zzMZ.destroy();
        }
    }

    public void zzdk() {
        if (this.zzvk != null && this.zzvk.zzMZ != null) {
            this.zzvk.zzMZ.stopLoading();
        }
    }

    public void zzdl() {
        if (this.zzvk != null && this.zzvk.zzKB != null) {
            try {
                this.zzvk.zzKB.destroy();
            } catch (RemoteException e) {
                zzpy.zzbe("Could not destroy mediation adapter.");
            }
        }
    }

    public boolean zzdm() {
        return this.zzvF == 0;
    }

    public boolean zzdn() {
        return this.zzvF == 1;
    }

    public void zzdo() {
        if (this.zzvg != null) {
            this.zzvg.zzdo();
        }
    }

    public String zzdq() {
        return (this.zzvL && this.zzvM) ? "" : this.zzvL ? this.zzvN ? "top-scrollable" : "top-locked" : this.zzvM ? this.zzvN ? "bottom-scrollable" : "bottom-locked" : "";
    }

    public void zzdr() {
        if (this.zzvm != null) {
            if (this.zzvk != null) {
                this.zzvm.zzm(this.zzvk.zzVv);
                this.zzvm.zzn(this.zzvk.zzVw);
                this.zzvm.zzD(this.zzvk.zzRK);
            }
            this.zzvm.zzC(this.zzvj.zzzl);
        }
    }

    public void zzi(boolean z) {
        if (this.zzvF == 0) {
            zzdk();
        }
        if (this.zzvh != null) {
            this.zzvh.cancel();
        }
        if (this.zzvi != null) {
            this.zzvi.cancel();
        }
        if (z) {
            this.zzvk = null;
        }
    }
}
