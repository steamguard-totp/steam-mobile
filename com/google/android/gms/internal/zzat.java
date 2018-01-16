package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.zzaf.zza;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public abstract class zzat extends zzar {
    private static final String TAG = zzat.class.getSimpleName();
    private static long startTime = 0;
    protected static volatile zzbc zzpC = null;
    protected static final Object zzpV = new Object();
    static boolean zzpW = false;
    protected boolean zzpX = false;
    protected String zzpY;
    protected boolean zzpZ = false;
    protected boolean zzqa = false;

    protected zzat(Context context, String str) {
        super(context);
        this.zzpY = str;
        this.zzpX = false;
    }

    protected zzat(Context context, String str, boolean z) {
        super(context);
        this.zzpY = str;
        this.zzpX = z;
    }

    static zzbd zza(zzbc com_google_android_gms_internal_zzbc, MotionEvent motionEvent, DisplayMetrics displayMetrics) throws zzaz {
        Throwable e;
        Method zzc = com_google_android_gms_internal_zzbc.zzc(zzay.zzaD(), zzay.zzaE());
        if (zzc == null || motionEvent == null) {
            throw new zzaz();
        }
        try {
            return new zzbd((String) zzc.invoke(null, new Object[]{motionEvent, displayMetrics}));
        } catch (IllegalAccessException e2) {
            e = e2;
            throw new zzaz(e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw new zzaz(e);
        }
    }

    protected static synchronized void zza(Context context, boolean z) {
        synchronized (zzat.class) {
            if (!zzpW) {
                startTime = zzbe.zzbc().longValue() / 1000;
                zzpC = zzb(context, z);
                zzpW = true;
            }
        }
    }

    private static void zza(zzbc com_google_android_gms_internal_zzbc) {
        List singletonList = Collections.singletonList(Context.class);
        com_google_android_gms_internal_zzbc.zza(zzay.zzaj(), zzay.zzak(), singletonList);
        com_google_android_gms_internal_zzbc.zza(zzay.zzat(), zzay.zzau(), singletonList);
        com_google_android_gms_internal_zzbc.zza(zzay.zzar(), zzay.zzas(), singletonList);
        com_google_android_gms_internal_zzbc.zza(zzay.zzad(), zzay.zzae(), singletonList);
        com_google_android_gms_internal_zzbc.zza(zzay.zzan(), zzay.zzao(), singletonList);
        com_google_android_gms_internal_zzbc.zza(zzay.zzZ(), zzay.zzaa(), singletonList);
        com_google_android_gms_internal_zzbc.zza(zzay.zzaF(), zzay.zzaG(), singletonList);
        singletonList = Arrays.asList(new Class[]{MotionEvent.class, DisplayMetrics.class});
        com_google_android_gms_internal_zzbc.zza(zzay.zzaD(), zzay.zzaE(), singletonList);
        com_google_android_gms_internal_zzbc.zza(zzay.zzaB(), zzay.zzaC(), singletonList);
        com_google_android_gms_internal_zzbc.zza(zzay.zzah(), zzay.zzai(), Collections.emptyList());
        com_google_android_gms_internal_zzbc.zza(zzay.zzaz(), zzay.zzaA(), Collections.emptyList());
        com_google_android_gms_internal_zzbc.zza(zzay.zzap(), zzay.zzaq(), Collections.emptyList());
        com_google_android_gms_internal_zzbc.zza(zzay.zzaf(), zzay.zzag(), Collections.emptyList());
        com_google_android_gms_internal_zzbc.zza(zzay.zzal(), zzay.zzam(), Collections.emptyList());
        com_google_android_gms_internal_zzbc.zza(zzay.zzax(), zzay.zzay(), Collections.emptyList());
        com_google_android_gms_internal_zzbc.zza(zzay.zzab(), zzay.zzac(), Arrays.asList(new Class[]{Context.class, Boolean.TYPE, Boolean.TYPE}));
        com_google_android_gms_internal_zzbc.zza(zzay.zzav(), zzay.zzaw(), Arrays.asList(new Class[]{StackTraceElement[].class}));
        com_google_android_gms_internal_zzbc.zza(zzay.zzaH(), zzay.zzaI(), Arrays.asList(new Class[]{View.class}));
    }

    private void zza(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza) {
        zzbd zza;
        zza.zza com_google_android_gms_internal_zzaf_zza_zza;
        int i = 0;
        try {
            zza = zza(com_google_android_gms_internal_zzbc, this.zzpI, this.zzpT);
            com_google_android_gms_internal_zzaf_zza.zzbm = zza.zzqM;
            com_google_android_gms_internal_zzaf_zza.zzbn = zza.zzqN;
            com_google_android_gms_internal_zzaf_zza.zzbo = zza.zzqO;
            if (this.zzpS) {
                com_google_android_gms_internal_zzaf_zza.zzbA = zza.zzce;
                com_google_android_gms_internal_zzaf_zza.zzbB = zza.zzcc;
            }
            if (((Boolean) zzfx.zzDq.get()).booleanValue() || ((Boolean) zzfx.zzDl.get()).booleanValue()) {
                com_google_android_gms_internal_zzaf_zza_zza = new zza.zza();
                zzbd zzb = zzb(this.zzpI);
                com_google_android_gms_internal_zzaf_zza_zza.zzbm = zzb.zzqM;
                com_google_android_gms_internal_zzaf_zza_zza.zzbn = zzb.zzqN;
                com_google_android_gms_internal_zzaf_zza_zza.zzch = zzb.zzqO;
                if (this.zzpS) {
                    com_google_android_gms_internal_zzaf_zza_zza.zzcc = zzb.zzcc;
                    com_google_android_gms_internal_zzaf_zza_zza.zzce = zzb.zzce;
                    com_google_android_gms_internal_zzaf_zza_zza.zzcg = Integer.valueOf(zzb.zzqP.longValue() != 0 ? 1 : 0);
                    if (this.zzpL > 0) {
                        com_google_android_gms_internal_zzaf_zza_zza.zzcd = this.zzpT != null ? Long.valueOf(Math.round(((double) this.zzpQ) / ((double) this.zzpL))) : null;
                        com_google_android_gms_internal_zzaf_zza_zza.zzcf = Long.valueOf(Math.round(((double) this.zzpP) / ((double) this.zzpL)));
                    }
                    com_google_android_gms_internal_zzaf_zza_zza.zzcj = zzb.zzcj;
                    com_google_android_gms_internal_zzaf_zza_zza.zzci = zzb.zzci;
                    com_google_android_gms_internal_zzaf_zza_zza.zzck = Integer.valueOf(zzb.zzqS.longValue() != 0 ? 1 : 0);
                    if (this.zzpO > 0) {
                        com_google_android_gms_internal_zzaf_zza_zza.zzcl = Long.valueOf(this.zzpO);
                    }
                }
                com_google_android_gms_internal_zzaf_zza.zzbR = com_google_android_gms_internal_zzaf_zza_zza;
            }
        } catch (zzaz e) {
        }
        if (this.zzpK > 0) {
            com_google_android_gms_internal_zzaf_zza.zzbF = Long.valueOf(this.zzpK);
        }
        if (this.zzpL > 0) {
            com_google_android_gms_internal_zzaf_zza.zzbE = Long.valueOf(this.zzpL);
        }
        if (this.zzpM > 0) {
            com_google_android_gms_internal_zzaf_zza.zzbD = Long.valueOf(this.zzpM);
        }
        if (this.zzpN > 0) {
            com_google_android_gms_internal_zzaf_zza.zzbG = Long.valueOf(this.zzpN);
        }
        try {
            int size = this.zzpJ.size() - 1;
            if (size > 0) {
                com_google_android_gms_internal_zzaf_zza.zzbS = new zza.zza[size];
                while (i < size) {
                    zza = zza(com_google_android_gms_internal_zzbc, (MotionEvent) this.zzpJ.get(i), this.zzpT);
                    com_google_android_gms_internal_zzaf_zza_zza = new zza.zza();
                    com_google_android_gms_internal_zzaf_zza_zza.zzbm = zza.zzqM;
                    com_google_android_gms_internal_zzaf_zza_zza.zzbn = zza.zzqN;
                    com_google_android_gms_internal_zzaf_zza.zzbS[i] = com_google_android_gms_internal_zzaf_zza_zza;
                    i++;
                }
            }
        } catch (zzaz e2) {
            com_google_android_gms_internal_zzaf_zza.zzbS = null;
        }
    }

    protected static zzbc zzb(Context context, boolean z) {
        if (zzpC == null) {
            synchronized (zzpV) {
                if (zzpC == null) {
                    zzbc zza = zzbc.zza(context, zzay.getKey(), zzay.zzY(), z);
                    zza(zza);
                    zzpC = zza;
                }
            }
        }
        return zzpC;
    }

    protected long zza(StackTraceElement[] stackTraceElementArr) throws zzaz {
        Throwable e;
        Method zzc = zzpC.zzc(zzay.zzav(), zzay.zzaw());
        if (zzc == null || stackTraceElementArr == null) {
            throw new zzaz();
        }
        try {
            return new zzba((String) zzc.invoke(null, new Object[]{stackTraceElementArr})).zzqm.longValue();
        } catch (IllegalAccessException e2) {
            e = e2;
            throw new zzaz(e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw new zzaz(e);
        }
    }

    protected zza zza(Context context, View view) {
        zza com_google_android_gms_internal_zzaf_zza = new zza();
        if (!TextUtils.isEmpty(this.zzpY)) {
            com_google_android_gms_internal_zzaf_zza.zzaZ = this.zzpY;
        }
        zzbc zzb = zzb(context, this.zzpX);
        zzb.zzba();
        zzb(zzb, com_google_android_gms_internal_zzaf_zza, view);
        zzb.zzbb();
        return com_google_android_gms_internal_zzaf_zza;
    }

    protected zza zza(Context context, zzad.zza com_google_android_gms_internal_zzad_zza) {
        zza com_google_android_gms_internal_zzaf_zza = new zza();
        if (!TextUtils.isEmpty(this.zzpY)) {
            com_google_android_gms_internal_zzaf_zza.zzaZ = this.zzpY;
        }
        zzbc zzb = zzb(context, this.zzpX);
        zzb.zzba();
        zza(zzb, com_google_android_gms_internal_zzaf_zza, com_google_android_gms_internal_zzad_zza);
        zzb.zzbb();
        return com_google_android_gms_internal_zzaf_zza;
    }

    protected List<Callable<Void>> zza(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza, View view) {
        ArrayList arrayList = new ArrayList();
        if (com_google_android_gms_internal_zzbc.zzaJ() == null) {
            return arrayList;
        }
        int zzT = com_google_android_gms_internal_zzbc.zzT();
        arrayList.add(new zzbn(com_google_android_gms_internal_zzbc, com_google_android_gms_internal_zzaf_zza));
        ArrayList arrayList2 = arrayList;
        arrayList2.add(new zzbq(com_google_android_gms_internal_zzbc, zzay.zzap(), zzay.zzaq(), com_google_android_gms_internal_zzaf_zza, zzT, 1));
        arrayList2 = arrayList;
        arrayList2.add(new zzbl(com_google_android_gms_internal_zzbc, zzay.zzah(), zzay.zzai(), com_google_android_gms_internal_zzaf_zza, startTime, zzT, 25));
        arrayList2 = arrayList;
        arrayList2.add(new zzbk(com_google_android_gms_internal_zzbc, zzay.zzaf(), zzay.zzag(), com_google_android_gms_internal_zzaf_zza, zzT, 44));
        arrayList2 = arrayList;
        arrayList2.add(new zzbg(com_google_android_gms_internal_zzbc, zzay.zzZ(), zzay.zzaa(), com_google_android_gms_internal_zzaf_zza, zzT, 3));
        arrayList2 = arrayList;
        arrayList2.add(new zzbo(com_google_android_gms_internal_zzbc, zzay.zzal(), zzay.zzam(), com_google_android_gms_internal_zzaf_zza, zzT, 22));
        if (((Boolean) zzfx.zzDw.get()).booleanValue() || ((Boolean) zzfx.zzDl.get()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new zzbj(com_google_android_gms_internal_zzbc, zzay.zzad(), zzay.zzae(), com_google_android_gms_internal_zzaf_zza, zzT, 5));
        }
        if (((Boolean) zzfx.zzDp.get()).booleanValue() || ((Boolean) zzfx.zzDl.get()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new zzbv(com_google_android_gms_internal_zzbc, zzay.zzaF(), zzay.zzaG(), com_google_android_gms_internal_zzaf_zza, zzT, 48));
        }
        if (((Boolean) zzfx.zzDu.get()).booleanValue() || ((Boolean) zzfx.zzDl.get()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new zzbt(com_google_android_gms_internal_zzbc, zzay.zzax(), zzay.zzay(), com_google_android_gms_internal_zzaf_zza, zzT, 51));
        }
        if (((Boolean) zzfx.zzDz.get()).booleanValue() || ((Boolean) zzfx.zzDl.get()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new zzbs(com_google_android_gms_internal_zzbc, zzay.zzav(), zzay.zzaw(), com_google_android_gms_internal_zzaf_zza, zzT, 45, new Throwable().getStackTrace()));
        }
        if (((Boolean) zzfx.zzDA.get()).booleanValue()) {
            arrayList2 = arrayList;
            arrayList2.add(new zzbw(com_google_android_gms_internal_zzbc, zzay.zzaH(), zzay.zzaI(), com_google_android_gms_internal_zzaf_zza, zzT, 57, view));
        }
        return arrayList;
    }

    protected void zza(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza, zzad.zza com_google_android_gms_internal_zzad_zza) {
        if (com_google_android_gms_internal_zzbc.zzaJ() != null) {
            zza(zzb(com_google_android_gms_internal_zzbc, com_google_android_gms_internal_zzaf_zza, com_google_android_gms_internal_zzad_zza));
        }
    }

    protected void zza(List<Callable<Void>> list) {
        if (zzpC != null) {
            ExecutorService zzaJ = zzpC.zzaJ();
            if (zzaJ != null && !list.isEmpty()) {
                try {
                    zzaJ.invokeAll(list, ((Long) zzfx.zzDg.get()).longValue(), TimeUnit.MILLISECONDS);
                } catch (Throwable e) {
                    String.format("class methods got exception: %s", new Object[]{zzbe.zza(e)});
                }
            }
        }
    }

    protected zzbd zzb(MotionEvent motionEvent) throws zzaz {
        Throwable e;
        Method zzc = zzpC.zzc(zzay.zzaB(), zzay.zzaC());
        if (zzc == null || motionEvent == null) {
            throw new zzaz();
        }
        try {
            return new zzbd((String) zzc.invoke(null, new Object[]{motionEvent, this.zzpT}));
        } catch (IllegalAccessException e2) {
            e = e2;
            throw new zzaz(e);
        } catch (InvocationTargetException e3) {
            e = e3;
            throw new zzaz(e);
        }
    }

    protected List<Callable<Void>> zzb(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza, zzad.zza com_google_android_gms_internal_zzad_zza) {
        int zzT = com_google_android_gms_internal_zzbc.zzT();
        List arrayList = new ArrayList();
        String zzab = zzay.zzab();
        String zzac = zzay.zzac();
        boolean z = ((Boolean) zzfx.zzDk.get()).booleanValue() || ((Boolean) zzfx.zzDl.get()).booleanValue();
        arrayList.add(new zzbi(com_google_android_gms_internal_zzbc, zzab, zzac, com_google_android_gms_internal_zzaf_zza, zzT, 27, z, com_google_android_gms_internal_zzad_zza));
        arrayList.add(new zzbl(com_google_android_gms_internal_zzbc, zzay.zzah(), zzay.zzai(), com_google_android_gms_internal_zzaf_zza, startTime, zzT, 25));
        arrayList.add(new zzbq(com_google_android_gms_internal_zzbc, zzay.zzap(), zzay.zzaq(), com_google_android_gms_internal_zzaf_zza, zzT, 1));
        arrayList.add(new zzbr(com_google_android_gms_internal_zzbc, zzay.zzar(), zzay.zzas(), com_google_android_gms_internal_zzaf_zza, zzT, 31));
        arrayList.add(new zzbu(com_google_android_gms_internal_zzbc, zzay.zzaz(), zzay.zzaA(), com_google_android_gms_internal_zzaf_zza, zzT, 33));
        arrayList.add(new zzbh(com_google_android_gms_internal_zzbc, zzay.zzat(), zzay.zzau(), com_google_android_gms_internal_zzaf_zza, zzT, 29));
        arrayList.add(new zzbj(com_google_android_gms_internal_zzbc, zzay.zzad(), zzay.zzae(), com_google_android_gms_internal_zzaf_zza, zzT, 5));
        arrayList.add(new zzbp(com_google_android_gms_internal_zzbc, zzay.zzan(), zzay.zzao(), com_google_android_gms_internal_zzaf_zza, zzT, 12));
        arrayList.add(new zzbg(com_google_android_gms_internal_zzbc, zzay.zzZ(), zzay.zzaa(), com_google_android_gms_internal_zzaf_zza, zzT, 3));
        arrayList.add(new zzbk(com_google_android_gms_internal_zzbc, zzay.zzaf(), zzay.zzag(), com_google_android_gms_internal_zzaf_zza, zzT, 44));
        arrayList.add(new zzbo(com_google_android_gms_internal_zzbc, zzay.zzal(), zzay.zzam(), com_google_android_gms_internal_zzaf_zza, zzT, 22));
        if (((Boolean) zzfx.zzDn.get()).booleanValue() || ((Boolean) zzfx.zzDl.get()).booleanValue()) {
            arrayList.add(new zzbv(com_google_android_gms_internal_zzbc, zzay.zzaF(), zzay.zzaG(), com_google_android_gms_internal_zzaf_zza, zzT, 48));
        }
        if (((Boolean) zzfx.zzDs.get()).booleanValue() || ((Boolean) zzfx.zzDl.get()).booleanValue()) {
            arrayList.add(new zzbt(com_google_android_gms_internal_zzbc, zzay.zzax(), zzay.zzay(), com_google_android_gms_internal_zzaf_zza, zzT, 51));
        }
        return arrayList;
    }

    protected void zzb(zzbc com_google_android_gms_internal_zzbc, zza com_google_android_gms_internal_zzaf_zza, View view) {
        zza(com_google_android_gms_internal_zzbc, com_google_android_gms_internal_zzaf_zza);
        zza(zza(com_google_android_gms_internal_zzbc, com_google_android_gms_internal_zzaf_zza, view));
    }
}
