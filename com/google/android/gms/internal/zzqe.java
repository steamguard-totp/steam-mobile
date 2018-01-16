package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

@zzmb
public class zzqe {

    public interface zza<D, R> {
        R apply(D d);
    }

    class AnonymousClass1 implements Runnable {
        final /* synthetic */ zzqc zzYi;
        final /* synthetic */ zza zzYj;
        final /* synthetic */ zzqf zzYk;

        AnonymousClass1(zzqc com_google_android_gms_internal_zzqc, zza com_google_android_gms_internal_zzqe_zza, zzqf com_google_android_gms_internal_zzqf) {
            this.zzYi = com_google_android_gms_internal_zzqc;
            this.zzYj = com_google_android_gms_internal_zzqe_zza;
            this.zzYk = com_google_android_gms_internal_zzqf;
        }

        public void run() {
            try {
                this.zzYi.zzh(this.zzYj.apply(this.zzYk.get()));
                return;
            } catch (CancellationException e) {
            } catch (InterruptedException e2) {
            } catch (ExecutionException e3) {
            }
            this.zzYi.cancel(true);
        }
    }

    class AnonymousClass2 implements Runnable {
        final /* synthetic */ AtomicInteger zzYl;
        final /* synthetic */ int zzYm;
        final /* synthetic */ zzqc zzYn;
        final /* synthetic */ List zzYo;

        AnonymousClass2(AtomicInteger atomicInteger, int i, zzqc com_google_android_gms_internal_zzqc, List list) {
            this.zzYl = atomicInteger;
            this.zzYm = i;
            this.zzYn = com_google_android_gms_internal_zzqc;
            this.zzYo = list;
        }

        public void run() {
            Throwable e;
            if (this.zzYl.incrementAndGet() >= this.zzYm) {
                try {
                    this.zzYn.zzh(zzqe.zzp(this.zzYo));
                    return;
                } catch (ExecutionException e2) {
                    e = e2;
                } catch (InterruptedException e3) {
                    e = e3;
                }
            } else {
                return;
            }
            zzpy.zzc("Unable to convert list of futures to a future of list", e);
        }
    }

    public static <A, B> zzqf<B> zza(zzqf<A> com_google_android_gms_internal_zzqf_A, zza<A, B> com_google_android_gms_internal_zzqe_zza_A__B) {
        zzqf com_google_android_gms_internal_zzqc = new zzqc();
        com_google_android_gms_internal_zzqf_A.zzc(new AnonymousClass1(com_google_android_gms_internal_zzqc, com_google_android_gms_internal_zzqe_zza_A__B, com_google_android_gms_internal_zzqf_A));
        return com_google_android_gms_internal_zzqc;
    }

    public static <V> zzqf<List<V>> zzo(List<zzqf<V>> list) {
        zzqf com_google_android_gms_internal_zzqc = new zzqc();
        int size = list.size();
        AtomicInteger atomicInteger = new AtomicInteger(0);
        for (zzqf zzc : list) {
            zzc.zzc(new AnonymousClass2(atomicInteger, size, com_google_android_gms_internal_zzqc, list));
        }
        return com_google_android_gms_internal_zzqc;
    }

    private static <V> List<V> zzp(List<zzqf<V>> list) throws ExecutionException, InterruptedException {
        List<V> arrayList = new ArrayList();
        for (zzqf com_google_android_gms_internal_zzqf : list) {
            Object obj = com_google_android_gms_internal_zzqf.get();
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
