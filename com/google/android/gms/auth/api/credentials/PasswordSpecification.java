package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

public final class PasswordSpecification extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Creator<PasswordSpecification> CREATOR = new zzf();
    public static final PasswordSpecification zzaiy = new zza().zzl(12, 16).zzcr("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").zzf("abcdefghijkmnopqrstxyz", 1).zzf("ABCDEFGHJKLMNPQRSTXY", 1).zzf("3456789", 1).zzqz();
    public static final PasswordSpecification zzaiz = new zza().zzl(12, 16).zzcr("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").zzf("abcdefghijklmnopqrstuvwxyz", 1).zzf("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).zzf("1234567890", 1).zzqz();
    final int mVersionCode;
    final String zzaiA;
    final List<String> zzaiB;
    final List<Integer> zzaiC;
    final int zzaiD;
    final int zzaiE;
    private final int[] zzaiF = zzqy();
    private final Random zzzI = new SecureRandom();

    public static class zza {
        private final List<String> zzaiB = new ArrayList();
        private final List<Integer> zzaiC = new ArrayList();
        private int zzaiD = 12;
        private int zzaiE = 16;
        private final TreeSet<Character> zzaiG = new TreeSet();

        private void zzqA() {
            int i = 0;
            for (Integer intValue : this.zzaiC) {
                i = intValue.intValue() + i;
            }
            if (i > this.zzaiE) {
                throw new zzb("required character count cannot be greater than the max password size");
            }
        }

        private void zzqB() {
            boolean[] zArr = new boolean[95];
            for (String toCharArray : this.zzaiB) {
                for (char c : toCharArray.toCharArray()) {
                    if (zArr[c - 32]) {
                        throw new zzb("character " + c + " occurs in more than one required character set");
                    }
                    zArr[c - 32] = true;
                }
            }
        }

        private TreeSet<Character> zzv(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                throw new zzb(String.valueOf(str2).concat(" cannot be null or empty"));
            }
            TreeSet<Character> treeSet = new TreeSet();
            for (char c : str.toCharArray()) {
                if (PasswordSpecification.zzc(c, 32, 126)) {
                    throw new zzb(String.valueOf(str2).concat(" must only contain ASCII printable characters"));
                }
                treeSet.add(Character.valueOf(c));
            }
            return treeSet;
        }

        public zza zzcr(String str) {
            this.zzaiG.addAll(zzv(str, "allowedChars"));
            return this;
        }

        public zza zzf(String str, int i) {
            if (i < 1) {
                throw new zzb("count must be at least 1");
            }
            this.zzaiB.add(PasswordSpecification.zzb(zzv(str, "requiredChars")));
            this.zzaiC.add(Integer.valueOf(i));
            return this;
        }

        public zza zzl(int i, int i2) {
            if (i < 1) {
                throw new zzb("minimumSize must be at least 1");
            } else if (i > i2) {
                throw new zzb("maximumSize must be greater than or equal to minimumSize");
            } else {
                this.zzaiD = i;
                this.zzaiE = i2;
                return this;
            }
        }

        public PasswordSpecification zzqz() {
            if (this.zzaiG.isEmpty()) {
                throw new zzb("no allowed characters specified");
            }
            zzqA();
            zzqB();
            return new PasswordSpecification(1, PasswordSpecification.zzb(this.zzaiG), this.zzaiB, this.zzaiC, this.zzaiD, this.zzaiE);
        }
    }

    public static class zzb extends Error {
        public zzb(String str) {
            super(str);
        }
    }

    PasswordSpecification(int i, String str, List<String> list, List<Integer> list2, int i2, int i3) {
        this.mVersionCode = i;
        this.zzaiA = str;
        this.zzaiB = Collections.unmodifiableList(list);
        this.zzaiC = Collections.unmodifiableList(list2);
        this.zzaiD = i2;
        this.zzaiE = i3;
    }

    private int zza(char c) {
        return c - 32;
    }

    private static String zzb(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        int i = 0;
        for (Character charValue : collection) {
            int i2 = i + 1;
            cArr[i] = charValue.charValue();
            i = i2;
        }
        return new String(cArr);
    }

    private static boolean zzc(int i, int i2, int i3) {
        return i < i2 || i > i3;
    }

    private int[] zzqy() {
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        int i = 0;
        for (String toCharArray : this.zzaiB) {
            for (char zza : toCharArray.toCharArray()) {
                iArr[zza(zza)] = i;
            }
            i++;
        }
        return iArr;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
