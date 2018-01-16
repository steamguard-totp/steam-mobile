package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public final class zzabm extends Fragment implements zzaax {
    private static WeakHashMap<FragmentActivity, WeakReference<zzabm>> zzaBt = new WeakHashMap();
    private int zzJh = 0;
    private Map<String, zzaaw> zzaBu = new ArrayMap();
    private Bundle zzaBv;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.internal.zzabm zza(android.support.v4.app.FragmentActivity r3) {
        /*
        r0 = zzaBt;
        r0 = r0.get(r3);
        r0 = (java.lang.ref.WeakReference) r0;
        if (r0 == 0) goto L_0x0013;
    L_0x000a:
        r0 = r0.get();
        r0 = (com.google.android.gms.internal.zzabm) r0;
        if (r0 == 0) goto L_0x0013;
    L_0x0012:
        return r0;
    L_0x0013:
        r0 = r3.getSupportFragmentManager();	 Catch:{ ClassCastException -> 0x0048 }
        r1 = "SupportLifecycleFragmentImpl";
        r0 = r0.findFragmentByTag(r1);	 Catch:{ ClassCastException -> 0x0048 }
        r0 = (com.google.android.gms.internal.zzabm) r0;	 Catch:{ ClassCastException -> 0x0048 }
        if (r0 == 0) goto L_0x0027;
    L_0x0021:
        r1 = r0.isRemoving();
        if (r1 == 0) goto L_0x003d;
    L_0x0027:
        r0 = new com.google.android.gms.internal.zzabm;
        r0.<init>();
        r1 = r3.getSupportFragmentManager();
        r1 = r1.beginTransaction();
        r2 = "SupportLifecycleFragmentImpl";
        r1 = r1.add(r0, r2);
        r1.commitAllowingStateLoss();
    L_0x003d:
        r1 = zzaBt;
        r2 = new java.lang.ref.WeakReference;
        r2.<init>(r0);
        r1.put(r3, r2);
        goto L_0x0012;
    L_0x0048:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl";
        r1.<init>(r2, r0);
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzabm.zza(android.support.v4.app.FragmentActivity):com.google.android.gms.internal.zzabm");
    }

    private void zzb(final String str, final zzaaw com_google_android_gms_internal_zzaaw) {
        if (this.zzJh > 0) {
            new Handler(Looper.getMainLooper()).post(new Runnable(this) {
                final /* synthetic */ zzabm zzaBL;

                public void run() {
                    if (this.zzaBL.zzJh >= 1) {
                        com_google_android_gms_internal_zzaaw.onCreate(this.zzaBL.zzaBv != null ? this.zzaBL.zzaBv.getBundle(str) : null);
                    }
                    if (this.zzaBL.zzJh >= 2) {
                        com_google_android_gms_internal_zzaaw.onStart();
                    }
                    if (this.zzaBL.zzJh >= 3) {
                        com_google_android_gms_internal_zzaaw.onStop();
                    }
                    this.zzaBL.zzJh;
                }
            });
        }
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (zzaaw dump : this.zzaBu.values()) {
            dump.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (zzaaw onActivityResult : this.zzaBu.values()) {
            onActivityResult.onActivityResult(i, i2, intent);
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzJh = 1;
        this.zzaBv = bundle;
        for (Entry entry : this.zzaBu.entrySet()) {
            ((zzaaw) entry.getValue()).onCreate(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    public void onDestroy() {
        super.onDestroy();
        this.zzJh = 4;
        Iterator it = this.zzaBu.values().iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Entry entry : this.zzaBu.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((zzaaw) entry.getValue()).onSaveInstanceState(bundle2);
                bundle.putBundle((String) entry.getKey(), bundle2);
            }
        }
    }

    public void onStart() {
        super.onStart();
        this.zzJh = 2;
        for (zzaaw onStart : this.zzaBu.values()) {
            onStart.onStart();
        }
    }

    public void onStop() {
        super.onStop();
        this.zzJh = 3;
        for (zzaaw onStop : this.zzaBu.values()) {
            onStop.onStop();
        }
    }

    public <T extends zzaaw> T zza(String str, Class<T> cls) {
        return (zzaaw) cls.cast(this.zzaBu.get(str));
    }

    public void zza(String str, zzaaw com_google_android_gms_internal_zzaaw) {
        if (this.zzaBu.containsKey(str)) {
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 59).append("LifecycleCallback with tag ").append(str).append(" already added to this fragment.").toString());
        }
        this.zzaBu.put(str, com_google_android_gms_internal_zzaaw);
        zzb(str, com_google_android_gms_internal_zzaaw);
    }

    public /* synthetic */ Activity zzwo() {
        return zzws();
    }

    public FragmentActivity zzws() {
        return getActivity();
    }
}
