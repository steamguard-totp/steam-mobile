package com.google.android.gms.internal;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

@zzmb
public class zzjq implements zzjh {
    private final Context mContext;
    private final zzmh zzKG;
    private final long zzKH;
    private final long zzKI;
    private boolean zzKK = false;
    private List<zzjn> zzKM = new ArrayList();
    private zzjm zzKQ;
    private final zzjj zzKq;
    private final boolean zzKs;
    private final Object zzrN = new Object();
    private final zzjs zzsD;
    private final zzgf zzsr;
    private final boolean zzvW;

    public zzjq(Context context, zzmh com_google_android_gms_internal_zzmh, zzjs com_google_android_gms_internal_zzjs, zzjj com_google_android_gms_internal_zzjj, boolean z, boolean z2, long j, long j2, zzgf com_google_android_gms_internal_zzgf) {
        this.mContext = context;
        this.zzKG = com_google_android_gms_internal_zzmh;
        this.zzsD = com_google_android_gms_internal_zzjs;
        this.zzKq = com_google_android_gms_internal_zzjj;
        this.zzvW = z;
        this.zzKs = z2;
        this.zzKH = j;
        this.zzKI = j2;
        this.zzsr = com_google_android_gms_internal_zzgf;
    }

    public void cancel() {
        synchronized (this.zzrN) {
            this.zzKK = true;
            if (this.zzKQ != null) {
                this.zzKQ.cancel();
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.android.gms.internal.zzjn zzd(java.util.List<com.google.android.gms.internal.zzji> r22) {
        /*
        r21 = this;
        r2 = "Starting mediation.";
        com.google.android.gms.internal.zzpy.zzbc(r2);
        r15 = new java.util.ArrayList;
        r15.<init>();
        r0 = r21;
        r2 = r0.zzsr;
        r16 = r2.zzfw();
        r17 = r22.iterator();
    L_0x0016:
        r2 = r17.hasNext();
        if (r2 == 0) goto L_0x0133;
    L_0x001c:
        r7 = r17.next();
        r7 = (com.google.android.gms.internal.zzji) r7;
        r3 = "Trying mediation network: ";
        r2 = r7.zzJH;
        r2 = java.lang.String.valueOf(r2);
        r4 = r2.length();
        if (r4 == 0) goto L_0x0066;
    L_0x0030:
        r2 = r3.concat(r2);
    L_0x0034:
        com.google.android.gms.internal.zzpy.zzbd(r2);
        r2 = r7.zzJI;
        r18 = r2.iterator();
    L_0x003d:
        r2 = r18.hasNext();
        if (r2 == 0) goto L_0x0016;
    L_0x0043:
        r4 = r18.next();
        r4 = (java.lang.String) r4;
        r0 = r21;
        r2 = r0.zzsr;
        r19 = r2.zzfw();
        r0 = r21;
        r0 = r0.zzrN;
        r20 = r0;
        monitor-enter(r20);
        r0 = r21;
        r2 = r0.zzKK;	 Catch:{ all -> 0x010a }
        if (r2 == 0) goto L_0x006c;
    L_0x005e:
        r2 = new com.google.android.gms.internal.zzjn;	 Catch:{ all -> 0x010a }
        r3 = -1;
        r2.<init>(r3);	 Catch:{ all -> 0x010a }
        monitor-exit(r20);	 Catch:{ all -> 0x010a }
    L_0x0065:
        return r2;
    L_0x0066:
        r2 = new java.lang.String;
        r2.<init>(r3);
        goto L_0x0034;
    L_0x006c:
        r2 = new com.google.android.gms.internal.zzjm;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r3 = r0.mContext;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r5 = r0.zzsD;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r6 = r0.zzKq;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r8 = r0.zzKG;	 Catch:{ all -> 0x010a }
        r8 = r8.zzRd;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r9 = r0.zzKG;	 Catch:{ all -> 0x010a }
        r9 = r9.zzvj;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r10 = r0.zzKG;	 Catch:{ all -> 0x010a }
        r10 = r10.zzvf;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r11 = r0.zzvW;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r12 = r0.zzKs;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r13 = r0.zzKG;	 Catch:{ all -> 0x010a }
        r13 = r13.zzvx;	 Catch:{ all -> 0x010a }
        r0 = r21;
        r14 = r0.zzKG;	 Catch:{ all -> 0x010a }
        r14 = r14.zzvB;	 Catch:{ all -> 0x010a }
        r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14);	 Catch:{ all -> 0x010a }
        r0 = r21;
        r0.zzKQ = r2;	 Catch:{ all -> 0x010a }
        monitor-exit(r20);	 Catch:{ all -> 0x010a }
        r0 = r21;
        r2 = r0.zzKQ;
        r0 = r21;
        r8 = r0.zzKH;
        r0 = r21;
        r10 = r0.zzKI;
        r2 = r2.zza(r8, r10);
        r0 = r21;
        r3 = r0.zzKM;
        r3.add(r2);
        r3 = r2.zzKz;
        if (r3 != 0) goto L_0x010d;
    L_0x00c3:
        r3 = "Adapter succeeded.";
        com.google.android.gms.internal.zzpy.zzbc(r3);
        r0 = r21;
        r3 = r0.zzsr;
        r5 = "mediation_network_succeed";
        r3.zzg(r5, r4);
        r3 = r15.isEmpty();
        if (r3 != 0) goto L_0x00e6;
    L_0x00d7:
        r0 = r21;
        r3 = r0.zzsr;
        r4 = "mediation_networks_fail";
        r5 = ",";
        r5 = android.text.TextUtils.join(r5, r15);
        r3.zzg(r4, r5);
    L_0x00e6:
        r0 = r21;
        r3 = r0.zzsr;
        r4 = 1;
        r4 = new java.lang.String[r4];
        r5 = 0;
        r6 = "mls";
        r4[r5] = r6;
        r0 = r19;
        r3.zza(r0, r4);
        r0 = r21;
        r3 = r0.zzsr;
        r4 = 1;
        r4 = new java.lang.String[r4];
        r5 = 0;
        r6 = "ttm";
        r4[r5] = r6;
        r0 = r16;
        r3.zza(r0, r4);
        goto L_0x0065;
    L_0x010a:
        r2 = move-exception;
        monitor-exit(r20);	 Catch:{ all -> 0x010a }
        throw r2;
    L_0x010d:
        r15.add(r4);
        r0 = r21;
        r3 = r0.zzsr;
        r4 = 1;
        r4 = new java.lang.String[r4];
        r5 = 0;
        r6 = "mlf";
        r4[r5] = r6;
        r0 = r19;
        r3.zza(r0, r4);
        r3 = r2.zzKB;
        if (r3 == 0) goto L_0x003d;
    L_0x0125:
        r3 = com.google.android.gms.internal.zzpi.zzWR;
        r4 = new com.google.android.gms.internal.zzjq$1;
        r0 = r21;
        r4.<init>(r0, r2);
        r3.post(r4);
        goto L_0x003d;
    L_0x0133:
        r2 = r15.isEmpty();
        if (r2 != 0) goto L_0x0148;
    L_0x0139:
        r0 = r21;
        r2 = r0.zzsr;
        r3 = "mediation_networks_fail";
        r4 = ",";
        r4 = android.text.TextUtils.join(r4, r15);
        r2.zzg(r3, r4);
    L_0x0148:
        r2 = new com.google.android.gms.internal.zzjn;
        r3 = 1;
        r2.<init>(r3);
        goto L_0x0065;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzjq.zzd(java.util.List):com.google.android.gms.internal.zzjn");
    }

    public List<zzjn> zzgB() {
        return this.zzKM;
    }
}
