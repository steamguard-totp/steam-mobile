package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Collections;
import java.util.List;

@zzmb
public final class zzmh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Creator<zzmh> CREATOR = new zzmi();
    public final ApplicationInfo applicationInfo;
    public final int versionCode;
    public final boolean zzKc;
    public final boolean zzRA;
    public final boolean zzRB;
    public final String zzRC;
    public final boolean zzRD;
    public final String zzRE;
    public final int zzRF;
    public final Bundle zzRG;
    public final String zzRH;
    public final Bundle zzRc;
    public final zzdy zzRd;
    public final PackageInfo zzRe;
    public final String zzRf;
    public final String zzRg;
    public final String zzRh;
    public final Bundle zzRi;
    public final int zzRj;
    public final Bundle zzRk;
    public final boolean zzRl;
    public final Messenger zzRm;
    public final int zzRn;
    public final int zzRo;
    public final String zzRp;
    public final long zzRq;
    public final String zzRr;
    public final List<String> zzRs;
    public final List<String> zzRt;
    public final long zzRu;
    public final zzmo zzRv;
    public final String zzRw;
    public final float zzRx;
    public final int zzRy;
    public final int zzRz;
    public final List<String> zzvB;
    public final String zzvc;
    public final String zzvd;
    public final zzqa zzvf;
    public final zzec zzvj;
    public final zzgw zzvx;
    public final float zzxa;

    @zzmb
    public static final class zza {
        public final ApplicationInfo applicationInfo;
        public final boolean zzKc;
        public final boolean zzRA;
        public final boolean zzRB;
        public final String zzRC;
        public final boolean zzRD;
        public final String zzRE;
        public final int zzRF;
        public final Bundle zzRG;
        public final String zzRH;
        public final Bundle zzRc;
        public final zzdy zzRd;
        public final PackageInfo zzRe;
        public final String zzRg;
        public final String zzRh;
        public final Bundle zzRi;
        public final int zzRj;
        public final Bundle zzRk;
        public final boolean zzRl;
        public final Messenger zzRm;
        public final int zzRn;
        public final int zzRo;
        public final String zzRp;
        public final long zzRq;
        public final String zzRr;
        public final List<String> zzRs;
        public final List<String> zzRt;
        public final zzmo zzRv;
        public final String zzRw;
        public final float zzRx;
        public final int zzRy;
        public final int zzRz;
        public final List<String> zzvB;
        public final String zzvc;
        public final String zzvd;
        public final zzqa zzvf;
        public final zzec zzvj;
        public final zzgw zzvx;
        public final float zzxa;

        public zza(Bundle bundle, zzdy com_google_android_gms_internal_zzdy, zzec com_google_android_gms_internal_zzec, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, zzqa com_google_android_gms_internal_zzqa, Bundle bundle2, List<String> list, List<String> list2, Bundle bundle3, boolean z, Messenger messenger, int i, int i2, float f, String str4, long j, String str5, List<String> list3, String str6, zzgw com_google_android_gms_internal_zzgw, zzmo com_google_android_gms_internal_zzmo, String str7, float f2, boolean z2, int i3, int i4, boolean z3, boolean z4, String str8, String str9, boolean z5, int i5, Bundle bundle4, String str10) {
            this.zzRc = bundle;
            this.zzRd = com_google_android_gms_internal_zzdy;
            this.zzvj = com_google_android_gms_internal_zzec;
            this.zzvd = str;
            this.applicationInfo = applicationInfo;
            this.zzRe = packageInfo;
            this.zzRg = str2;
            this.zzRh = str3;
            this.zzvf = com_google_android_gms_internal_zzqa;
            this.zzRi = bundle2;
            this.zzRl = z;
            this.zzRm = messenger;
            this.zzRn = i;
            this.zzRo = i2;
            this.zzxa = f;
            if (list == null || list.size() <= 0) {
                this.zzRj = 0;
                this.zzvB = null;
                this.zzRt = null;
            } else {
                this.zzRj = 3;
                this.zzvB = list;
                this.zzRt = list2;
            }
            this.zzRk = bundle3;
            this.zzRp = str4;
            this.zzRq = j;
            this.zzRr = str5;
            this.zzRs = list3;
            this.zzvc = str6;
            this.zzvx = com_google_android_gms_internal_zzgw;
            this.zzRv = com_google_android_gms_internal_zzmo;
            this.zzRw = str7;
            this.zzRx = f2;
            this.zzRD = z2;
            this.zzRy = i3;
            this.zzRz = i4;
            this.zzRA = z3;
            this.zzRB = z4;
            this.zzRC = str8;
            this.zzRE = str9;
            this.zzKc = z5;
            this.zzRF = i5;
            this.zzRG = bundle4;
            this.zzRH = str10;
        }
    }

    zzmh(int i, Bundle bundle, zzdy com_google_android_gms_internal_zzdy, zzec com_google_android_gms_internal_zzec, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, zzqa com_google_android_gms_internal_zzqa, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, Messenger messenger, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, zzgw com_google_android_gms_internal_zzgw, List<String> list3, long j2, zzmo com_google_android_gms_internal_zzmo, String str8, float f2, boolean z2, int i5, int i6, boolean z3, boolean z4, String str9, String str10, boolean z5, int i7, Bundle bundle4, String str11) {
        this.versionCode = i;
        this.zzRc = bundle;
        this.zzRd = com_google_android_gms_internal_zzdy;
        this.zzvj = com_google_android_gms_internal_zzec;
        this.zzvd = str;
        this.applicationInfo = applicationInfo;
        this.zzRe = packageInfo;
        this.zzRf = str2;
        this.zzRg = str3;
        this.zzRh = str4;
        this.zzvf = com_google_android_gms_internal_zzqa;
        this.zzRi = bundle2;
        this.zzRj = i2;
        this.zzvB = list;
        this.zzRt = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzRk = bundle3;
        this.zzRl = z;
        this.zzRm = messenger;
        this.zzRn = i3;
        this.zzRo = i4;
        this.zzxa = f;
        this.zzRp = str5;
        this.zzRq = j;
        this.zzRr = str6;
        this.zzRs = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzvc = str7;
        this.zzvx = com_google_android_gms_internal_zzgw;
        this.zzRu = j2;
        this.zzRv = com_google_android_gms_internal_zzmo;
        this.zzRw = str8;
        this.zzRx = f2;
        this.zzRD = z2;
        this.zzRy = i5;
        this.zzRz = i6;
        this.zzRA = z3;
        this.zzRB = z4;
        this.zzRC = str9;
        this.zzRE = str10;
        this.zzKc = z5;
        this.zzRF = i7;
        this.zzRG = bundle4;
        this.zzRH = str11;
    }

    public zzmh(Bundle bundle, zzdy com_google_android_gms_internal_zzdy, zzec com_google_android_gms_internal_zzec, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, zzqa com_google_android_gms_internal_zzqa, Bundle bundle2, int i, List<String> list, List<String> list2, Bundle bundle3, boolean z, Messenger messenger, int i2, int i3, float f, String str5, long j, String str6, List<String> list3, String str7, zzgw com_google_android_gms_internal_zzgw, long j2, zzmo com_google_android_gms_internal_zzmo, String str8, float f2, boolean z2, int i4, int i5, boolean z3, boolean z4, String str9, String str10, boolean z5, int i6, Bundle bundle4, String str11) {
        this(19, bundle, com_google_android_gms_internal_zzdy, com_google_android_gms_internal_zzec, str, applicationInfo, packageInfo, str2, str3, str4, com_google_android_gms_internal_zzqa, bundle2, i, list, bundle3, z, messenger, i2, i3, f, str5, j, str6, list3, str7, com_google_android_gms_internal_zzgw, list2, j2, com_google_android_gms_internal_zzmo, str8, f2, z2, i4, i5, z3, z4, str9, str10, z5, i6, bundle4, str11);
    }

    public zzmh(zza com_google_android_gms_internal_zzmh_zza, String str, long j) {
        this(com_google_android_gms_internal_zzmh_zza.zzRc, com_google_android_gms_internal_zzmh_zza.zzRd, com_google_android_gms_internal_zzmh_zza.zzvj, com_google_android_gms_internal_zzmh_zza.zzvd, com_google_android_gms_internal_zzmh_zza.applicationInfo, com_google_android_gms_internal_zzmh_zza.zzRe, str, com_google_android_gms_internal_zzmh_zza.zzRg, com_google_android_gms_internal_zzmh_zza.zzRh, com_google_android_gms_internal_zzmh_zza.zzvf, com_google_android_gms_internal_zzmh_zza.zzRi, com_google_android_gms_internal_zzmh_zza.zzRj, com_google_android_gms_internal_zzmh_zza.zzvB, com_google_android_gms_internal_zzmh_zza.zzRt, com_google_android_gms_internal_zzmh_zza.zzRk, com_google_android_gms_internal_zzmh_zza.zzRl, com_google_android_gms_internal_zzmh_zza.zzRm, com_google_android_gms_internal_zzmh_zza.zzRn, com_google_android_gms_internal_zzmh_zza.zzRo, com_google_android_gms_internal_zzmh_zza.zzxa, com_google_android_gms_internal_zzmh_zza.zzRp, com_google_android_gms_internal_zzmh_zza.zzRq, com_google_android_gms_internal_zzmh_zza.zzRr, com_google_android_gms_internal_zzmh_zza.zzRs, com_google_android_gms_internal_zzmh_zza.zzvc, com_google_android_gms_internal_zzmh_zza.zzvx, j, com_google_android_gms_internal_zzmh_zza.zzRv, com_google_android_gms_internal_zzmh_zza.zzRw, com_google_android_gms_internal_zzmh_zza.zzRx, com_google_android_gms_internal_zzmh_zza.zzRD, com_google_android_gms_internal_zzmh_zza.zzRy, com_google_android_gms_internal_zzmh_zza.zzRz, com_google_android_gms_internal_zzmh_zza.zzRA, com_google_android_gms_internal_zzmh_zza.zzRB, com_google_android_gms_internal_zzmh_zza.zzRC, com_google_android_gms_internal_zzmh_zza.zzRE, com_google_android_gms_internal_zzmh_zza.zzKc, com_google_android_gms_internal_zzmh_zza.zzRF, com_google_android_gms_internal_zzmh_zza.zzRG, com_google_android_gms_internal_zzmh_zza.zzRH);
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzmi.zza(this, parcel, i);
    }
}
