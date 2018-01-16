package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.zzc;
import com.google.android.gms.cast.framework.zzf;
import com.google.android.gms.cast.framework.zzg;
import com.google.android.gms.cast.framework.zzh;
import com.google.android.gms.cast.framework.zzl;
import com.google.android.gms.cast.framework.zzm;
import com.google.android.gms.cast.framework.zzq;
import com.google.android.gms.dynamic.zzd;
import java.util.Map;

public interface zzwt extends IInterface {

    public static abstract class zza extends Binder implements zzwt {

        private static class zza implements zzwt {
            private IBinder zzrp;

            zza(IBinder iBinder) {
                this.zzrp = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrp;
            }

            public zzc zza(zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzd com_google_android_gms_dynamic_zzd3, CastMediaOptions castMediaOptions) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd2 != null ? com_google_android_gms_dynamic_zzd2.asBinder() : null);
                    if (com_google_android_gms_dynamic_zzd3 != null) {
                        iBinder = com_google_android_gms_dynamic_zzd3.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    if (castMediaOptions != null) {
                        obtain.writeInt(1);
                        castMediaOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    zzc zzbd = com.google.android.gms.cast.framework.media.zzc.zza.zzbd(obtain2.readStrongBinder());
                    return zzbd;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public zzg zza(zzd com_google_android_gms_dynamic_zzd, CastOptions castOptions, zzwu com_google_android_gms_internal_zzwu, Map map) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    if (castOptions != null) {
                        obtain.writeInt(1);
                        castOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (com_google_android_gms_internal_zzwu != null) {
                        iBinder = com_google_android_gms_internal_zzwu.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeMap(map);
                    this.zzrp.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    zzg zzaP = com.google.android.gms.cast.framework.zzg.zza.zzaP(obtain2.readStrongBinder());
                    return zzaP;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public zzh zza(CastOptions castOptions, zzd com_google_android_gms_dynamic_zzd, zzf com_google_android_gms_cast_framework_zzf) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    if (castOptions != null) {
                        obtain.writeInt(1);
                        castOptions.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    if (com_google_android_gms_cast_framework_zzf != null) {
                        iBinder = com_google_android_gms_cast_framework_zzf.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrp.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    zzh zzaQ = com.google.android.gms.cast.framework.zzh.zza.zzaQ(obtain2.readStrongBinder());
                    return zzaQ;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public zzl zza(zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzd com_google_android_gms_dynamic_zzd3) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd2 != null ? com_google_android_gms_dynamic_zzd2.asBinder() : null);
                    if (com_google_android_gms_dynamic_zzd3 != null) {
                        iBinder = com_google_android_gms_dynamic_zzd3.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrp.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    zzl zzaU = com.google.android.gms.cast.framework.zzl.zza.zzaU(obtain2.readStrongBinder());
                    return zzaU;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public zzm zza(String str, String str2, zzq com_google_android_gms_cast_framework_zzq) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(com_google_android_gms_cast_framework_zzq != null ? com_google_android_gms_cast_framework_zzq.asBinder() : null);
                    this.zzrp.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    zzm zzaV = com.google.android.gms.cast.framework.zzm.zza.zzaV(obtain2.readStrongBinder());
                    return zzaV;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public zzxc zza(zzd com_google_android_gms_dynamic_zzd, zzxd com_google_android_gms_internal_zzxd, int i, int i2, boolean z, long j, int i3, int i4, int i5) throws RemoteException {
                IBinder iBinder = null;
                int i6 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    if (com_google_android_gms_internal_zzxd != null) {
                        iBinder = com_google_android_gms_internal_zzxd.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (z) {
                        i6 = 1;
                    }
                    obtain.writeInt(i6);
                    obtain.writeLong(j);
                    obtain.writeInt(i3);
                    obtain.writeInt(i4);
                    obtain.writeInt(i5);
                    this.zzrp.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    zzxc zzbe = com.google.android.gms.internal.zzxc.zza.zzbe(obtain2.readStrongBinder());
                    return zzbe;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzwt zzaZ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzwt)) ? new zza(iBinder) : (zzwt) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    zzg zza = zza(com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? (CastOptions) CastOptions.CREATOR.createFromParcel(parcel) : null, com.google.android.gms.internal.zzwu.zza.zzba(parcel.readStrongBinder()), parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza != null ? zza.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    zzm zza2 = zza(parcel.readString(), parcel.readString(), com.google.android.gms.cast.framework.zzq.zza.zzaY(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza2 != null ? zza2.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    zzh zza3 = zza(parcel.readInt() != 0 ? (CastOptions) CastOptions.CREATOR.createFromParcel(parcel) : null, com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.cast.framework.zzf.zza.zzaO(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza3 != null ? zza3.asBinder() : null);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    zzc zza4 = zza(com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), parcel.readInt() != 0 ? (CastMediaOptions) CastMediaOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza4 != null ? zza4.asBinder() : null);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    zzl zza5 = zza(com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza5 != null ? zza5.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    zzxc zza6 = zza(com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.internal.zzxd.zza.zzbf(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt() != 0, parcel.readLong(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zza6 != null ? zza6.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.cast.framework.internal.ICastDynamiteModule");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzc zza(zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzd com_google_android_gms_dynamic_zzd3, CastMediaOptions castMediaOptions) throws RemoteException;

    zzg zza(zzd com_google_android_gms_dynamic_zzd, CastOptions castOptions, zzwu com_google_android_gms_internal_zzwu, Map map) throws RemoteException;

    zzh zza(CastOptions castOptions, zzd com_google_android_gms_dynamic_zzd, zzf com_google_android_gms_cast_framework_zzf) throws RemoteException;

    zzl zza(zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzd com_google_android_gms_dynamic_zzd3) throws RemoteException;

    zzm zza(String str, String str2, zzq com_google_android_gms_cast_framework_zzq) throws RemoteException;

    zzxc zza(zzd com_google_android_gms_dynamic_zzd, zzxd com_google_android_gms_internal_zzxd, int i, int i2, boolean z, long j, int i3, int i4, int i5) throws RemoteException;
}
