package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzbuy.zzc;
import java.util.Arrays;

public class zzzh extends zza {
    public static final Creator<zzzh> CREATOR = new zzzi();
    public final int versionCode;
    public zzawe zzawE;
    public byte[] zzawF;
    public int[] zzawG;
    public String[] zzawH;
    public int[] zzawI;
    public byte[][] zzawJ;
    public boolean zzawK;
    public final zzc zzawL;
    public final zzzf.zzc zzawM;
    public final zzzf.zzc zzawN;

    zzzh(int i, zzawe com_google_android_gms_internal_zzawe, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z) {
        this.versionCode = i;
        this.zzawE = com_google_android_gms_internal_zzawe;
        this.zzawF = bArr;
        this.zzawG = iArr;
        this.zzawH = strArr;
        this.zzawL = null;
        this.zzawM = null;
        this.zzawN = null;
        this.zzawI = iArr2;
        this.zzawJ = bArr2;
        this.zzawK = z;
    }

    public zzzh(zzawe com_google_android_gms_internal_zzawe, zzc com_google_android_gms_internal_zzbuy_zzc, zzzf.zzc com_google_android_gms_internal_zzzf_zzc, zzzf.zzc com_google_android_gms_internal_zzzf_zzc2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, boolean z) {
        this.versionCode = 1;
        this.zzawE = com_google_android_gms_internal_zzawe;
        this.zzawL = com_google_android_gms_internal_zzbuy_zzc;
        this.zzawM = com_google_android_gms_internal_zzzf_zzc;
        this.zzawN = com_google_android_gms_internal_zzzf_zzc2;
        this.zzawG = iArr;
        this.zzawH = strArr;
        this.zzawI = iArr2;
        this.zzawJ = bArr;
        this.zzawK = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzzh)) {
            return false;
        }
        zzzh com_google_android_gms_internal_zzzh = (zzzh) obj;
        return this.versionCode == com_google_android_gms_internal_zzzh.versionCode && zzaa.equal(this.zzawE, com_google_android_gms_internal_zzzh.zzawE) && Arrays.equals(this.zzawF, com_google_android_gms_internal_zzzh.zzawF) && Arrays.equals(this.zzawG, com_google_android_gms_internal_zzzh.zzawG) && Arrays.equals(this.zzawH, com_google_android_gms_internal_zzzh.zzawH) && zzaa.equal(this.zzawL, com_google_android_gms_internal_zzzh.zzawL) && zzaa.equal(this.zzawM, com_google_android_gms_internal_zzzh.zzawM) && zzaa.equal(this.zzawN, com_google_android_gms_internal_zzzh.zzawN) && Arrays.equals(this.zzawI, com_google_android_gms_internal_zzzh.zzawI) && Arrays.deepEquals(this.zzawJ, com_google_android_gms_internal_zzzh.zzawJ) && this.zzawK == com_google_android_gms_internal_zzzh.zzawK;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.versionCode), this.zzawE, this.zzawF, this.zzawG, this.zzawH, this.zzawL, this.zzawM, this.zzawN, this.zzawI, this.zzawJ, Boolean.valueOf(this.zzawK));
    }

    public String toString() {
        return "LogEventParcelable[" + this.versionCode + ", " + this.zzawE + ", " + "LogEventBytes: " + (this.zzawF == null ? null : new String(this.zzawF)) + ", " + "TestCodes: " + Arrays.toString(this.zzawG) + ", " + "MendelPackages: " + Arrays.toString(this.zzawH) + ", " + "LogEvent: " + this.zzawL + ", " + "ExtensionProducer: " + this.zzawM + ", " + "VeProducer: " + this.zzawN + ", " + "ExperimentIDs: " + Arrays.toString(this.zzawI) + ", " + "ExperimentTokens: " + Arrays.toString(this.zzawJ) + ", " + "AddPhenotypeExperimentTokens: " + this.zzawK + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzzi.zza(this, parcel, i);
    }
}
