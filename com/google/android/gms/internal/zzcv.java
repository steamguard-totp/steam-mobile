package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzv;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;

@TargetApi(14)
@zzmb
public class zzcv implements ActivityLifecycleCallbacks, OnAttachStateChangeListener, OnGlobalLayoutListener, OnScrollChangedListener {
    private static final long zzwH = ((Long) zzfx.zzCO.get()).longValue();
    private zzpt zzvK = new zzpt(zzwH);
    private final Context zzvZ;
    private Application zzwI;
    private WeakReference<ViewTreeObserver> zzwJ;
    WeakReference<View> zzwK;
    private zzcw zzwL;
    private int zzwM = -1;
    private HashSet<zzb> zzwN = new HashSet();
    private DisplayMetrics zzwO;
    private final WindowManager zzwf;
    private final PowerManager zzwg;
    private final KeyguardManager zzwh;
    private boolean zzwn = false;
    BroadcastReceiver zzwo;

    public static class zza {
        public final long timestamp;
        public final boolean zzwQ;
        public final boolean zzwR;
        public final int zzwS;
        public final Rect zzwT;
        public final Rect zzwU;
        public final Rect zzwV;
        public final boolean zzwW;
        public final Rect zzwX;
        public final boolean zzwY;
        public final Rect zzwZ;
        public final float zzxa;
        public final boolean zzxb;

        public zza(long j, boolean z, boolean z2, int i, Rect rect, Rect rect2, Rect rect3, boolean z3, Rect rect4, boolean z4, Rect rect5, float f, boolean z5) {
            this.timestamp = j;
            this.zzwQ = z;
            this.zzwR = z2;
            this.zzwS = i;
            this.zzwT = rect;
            this.zzwU = rect2;
            this.zzwV = rect3;
            this.zzwW = z3;
            this.zzwX = rect4;
            this.zzwY = z4;
            this.zzwZ = rect5;
            this.zzxa = f;
            this.zzxb = z5;
        }
    }

    public interface zzb {
        void zza(zza com_google_android_gms_internal_zzcv_zza);
    }

    public zzcv(Context context, View view) {
        this.zzvZ = context.getApplicationContext();
        this.zzwf = (WindowManager) context.getSystemService("window");
        this.zzwg = (PowerManager) this.zzvZ.getSystemService("power");
        this.zzwh = (KeyguardManager) context.getSystemService("keyguard");
        if (this.zzvZ instanceof Application) {
            this.zzwI = (Application) this.zzvZ;
            this.zzwL = new zzcw((Application) this.zzvZ, this);
        }
        this.zzwO = context.getResources().getDisplayMetrics();
        zze(view);
    }

    private void zza(Activity activity, int i) {
        if (this.zzwK != null) {
            Window window = activity.getWindow();
            if (window != null) {
                View peekDecorView = window.peekDecorView();
                View view = (View) this.zzwK.get();
                if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                    this.zzwM = i;
                }
            }
        }
    }

    private void zzdB() {
        if (this.zzwo == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.zzwo = new BroadcastReceiver(this) {
                final /* synthetic */ zzcv zzwP;

                {
                    this.zzwP = r1;
                }

                public void onReceive(Context context, Intent intent) {
                    this.zzwP.zzl(3);
                }
            };
            this.zzvZ.registerReceiver(this.zzwo, intentFilter);
        }
    }

    private void zzdC() {
        if (this.zzwo != null) {
            try {
                this.zzvZ.unregisterReceiver(this.zzwo);
            } catch (Throwable e) {
                zzpy.zzb("Failed trying to unregister the receiver", e);
            } catch (Throwable e2) {
                zzv.zzcN().zza(e2, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.zzwo = null;
        }
    }

    private void zzdT() {
        zzv.zzcJ();
        zzpi.zzWR.post(new Runnable(this) {
            final /* synthetic */ zzcv zzwP;

            {
                this.zzwP = r1;
            }

            public void run() {
                this.zzwP.zzl(3);
            }
        });
    }

    private void zzf(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzwJ = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        zzdB();
        if (this.zzwI != null) {
            try {
                this.zzwI.registerActivityLifecycleCallbacks(this.zzwL);
            } catch (Throwable e) {
                zzpy.zzb("Error registering activity lifecycle callbacks.", e);
            }
        }
    }

    private void zzg(View view) {
        ViewTreeObserver viewTreeObserver;
        try {
            if (this.zzwJ != null) {
                viewTreeObserver = (ViewTreeObserver) this.zzwJ.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzwJ = null;
            }
        } catch (Throwable e) {
            zzpy.zzb("Error while unregistering listeners from the last ViewTreeObserver.", e);
        }
        try {
            viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnScrollChangedListener(this);
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
        } catch (Throwable e2) {
            zzpy.zzb("Error while unregistering listeners from the ViewTreeObserver.", e2);
        }
        zzdC();
        if (this.zzwI != null) {
            try {
                this.zzwI.unregisterActivityLifecycleCallbacks(this.zzwL);
            } catch (Throwable e22) {
                zzpy.zzb("Error registering activity lifecycle callbacks.", e22);
            }
        }
    }

    private void zzl(int i) {
        if (this.zzwN.size() != 0 && this.zzwK != null) {
            View view = (View) this.zzwK.get();
            Object obj = i == 1 ? 1 : null;
            Object obj2 = view == null ? 1 : null;
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            boolean z = false;
            Rect rect3 = new Rect();
            boolean z2 = false;
            Rect rect4 = new Rect();
            Rect rect5 = new Rect();
            rect5.right = this.zzwf.getDefaultDisplay().getWidth();
            rect5.bottom = this.zzwf.getDefaultDisplay().getHeight();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            if (view != null) {
                z = view.getGlobalVisibleRect(rect2);
                z2 = view.getLocalVisibleRect(rect3);
                view.getHitRect(rect4);
                try {
                    view.getLocationOnScreen(iArr);
                    view.getLocationInWindow(iArr2);
                } catch (Throwable e) {
                    zzpy.zzb("Failure getting view location.", e);
                }
                rect.left = iArr[0];
                rect.top = iArr[1];
                rect.right = rect.left + view.getWidth();
                rect.bottom = rect.top + view.getHeight();
            }
            int windowVisibility = view != null ? view.getWindowVisibility() : 8;
            if (this.zzwM != -1) {
                windowVisibility = this.zzwM;
            }
            boolean z3 = obj2 == null && zzv.zzcJ().zza(view, this.zzwg, this.zzwh) && z && z2 && windowVisibility == 0;
            if (obj != null && !this.zzvK.tryAcquire() && z3 == this.zzwn) {
                return;
            }
            if (z3 || this.zzwn || i != 1) {
                zza com_google_android_gms_internal_zzcv_zza = new zza(zzv.zzcP().elapsedRealtime(), this.zzwg.isScreenOn(), view != null ? zzv.zzcL().isAttachedToWindow(view) : false, view != null ? view.getWindowVisibility() : 8, zza(rect5), zza(rect), zza(rect2), z, zza(rect3), z2, zza(rect4), this.zzwO.density, z3);
                Iterator it = this.zzwN.iterator();
                while (it.hasNext()) {
                    ((zzb) it.next()).zza(com_google_android_gms_internal_zzcv_zza);
                }
                this.zzwn = z3;
            }
        }
    }

    private int zzm(int i) {
        return (int) (((float) i) / this.zzwO.density);
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        zza(activity, 0);
        zzl(3);
        zzdT();
    }

    public void onActivityDestroyed(Activity activity) {
        zzl(3);
        zzdT();
    }

    public void onActivityPaused(Activity activity) {
        zza(activity, 4);
        zzl(3);
        zzdT();
    }

    public void onActivityResumed(Activity activity) {
        zza(activity, 0);
        zzl(3);
        zzdT();
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzl(3);
        zzdT();
    }

    public void onActivityStarted(Activity activity) {
        zza(activity, 0);
        zzl(3);
        zzdT();
    }

    public void onActivityStopped(Activity activity) {
        zzl(3);
        zzdT();
    }

    public void onGlobalLayout() {
        zzl(2);
    }

    public void onScrollChanged() {
        zzl(1);
    }

    public void onViewAttachedToWindow(View view) {
        this.zzwM = -1;
        zzf(view);
        zzl(3);
    }

    public void onViewDetachedFromWindow(View view) {
        this.zzwM = -1;
        zzl(3);
        zzg(view);
    }

    Rect zza(Rect rect) {
        return new Rect(zzm(rect.left), zzm(rect.top), zzm(rect.right), zzm(rect.bottom));
    }

    public void zza(zzb com_google_android_gms_internal_zzcv_zzb) {
        this.zzwN.add(com_google_android_gms_internal_zzcv_zzb);
        zzl(3);
    }

    public void zze(View view) {
        View view2 = this.zzwK != null ? (View) this.zzwK.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzg(view2);
        }
        this.zzwK = new WeakReference(view);
        if (view != null) {
            if (zzv.zzcL().isAttachedToWindow(view)) {
                zzf(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }
}
