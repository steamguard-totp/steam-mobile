package com.google.android.gms.internal;

import android.webkit.WebViewClient;
import java.io.IOException;
import java.util.Arrays;

public interface zzbuy {

    public static final class zza extends zzbun<zza> implements Cloneable {
        public String version;
        public int zzcss;
        public String zzcst;

        public zza() {
            zzadb();
        }

        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzadc();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza com_google_android_gms_internal_zzbuy_zza = (zza) obj;
            if (this.zzcss != com_google_android_gms_internal_zzbuy_zza.zzcss) {
                return false;
            }
            if (this.zzcst == null) {
                if (com_google_android_gms_internal_zzbuy_zza.zzcst != null) {
                    return false;
                }
            } else if (!this.zzcst.equals(com_google_android_gms_internal_zzbuy_zza.zzcst)) {
                return false;
            }
            if (this.version == null) {
                if (com_google_android_gms_internal_zzbuy_zza.version != null) {
                    return false;
                }
            } else if (!this.version.equals(com_google_android_gms_internal_zzbuy_zza.version)) {
                return false;
            }
            return (this.zzcrX == null || this.zzcrX.isEmpty()) ? com_google_android_gms_internal_zzbuy_zza.zzcrX == null || com_google_android_gms_internal_zzbuy_zza.zzcrX.isEmpty() : this.zzcrX.equals(com_google_android_gms_internal_zzbuy_zza.zzcrX);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.version == null ? 0 : this.version.hashCode()) + (((this.zzcst == null ? 0 : this.zzcst.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + this.zzcss) * 31)) * 31)) * 31;
            if (!(this.zzcrX == null || this.zzcrX.isEmpty())) {
                i = this.zzcrX.hashCode();
            }
            return hashCode + i;
        }

        public void zza(zzbum com_google_android_gms_internal_zzbum) throws IOException {
            if (this.zzcss != 0) {
                com_google_android_gms_internal_zzbum.zzF(1, this.zzcss);
            }
            if (!(this.zzcst == null || this.zzcst.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(2, this.zzcst);
            }
            if (!(this.version == null || this.version.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(3, this.version);
            }
            super.zza(com_google_android_gms_internal_zzbum);
        }

        public zza zzaO(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            while (true) {
                int zzacu = com_google_android_gms_internal_zzbul.zzacu();
                switch (zzacu) {
                    case 0:
                        break;
                    case 8:
                        this.zzcss = com_google_android_gms_internal_zzbul.zzacy();
                        continue;
                    case 18:
                        this.zzcst = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    case 26:
                        this.version = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    default:
                        if (!super.zza(com_google_android_gms_internal_zzbul, zzacu)) {
                            break;
                        }
                        continue;
                }
                return this;
            }
        }

        public /* synthetic */ zzbun zzacN() throws CloneNotSupportedException {
            return (zza) zzacO();
        }

        public /* synthetic */ zzbut zzacO() throws CloneNotSupportedException {
            return (zza) clone();
        }

        public zza zzadb() {
            this.zzcss = 0;
            this.zzcst = "";
            this.version = "";
            this.zzcrX = null;
            this.zzcsg = -1;
            return this;
        }

        public zza zzadc() {
            try {
                return (zza) super.zzacN();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public /* synthetic */ zzbut zzb(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            return zzaO(com_google_android_gms_internal_zzbul);
        }

        protected int zzv() {
            int zzv = super.zzv();
            if (this.zzcss != 0) {
                zzv += zzbum.zzH(1, this.zzcss);
            }
            if (!(this.zzcst == null || this.zzcst.equals(""))) {
                zzv += zzbum.zzr(2, this.zzcst);
            }
            return (this.version == null || this.version.equals("")) ? zzv : zzv + zzbum.zzr(3, this.version);
        }
    }

    public static final class zzb extends zzbun<zzb> implements Cloneable {
        public byte[] zzcsu;
        public String zzcsv;
        public byte[][] zzcsw;
        public boolean zzcsx;

        public zzb() {
            zzadd();
        }

        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzade();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb com_google_android_gms_internal_zzbuy_zzb = (zzb) obj;
            if (!Arrays.equals(this.zzcsu, com_google_android_gms_internal_zzbuy_zzb.zzcsu)) {
                return false;
            }
            if (this.zzcsv == null) {
                if (com_google_android_gms_internal_zzbuy_zzb.zzcsv != null) {
                    return false;
                }
            } else if (!this.zzcsv.equals(com_google_android_gms_internal_zzbuy_zzb.zzcsv)) {
                return false;
            }
            return (zzbur.zza(this.zzcsw, com_google_android_gms_internal_zzbuy_zzb.zzcsw) && this.zzcsx == com_google_android_gms_internal_zzbuy_zzb.zzcsx) ? (this.zzcrX == null || this.zzcrX.isEmpty()) ? com_google_android_gms_internal_zzbuy_zzb.zzcrX == null || com_google_android_gms_internal_zzbuy_zzb.zzcrX.isEmpty() : this.zzcrX.equals(com_google_android_gms_internal_zzbuy_zzb.zzcrX) : false;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzcsx ? 1231 : 1237) + (((((this.zzcsv == null ? 0 : this.zzcsv.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.zzcsu)) * 31)) * 31) + zzbur.zzb(this.zzcsw)) * 31)) * 31;
            if (!(this.zzcrX == null || this.zzcrX.isEmpty())) {
                i = this.zzcrX.hashCode();
            }
            return hashCode + i;
        }

        public void zza(zzbum com_google_android_gms_internal_zzbum) throws IOException {
            if (!Arrays.equals(this.zzcsu, zzbuw.zzcsp)) {
                com_google_android_gms_internal_zzbum.zzb(1, this.zzcsu);
            }
            if (this.zzcsw != null && this.zzcsw.length > 0) {
                for (byte[] bArr : this.zzcsw) {
                    if (bArr != null) {
                        com_google_android_gms_internal_zzbum.zzb(2, bArr);
                    }
                }
            }
            if (this.zzcsx) {
                com_google_android_gms_internal_zzbum.zzg(3, this.zzcsx);
            }
            if (!(this.zzcsv == null || this.zzcsv.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(4, this.zzcsv);
            }
            super.zza(com_google_android_gms_internal_zzbum);
        }

        public zzb zzaP(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            while (true) {
                int zzacu = com_google_android_gms_internal_zzbul.zzacu();
                switch (zzacu) {
                    case 0:
                        break;
                    case 10:
                        this.zzcsu = com_google_android_gms_internal_zzbul.readBytes();
                        continue;
                    case 18:
                        int zzc = zzbuw.zzc(com_google_android_gms_internal_zzbul, 18);
                        zzacu = this.zzcsw == null ? 0 : this.zzcsw.length;
                        Object obj = new byte[(zzc + zzacu)][];
                        if (zzacu != 0) {
                            System.arraycopy(this.zzcsw, 0, obj, 0, zzacu);
                        }
                        while (zzacu < obj.length - 1) {
                            obj[zzacu] = com_google_android_gms_internal_zzbul.readBytes();
                            com_google_android_gms_internal_zzbul.zzacu();
                            zzacu++;
                        }
                        obj[zzacu] = com_google_android_gms_internal_zzbul.readBytes();
                        this.zzcsw = obj;
                        continue;
                    case 24:
                        this.zzcsx = com_google_android_gms_internal_zzbul.zzacA();
                        continue;
                    case 34:
                        this.zzcsv = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    default:
                        if (!super.zza(com_google_android_gms_internal_zzbul, zzacu)) {
                            break;
                        }
                        continue;
                }
                return this;
            }
        }

        public /* synthetic */ zzbun zzacN() throws CloneNotSupportedException {
            return (zzb) zzacO();
        }

        public /* synthetic */ zzbut zzacO() throws CloneNotSupportedException {
            return (zzb) clone();
        }

        public zzb zzadd() {
            this.zzcsu = zzbuw.zzcsp;
            this.zzcsv = "";
            this.zzcsw = zzbuw.zzcso;
            this.zzcsx = false;
            this.zzcrX = null;
            this.zzcsg = -1;
            return this;
        }

        public zzb zzade() {
            try {
                zzb com_google_android_gms_internal_zzbuy_zzb = (zzb) super.zzacN();
                if (this.zzcsw != null && this.zzcsw.length > 0) {
                    com_google_android_gms_internal_zzbuy_zzb.zzcsw = (byte[][]) this.zzcsw.clone();
                }
                return com_google_android_gms_internal_zzbuy_zzb;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public /* synthetic */ zzbut zzb(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            return zzaP(com_google_android_gms_internal_zzbul);
        }

        protected int zzv() {
            int i = 0;
            int zzv = super.zzv();
            if (!Arrays.equals(this.zzcsu, zzbuw.zzcsp)) {
                zzv += zzbum.zzc(1, this.zzcsu);
            }
            if (this.zzcsw != null && this.zzcsw.length > 0) {
                int i2 = 0;
                int i3 = 0;
                while (i < this.zzcsw.length) {
                    byte[] bArr = this.zzcsw[i];
                    if (bArr != null) {
                        i3++;
                        i2 += zzbum.zzag(bArr);
                    }
                    i++;
                }
                zzv = (zzv + i2) + (i3 * 1);
            }
            if (this.zzcsx) {
                zzv += zzbum.zzh(3, this.zzcsx);
            }
            return (this.zzcsv == null || this.zzcsv.equals("")) ? zzv : zzv + zzbum.zzr(4, this.zzcsv);
        }
    }

    public static final class zzc extends zzbun<zzc> implements Cloneable {
        public String tag;
        public boolean zzcbV;
        public long zzcsA;
        public int zzcsB;
        public zzd[] zzcsC;
        public byte[] zzcsD;
        public zza zzcsE;
        public byte[] zzcsF;
        public String zzcsG;
        public String zzcsH;
        public String zzcsI;
        public long zzcsJ;
        public zzb zzcsK;
        public byte[] zzcsL;
        public String zzcsM;
        public int zzcsN;
        public int[] zzcsO;
        public long zzcsP;
        public zze zzcsQ;
        public long zzcsy;
        public long zzcsz;
        public int zzrn;

        public zzc() {
            zzadf();
        }

        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzadg();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc com_google_android_gms_internal_zzbuy_zzc = (zzc) obj;
            if (this.zzcsy != com_google_android_gms_internal_zzbuy_zzc.zzcsy || this.zzcsz != com_google_android_gms_internal_zzbuy_zzc.zzcsz || this.zzcsA != com_google_android_gms_internal_zzbuy_zzc.zzcsA) {
                return false;
            }
            if (this.tag == null) {
                if (com_google_android_gms_internal_zzbuy_zzc.tag != null) {
                    return false;
                }
            } else if (!this.tag.equals(com_google_android_gms_internal_zzbuy_zzc.tag)) {
                return false;
            }
            if (this.zzcsB != com_google_android_gms_internal_zzbuy_zzc.zzcsB || this.zzrn != com_google_android_gms_internal_zzbuy_zzc.zzrn || this.zzcbV != com_google_android_gms_internal_zzbuy_zzc.zzcbV || !zzbur.equals(this.zzcsC, com_google_android_gms_internal_zzbuy_zzc.zzcsC) || !Arrays.equals(this.zzcsD, com_google_android_gms_internal_zzbuy_zzc.zzcsD)) {
                return false;
            }
            if (this.zzcsE == null) {
                if (com_google_android_gms_internal_zzbuy_zzc.zzcsE != null) {
                    return false;
                }
            } else if (!this.zzcsE.equals(com_google_android_gms_internal_zzbuy_zzc.zzcsE)) {
                return false;
            }
            if (!Arrays.equals(this.zzcsF, com_google_android_gms_internal_zzbuy_zzc.zzcsF)) {
                return false;
            }
            if (this.zzcsG == null) {
                if (com_google_android_gms_internal_zzbuy_zzc.zzcsG != null) {
                    return false;
                }
            } else if (!this.zzcsG.equals(com_google_android_gms_internal_zzbuy_zzc.zzcsG)) {
                return false;
            }
            if (this.zzcsH == null) {
                if (com_google_android_gms_internal_zzbuy_zzc.zzcsH != null) {
                    return false;
                }
            } else if (!this.zzcsH.equals(com_google_android_gms_internal_zzbuy_zzc.zzcsH)) {
                return false;
            }
            if (this.zzcsI == null) {
                if (com_google_android_gms_internal_zzbuy_zzc.zzcsI != null) {
                    return false;
                }
            } else if (!this.zzcsI.equals(com_google_android_gms_internal_zzbuy_zzc.zzcsI)) {
                return false;
            }
            if (this.zzcsJ != com_google_android_gms_internal_zzbuy_zzc.zzcsJ) {
                return false;
            }
            if (this.zzcsK == null) {
                if (com_google_android_gms_internal_zzbuy_zzc.zzcsK != null) {
                    return false;
                }
            } else if (!this.zzcsK.equals(com_google_android_gms_internal_zzbuy_zzc.zzcsK)) {
                return false;
            }
            if (!Arrays.equals(this.zzcsL, com_google_android_gms_internal_zzbuy_zzc.zzcsL)) {
                return false;
            }
            if (this.zzcsM == null) {
                if (com_google_android_gms_internal_zzbuy_zzc.zzcsM != null) {
                    return false;
                }
            } else if (!this.zzcsM.equals(com_google_android_gms_internal_zzbuy_zzc.zzcsM)) {
                return false;
            }
            if (this.zzcsN != com_google_android_gms_internal_zzbuy_zzc.zzcsN || !zzbur.equals(this.zzcsO, com_google_android_gms_internal_zzbuy_zzc.zzcsO) || this.zzcsP != com_google_android_gms_internal_zzbuy_zzc.zzcsP) {
                return false;
            }
            if (this.zzcsQ == null) {
                if (com_google_android_gms_internal_zzbuy_zzc.zzcsQ != null) {
                    return false;
                }
            } else if (!this.zzcsQ.equals(com_google_android_gms_internal_zzbuy_zzc.zzcsQ)) {
                return false;
            }
            return (this.zzcrX == null || this.zzcrX.isEmpty()) ? com_google_android_gms_internal_zzbuy_zzc.zzcrX == null || com_google_android_gms_internal_zzbuy_zzc.zzcrX.isEmpty() : this.zzcrX.equals(com_google_android_gms_internal_zzbuy_zzc.zzcrX);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.zzcsQ == null ? 0 : this.zzcsQ.hashCode()) + (((((((((this.zzcsM == null ? 0 : this.zzcsM.hashCode()) + (((((this.zzcsK == null ? 0 : this.zzcsK.hashCode()) + (((((this.zzcsI == null ? 0 : this.zzcsI.hashCode()) + (((this.zzcsH == null ? 0 : this.zzcsH.hashCode()) + (((this.zzcsG == null ? 0 : this.zzcsG.hashCode()) + (((((this.zzcsE == null ? 0 : this.zzcsE.hashCode()) + (((((((this.zzcbV ? 1231 : 1237) + (((((((this.tag == null ? 0 : this.tag.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.zzcsy ^ (this.zzcsy >>> 32)))) * 31) + ((int) (this.zzcsz ^ (this.zzcsz >>> 32)))) * 31) + ((int) (this.zzcsA ^ (this.zzcsA >>> 32)))) * 31)) * 31) + this.zzcsB) * 31) + this.zzrn) * 31)) * 31) + zzbur.hashCode(this.zzcsC)) * 31) + Arrays.hashCode(this.zzcsD)) * 31)) * 31) + Arrays.hashCode(this.zzcsF)) * 31)) * 31)) * 31)) * 31) + ((int) (this.zzcsJ ^ (this.zzcsJ >>> 32)))) * 31)) * 31) + Arrays.hashCode(this.zzcsL)) * 31)) * 31) + this.zzcsN) * 31) + zzbur.hashCode(this.zzcsO)) * 31) + ((int) (this.zzcsP ^ (this.zzcsP >>> 32)))) * 31)) * 31;
            if (!(this.zzcrX == null || this.zzcrX.isEmpty())) {
                i = this.zzcrX.hashCode();
            }
            return hashCode + i;
        }

        public void zza(zzbum com_google_android_gms_internal_zzbum) throws IOException {
            int i = 0;
            if (this.zzcsy != 0) {
                com_google_android_gms_internal_zzbum.zzb(1, this.zzcsy);
            }
            if (!(this.tag == null || this.tag.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(2, this.tag);
            }
            if (this.zzcsC != null && this.zzcsC.length > 0) {
                for (zzbut com_google_android_gms_internal_zzbut : this.zzcsC) {
                    if (com_google_android_gms_internal_zzbut != null) {
                        com_google_android_gms_internal_zzbum.zza(3, com_google_android_gms_internal_zzbut);
                    }
                }
            }
            if (!Arrays.equals(this.zzcsD, zzbuw.zzcsp)) {
                com_google_android_gms_internal_zzbum.zzb(4, this.zzcsD);
            }
            if (!Arrays.equals(this.zzcsF, zzbuw.zzcsp)) {
                com_google_android_gms_internal_zzbum.zzb(6, this.zzcsF);
            }
            if (!(this.zzcsG == null || this.zzcsG.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(8, this.zzcsG);
            }
            if (this.zzcsE != null) {
                com_google_android_gms_internal_zzbum.zza(9, this.zzcsE);
            }
            if (this.zzcbV) {
                com_google_android_gms_internal_zzbum.zzg(10, this.zzcbV);
            }
            if (this.zzcsB != 0) {
                com_google_android_gms_internal_zzbum.zzF(11, this.zzcsB);
            }
            if (this.zzrn != 0) {
                com_google_android_gms_internal_zzbum.zzF(12, this.zzrn);
            }
            if (!(this.zzcsH == null || this.zzcsH.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(13, this.zzcsH);
            }
            if (!(this.zzcsI == null || this.zzcsI.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(14, this.zzcsI);
            }
            if (this.zzcsJ != 180000) {
                com_google_android_gms_internal_zzbum.zzd(15, this.zzcsJ);
            }
            if (this.zzcsK != null) {
                com_google_android_gms_internal_zzbum.zza(16, this.zzcsK);
            }
            if (this.zzcsz != 0) {
                com_google_android_gms_internal_zzbum.zzb(17, this.zzcsz);
            }
            if (!Arrays.equals(this.zzcsL, zzbuw.zzcsp)) {
                com_google_android_gms_internal_zzbum.zzb(18, this.zzcsL);
            }
            if (this.zzcsN != 0) {
                com_google_android_gms_internal_zzbum.zzF(19, this.zzcsN);
            }
            if (this.zzcsO != null && this.zzcsO.length > 0) {
                while (i < this.zzcsO.length) {
                    com_google_android_gms_internal_zzbum.zzF(20, this.zzcsO[i]);
                    i++;
                }
            }
            if (this.zzcsA != 0) {
                com_google_android_gms_internal_zzbum.zzb(21, this.zzcsA);
            }
            if (this.zzcsP != 0) {
                com_google_android_gms_internal_zzbum.zzb(22, this.zzcsP);
            }
            if (this.zzcsQ != null) {
                com_google_android_gms_internal_zzbum.zza(23, this.zzcsQ);
            }
            if (!(this.zzcsM == null || this.zzcsM.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(24, this.zzcsM);
            }
            super.zza(com_google_android_gms_internal_zzbum);
        }

        public zzc zzaQ(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            while (true) {
                int zzacu = com_google_android_gms_internal_zzbul.zzacu();
                int zzc;
                Object obj;
                switch (zzacu) {
                    case 0:
                        break;
                    case 8:
                        this.zzcsy = com_google_android_gms_internal_zzbul.zzacx();
                        continue;
                    case 18:
                        this.tag = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    case 26:
                        zzc = zzbuw.zzc(com_google_android_gms_internal_zzbul, 26);
                        zzacu = this.zzcsC == null ? 0 : this.zzcsC.length;
                        obj = new zzd[(zzc + zzacu)];
                        if (zzacu != 0) {
                            System.arraycopy(this.zzcsC, 0, obj, 0, zzacu);
                        }
                        while (zzacu < obj.length - 1) {
                            obj[zzacu] = new zzd();
                            com_google_android_gms_internal_zzbul.zza(obj[zzacu]);
                            com_google_android_gms_internal_zzbul.zzacu();
                            zzacu++;
                        }
                        obj[zzacu] = new zzd();
                        com_google_android_gms_internal_zzbul.zza(obj[zzacu]);
                        this.zzcsC = obj;
                        continue;
                    case 34:
                        this.zzcsD = com_google_android_gms_internal_zzbul.readBytes();
                        continue;
                    case 50:
                        this.zzcsF = com_google_android_gms_internal_zzbul.readBytes();
                        continue;
                    case 66:
                        this.zzcsG = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    case 74:
                        if (this.zzcsE == null) {
                            this.zzcsE = new zza();
                        }
                        com_google_android_gms_internal_zzbul.zza(this.zzcsE);
                        continue;
                    case 80:
                        this.zzcbV = com_google_android_gms_internal_zzbul.zzacA();
                        continue;
                    case 88:
                        this.zzcsB = com_google_android_gms_internal_zzbul.zzacy();
                        continue;
                    case 96:
                        this.zzrn = com_google_android_gms_internal_zzbul.zzacy();
                        continue;
                    case 106:
                        this.zzcsH = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    case 114:
                        this.zzcsI = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    case 120:
                        this.zzcsJ = com_google_android_gms_internal_zzbul.zzacC();
                        continue;
                    case 130:
                        if (this.zzcsK == null) {
                            this.zzcsK = new zzb();
                        }
                        com_google_android_gms_internal_zzbul.zza(this.zzcsK);
                        continue;
                    case 136:
                        this.zzcsz = com_google_android_gms_internal_zzbul.zzacx();
                        continue;
                    case 146:
                        this.zzcsL = com_google_android_gms_internal_zzbul.readBytes();
                        continue;
                    case 152:
                        zzacu = com_google_android_gms_internal_zzbul.zzacy();
                        switch (zzacu) {
                            case 0:
                            case 1:
                            case 2:
                                this.zzcsN = zzacu;
                                break;
                            default:
                                continue;
                        }
                    case 160:
                        zzc = zzbuw.zzc(com_google_android_gms_internal_zzbul, 160);
                        zzacu = this.zzcsO == null ? 0 : this.zzcsO.length;
                        obj = new int[(zzc + zzacu)];
                        if (zzacu != 0) {
                            System.arraycopy(this.zzcsO, 0, obj, 0, zzacu);
                        }
                        while (zzacu < obj.length - 1) {
                            obj[zzacu] = com_google_android_gms_internal_zzbul.zzacy();
                            com_google_android_gms_internal_zzbul.zzacu();
                            zzacu++;
                        }
                        obj[zzacu] = com_google_android_gms_internal_zzbul.zzacy();
                        this.zzcsO = obj;
                        continue;
                    case 162:
                        int zzqj = com_google_android_gms_internal_zzbul.zzqj(com_google_android_gms_internal_zzbul.zzacD());
                        zzc = com_google_android_gms_internal_zzbul.getPosition();
                        zzacu = 0;
                        while (com_google_android_gms_internal_zzbul.zzacI() > 0) {
                            com_google_android_gms_internal_zzbul.zzacy();
                            zzacu++;
                        }
                        com_google_android_gms_internal_zzbul.zzql(zzc);
                        zzc = this.zzcsO == null ? 0 : this.zzcsO.length;
                        Object obj2 = new int[(zzacu + zzc)];
                        if (zzc != 0) {
                            System.arraycopy(this.zzcsO, 0, obj2, 0, zzc);
                        }
                        while (zzc < obj2.length) {
                            obj2[zzc] = com_google_android_gms_internal_zzbul.zzacy();
                            zzc++;
                        }
                        this.zzcsO = obj2;
                        com_google_android_gms_internal_zzbul.zzqk(zzqj);
                        continue;
                    case 168:
                        this.zzcsA = com_google_android_gms_internal_zzbul.zzacx();
                        continue;
                    case 176:
                        this.zzcsP = com_google_android_gms_internal_zzbul.zzacx();
                        continue;
                    case 186:
                        if (this.zzcsQ == null) {
                            this.zzcsQ = new zze();
                        }
                        com_google_android_gms_internal_zzbul.zza(this.zzcsQ);
                        continue;
                    case 194:
                        this.zzcsM = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    default:
                        if (!super.zza(com_google_android_gms_internal_zzbul, zzacu)) {
                            break;
                        }
                        continue;
                }
                return this;
            }
        }

        public /* synthetic */ zzbun zzacN() throws CloneNotSupportedException {
            return (zzc) zzacO();
        }

        public /* synthetic */ zzbut zzacO() throws CloneNotSupportedException {
            return (zzc) clone();
        }

        public zzc zzadf() {
            this.zzcsy = 0;
            this.zzcsz = 0;
            this.zzcsA = 0;
            this.tag = "";
            this.zzcsB = 0;
            this.zzrn = 0;
            this.zzcbV = false;
            this.zzcsC = zzd.zzadh();
            this.zzcsD = zzbuw.zzcsp;
            this.zzcsE = null;
            this.zzcsF = zzbuw.zzcsp;
            this.zzcsG = "";
            this.zzcsH = "";
            this.zzcsI = "";
            this.zzcsJ = 180000;
            this.zzcsK = null;
            this.zzcsL = zzbuw.zzcsp;
            this.zzcsM = "";
            this.zzcsN = 0;
            this.zzcsO = zzbuw.zzcsi;
            this.zzcsP = 0;
            this.zzcsQ = null;
            this.zzcrX = null;
            this.zzcsg = -1;
            return this;
        }

        public zzc zzadg() {
            try {
                zzc com_google_android_gms_internal_zzbuy_zzc = (zzc) super.zzacN();
                if (this.zzcsC != null && this.zzcsC.length > 0) {
                    com_google_android_gms_internal_zzbuy_zzc.zzcsC = new zzd[this.zzcsC.length];
                    for (int i = 0; i < this.zzcsC.length; i++) {
                        if (this.zzcsC[i] != null) {
                            com_google_android_gms_internal_zzbuy_zzc.zzcsC[i] = (zzd) this.zzcsC[i].zzacO();
                        }
                    }
                }
                if (this.zzcsE != null) {
                    com_google_android_gms_internal_zzbuy_zzc.zzcsE = (zza) this.zzcsE.zzacO();
                }
                if (this.zzcsK != null) {
                    com_google_android_gms_internal_zzbuy_zzc.zzcsK = (zzb) this.zzcsK.zzacO();
                }
                if (this.zzcsO != null && this.zzcsO.length > 0) {
                    com_google_android_gms_internal_zzbuy_zzc.zzcsO = (int[]) this.zzcsO.clone();
                }
                if (this.zzcsQ != null) {
                    com_google_android_gms_internal_zzbuy_zzc.zzcsQ = (zze) this.zzcsQ.zzacO();
                }
                return com_google_android_gms_internal_zzbuy_zzc;
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public /* synthetic */ zzbut zzb(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            return zzaQ(com_google_android_gms_internal_zzbul);
        }

        protected int zzv() {
            int i;
            int i2 = 0;
            int zzv = super.zzv();
            if (this.zzcsy != 0) {
                zzv += zzbum.zzf(1, this.zzcsy);
            }
            if (!(this.tag == null || this.tag.equals(""))) {
                zzv += zzbum.zzr(2, this.tag);
            }
            if (this.zzcsC != null && this.zzcsC.length > 0) {
                i = zzv;
                for (zzbut com_google_android_gms_internal_zzbut : this.zzcsC) {
                    if (com_google_android_gms_internal_zzbut != null) {
                        i += zzbum.zzc(3, com_google_android_gms_internal_zzbut);
                    }
                }
                zzv = i;
            }
            if (!Arrays.equals(this.zzcsD, zzbuw.zzcsp)) {
                zzv += zzbum.zzc(4, this.zzcsD);
            }
            if (!Arrays.equals(this.zzcsF, zzbuw.zzcsp)) {
                zzv += zzbum.zzc(6, this.zzcsF);
            }
            if (!(this.zzcsG == null || this.zzcsG.equals(""))) {
                zzv += zzbum.zzr(8, this.zzcsG);
            }
            if (this.zzcsE != null) {
                zzv += zzbum.zzc(9, this.zzcsE);
            }
            if (this.zzcbV) {
                zzv += zzbum.zzh(10, this.zzcbV);
            }
            if (this.zzcsB != 0) {
                zzv += zzbum.zzH(11, this.zzcsB);
            }
            if (this.zzrn != 0) {
                zzv += zzbum.zzH(12, this.zzrn);
            }
            if (!(this.zzcsH == null || this.zzcsH.equals(""))) {
                zzv += zzbum.zzr(13, this.zzcsH);
            }
            if (!(this.zzcsI == null || this.zzcsI.equals(""))) {
                zzv += zzbum.zzr(14, this.zzcsI);
            }
            if (this.zzcsJ != 180000) {
                zzv += zzbum.zzh(15, this.zzcsJ);
            }
            if (this.zzcsK != null) {
                zzv += zzbum.zzc(16, this.zzcsK);
            }
            if (this.zzcsz != 0) {
                zzv += zzbum.zzf(17, this.zzcsz);
            }
            if (!Arrays.equals(this.zzcsL, zzbuw.zzcsp)) {
                zzv += zzbum.zzc(18, this.zzcsL);
            }
            if (this.zzcsN != 0) {
                zzv += zzbum.zzH(19, this.zzcsN);
            }
            if (this.zzcsO != null && this.zzcsO.length > 0) {
                i = 0;
                while (i2 < this.zzcsO.length) {
                    i += zzbum.zzqp(this.zzcsO[i2]);
                    i2++;
                }
                zzv = (zzv + i) + (this.zzcsO.length * 2);
            }
            if (this.zzcsA != 0) {
                zzv += zzbum.zzf(21, this.zzcsA);
            }
            if (this.zzcsP != 0) {
                zzv += zzbum.zzf(22, this.zzcsP);
            }
            if (this.zzcsQ != null) {
                zzv += zzbum.zzc(23, this.zzcsQ);
            }
            return (this.zzcsM == null || this.zzcsM.equals("")) ? zzv : zzv + zzbum.zzr(24, this.zzcsM);
        }
    }

    public static final class zzd extends zzbun<zzd> implements Cloneable {
        private static volatile zzd[] zzcsR;
        public String value;
        public String zzaA;

        public zzd() {
            zzadi();
        }

        public static zzd[] zzadh() {
            if (zzcsR == null) {
                synchronized (zzbur.zzcsf) {
                    if (zzcsR == null) {
                        zzcsR = new zzd[0];
                    }
                }
            }
            return zzcsR;
        }

        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzadj();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd com_google_android_gms_internal_zzbuy_zzd = (zzd) obj;
            if (this.zzaA == null) {
                if (com_google_android_gms_internal_zzbuy_zzd.zzaA != null) {
                    return false;
                }
            } else if (!this.zzaA.equals(com_google_android_gms_internal_zzbuy_zzd.zzaA)) {
                return false;
            }
            if (this.value == null) {
                if (com_google_android_gms_internal_zzbuy_zzd.value != null) {
                    return false;
                }
            } else if (!this.value.equals(com_google_android_gms_internal_zzbuy_zzd.value)) {
                return false;
            }
            return (this.zzcrX == null || this.zzcrX.isEmpty()) ? com_google_android_gms_internal_zzbuy_zzd.zzcrX == null || com_google_android_gms_internal_zzbuy_zzd.zzcrX.isEmpty() : this.zzcrX.equals(com_google_android_gms_internal_zzbuy_zzd.zzcrX);
        }

        public int hashCode() {
            int i = 0;
            int hashCode = ((this.value == null ? 0 : this.value.hashCode()) + (((this.zzaA == null ? 0 : this.zzaA.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
            if (!(this.zzcrX == null || this.zzcrX.isEmpty())) {
                i = this.zzcrX.hashCode();
            }
            return hashCode + i;
        }

        public void zza(zzbum com_google_android_gms_internal_zzbum) throws IOException {
            if (!(this.zzaA == null || this.zzaA.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(1, this.zzaA);
            }
            if (!(this.value == null || this.value.equals(""))) {
                com_google_android_gms_internal_zzbum.zzq(2, this.value);
            }
            super.zza(com_google_android_gms_internal_zzbum);
        }

        public zzd zzaR(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            while (true) {
                int zzacu = com_google_android_gms_internal_zzbul.zzacu();
                switch (zzacu) {
                    case 0:
                        break;
                    case 10:
                        this.zzaA = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    case 18:
                        this.value = com_google_android_gms_internal_zzbul.readString();
                        continue;
                    default:
                        if (!super.zza(com_google_android_gms_internal_zzbul, zzacu)) {
                            break;
                        }
                        continue;
                }
                return this;
            }
        }

        public /* synthetic */ zzbun zzacN() throws CloneNotSupportedException {
            return (zzd) zzacO();
        }

        public /* synthetic */ zzbut zzacO() throws CloneNotSupportedException {
            return (zzd) clone();
        }

        public zzd zzadi() {
            this.zzaA = "";
            this.value = "";
            this.zzcrX = null;
            this.zzcsg = -1;
            return this;
        }

        public zzd zzadj() {
            try {
                return (zzd) super.zzacN();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public /* synthetic */ zzbut zzb(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            return zzaR(com_google_android_gms_internal_zzbul);
        }

        protected int zzv() {
            int zzv = super.zzv();
            if (!(this.zzaA == null || this.zzaA.equals(""))) {
                zzv += zzbum.zzr(1, this.zzaA);
            }
            return (this.value == null || this.value.equals("")) ? zzv : zzv + zzbum.zzr(2, this.value);
        }
    }

    public static final class zze extends zzbun<zze> implements Cloneable {
        public int zzcsS;
        public int zzcsT;

        public zze() {
            zzadk();
        }

        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            return zzadl();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze com_google_android_gms_internal_zzbuy_zze = (zze) obj;
            return (this.zzcsS == com_google_android_gms_internal_zzbuy_zze.zzcsS && this.zzcsT == com_google_android_gms_internal_zzbuy_zze.zzcsT) ? (this.zzcrX == null || this.zzcrX.isEmpty()) ? com_google_android_gms_internal_zzbuy_zze.zzcrX == null || com_google_android_gms_internal_zzbuy_zze.zzcrX.isEmpty() : this.zzcrX.equals(com_google_android_gms_internal_zzbuy_zze.zzcrX) : false;
        }

        public int hashCode() {
            int hashCode = (((((getClass().getName().hashCode() + 527) * 31) + this.zzcsS) * 31) + this.zzcsT) * 31;
            int hashCode2 = (this.zzcrX == null || this.zzcrX.isEmpty()) ? 0 : this.zzcrX.hashCode();
            return hashCode2 + hashCode;
        }

        public void zza(zzbum com_google_android_gms_internal_zzbum) throws IOException {
            if (this.zzcsS != -1) {
                com_google_android_gms_internal_zzbum.zzF(1, this.zzcsS);
            }
            if (this.zzcsT != 0) {
                com_google_android_gms_internal_zzbum.zzF(2, this.zzcsT);
            }
            super.zza(com_google_android_gms_internal_zzbum);
        }

        public zze zzaS(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            while (true) {
                int zzacu = com_google_android_gms_internal_zzbul.zzacu();
                switch (zzacu) {
                    case 0:
                        break;
                    case 8:
                        zzacu = com_google_android_gms_internal_zzbul.zzacy();
                        switch (zzacu) {
                            case WebViewClient.ERROR_UNKNOWN /*-1*/:
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                                this.zzcsS = zzacu;
                                break;
                            default:
                                continue;
                        }
                    case 16:
                        zzacu = com_google_android_gms_internal_zzbul.zzacy();
                        switch (zzacu) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 100:
                                this.zzcsT = zzacu;
                                break;
                            default:
                                continue;
                        }
                    default:
                        if (!super.zza(com_google_android_gms_internal_zzbul, zzacu)) {
                            break;
                        }
                        continue;
                }
                return this;
            }
        }

        public /* synthetic */ zzbun zzacN() throws CloneNotSupportedException {
            return (zze) zzacO();
        }

        public /* synthetic */ zzbut zzacO() throws CloneNotSupportedException {
            return (zze) clone();
        }

        public zze zzadk() {
            this.zzcsS = -1;
            this.zzcsT = 0;
            this.zzcrX = null;
            this.zzcsg = -1;
            return this;
        }

        public zze zzadl() {
            try {
                return (zze) super.zzacN();
            } catch (CloneNotSupportedException e) {
                throw new AssertionError(e);
            }
        }

        public /* synthetic */ zzbut zzb(zzbul com_google_android_gms_internal_zzbul) throws IOException {
            return zzaS(com_google_android_gms_internal_zzbul);
        }

        protected int zzv() {
            int zzv = super.zzv();
            if (this.zzcsS != -1) {
                zzv += zzbum.zzH(1, this.zzcsS);
            }
            return this.zzcsT != 0 ? zzv + zzbum.zzH(2, this.zzcsT) : zzv;
        }
    }
}
