package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.Collections;
import java.util.List;

@zzmb
public final class zzmk extends zza {
    public static final Creator<zzmk> CREATOR = new zzml();
    public String body;
    public final int errorCode;
    public final int orientation;
    public final int versionCode;
    public final List<String> zzJY;
    public final List<String> zzJZ;
    private zzmh zzKG;
    public final List<String> zzKb;
    public final boolean zzKc;
    public final long zzKe;
    public final String zzNb;
    public final boolean zzRB;
    public String zzRC;
    public final long zzRJ;
    public final boolean zzRK;
    public final long zzRL;
    public final List<String> zzRM;
    public final String zzRN;
    public final long zzRO;
    public final String zzRP;
    public final boolean zzRQ;
    public final String zzRR;
    public final String zzRS;
    public final boolean zzRT;
    public final boolean zzRU;
    public final boolean zzRV;
    public zzms zzRW;
    public String zzRX;
    public final String zzRY;
    public final zzok zzRZ;
    public final boolean zzRl;
    public final List<String> zzSa;
    public final List<String> zzSb;
    public final boolean zzSc;
    public final zzmm zzSd;
    public final String zzSe;
    public final zzon zzSf;
    public final String zzSg;
    public final boolean zzSh;
    public final boolean zzzn;
    public final boolean zzzo;
    public final boolean zzzp;

    public zzmk(int i) {
        this(18, null, null, null, i, null, -1, false, -1, null, -1, -1, null, -1, null, false, null, null, false, false, false, true, false, null, null, null, false, false, null, null, null, false, null, false, null, null, false, null, null, null, true);
    }

    public zzmk(int i, long j) {
        this(18, null, null, null, i, null, -1, false, -1, null, j, -1, null, -1, null, false, null, null, false, false, false, true, false, null, null, null, false, false, null, null, null, false, null, false, null, null, false, null, null, null, true);
    }

    zzmk(int i, String str, String str2, List<String> list, int i2, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i3, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, zzms com_google_android_gms_internal_zzms, String str7, String str8, boolean z8, boolean z9, zzok com_google_android_gms_internal_zzok, List<String> list4, List<String> list5, boolean z10, zzmm com_google_android_gms_internal_zzmm, boolean z11, String str9, List<String> list6, boolean z12, String str10, zzon com_google_android_gms_internal_zzon, String str11, boolean z13) {
        this.versionCode = i;
        this.zzNb = str;
        this.body = str2;
        this.zzJY = list != null ? Collections.unmodifiableList(list) : null;
        this.errorCode = i2;
        this.zzJZ = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.zzRJ = j;
        this.zzRK = z;
        this.zzRL = j2;
        this.zzRM = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.zzKe = j3;
        this.orientation = i3;
        this.zzRN = str3;
        this.zzRO = j4;
        this.zzRP = str4;
        this.zzRQ = z2;
        this.zzRR = str5;
        this.zzRS = str6;
        this.zzRT = z3;
        this.zzzn = z4;
        this.zzRl = z5;
        this.zzRU = z6;
        this.zzSh = z13;
        this.zzRV = z7;
        this.zzRW = com_google_android_gms_internal_zzms;
        this.zzRX = str7;
        this.zzRY = str8;
        if (this.body == null && this.zzRW != null) {
            zzmv com_google_android_gms_internal_zzmv = (zzmv) this.zzRW.zza(zzmv.CREATOR);
            if (!(com_google_android_gms_internal_zzmv == null || TextUtils.isEmpty(com_google_android_gms_internal_zzmv.zzje()))) {
                this.body = com_google_android_gms_internal_zzmv.zzje();
            }
        }
        this.zzzo = z8;
        this.zzzp = z9;
        this.zzRZ = com_google_android_gms_internal_zzok;
        this.zzSa = list4;
        this.zzSb = list5;
        this.zzSc = z10;
        this.zzSd = com_google_android_gms_internal_zzmm;
        this.zzRB = z11;
        this.zzRC = str9;
        this.zzKb = list6;
        this.zzKc = z12;
        this.zzSe = str10;
        this.zzSf = com_google_android_gms_internal_zzon;
        this.zzSg = str11;
    }

    public zzmk(zzmh com_google_android_gms_internal_zzmh, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, String str5, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, String str6, boolean z7, boolean z8, zzok com_google_android_gms_internal_zzok, List<String> list4, List<String> list5, boolean z9, zzmm com_google_android_gms_internal_zzmm, boolean z10, String str7, List<String> list6, boolean z11, String str8, zzon com_google_android_gms_internal_zzon, String str9, boolean z12) {
        this(18, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, false, null, str5, z2, z3, z4, z5, z6, null, null, str6, z7, z8, com_google_android_gms_internal_zzok, list4, list5, z9, com_google_android_gms_internal_zzmm, z10, str7, list6, z11, str8, com_google_android_gms_internal_zzon, str9, z12);
        this.zzKG = com_google_android_gms_internal_zzmh;
    }

    public zzmk(zzmh com_google_android_gms_internal_zzmh, String str, String str2, List<String> list, List<String> list2, long j, boolean z, long j2, List<String> list3, long j3, int i, String str3, long j4, String str4, boolean z2, String str5, String str6, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str7, boolean z8, boolean z9, zzok com_google_android_gms_internal_zzok, List<String> list4, List<String> list5, boolean z10, zzmm com_google_android_gms_internal_zzmm, boolean z11, String str8, List<String> list6, boolean z12, String str9, zzon com_google_android_gms_internal_zzon, String str10, boolean z13) {
        this(18, str, str2, list, -2, list2, j, z, j2, list3, j3, i, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, null, null, str7, z8, z9, com_google_android_gms_internal_zzok, list4, list5, z10, com_google_android_gms_internal_zzmm, z11, str8, list6, z12, str9, com_google_android_gms_internal_zzon, str10, z13);
        this.zzKG = com_google_android_gms_internal_zzmh;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (!(this.zzKG == null || this.zzKG.versionCode < 9 || TextUtils.isEmpty(this.body))) {
            this.zzRW = new zzms(new zzmv(this.body));
            this.body = null;
        }
        zzml.zza(this, parcel, i);
    }
}
