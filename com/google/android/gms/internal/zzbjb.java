package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.firebase.auth.UserProfileChangeRequest;

public interface zzbjb extends IInterface {

    public static abstract class zza extends Binder implements zzbjb {

        private static class zza implements zzbjb {
            private IBinder zzrp;

            zza(IBinder iBinder) {
                this.zzrp = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrp;
            }

            public void zza(zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzbjz com_google_android_gms_internal_zzbjz, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    if (com_google_android_gms_internal_zzbjz != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzbjz.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(String str, zzbjz com_google_android_gms_internal_zzbjz, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    if (com_google_android_gms_internal_zzbjz != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzbjz.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(String str, UserProfileChangeRequest userProfileChangeRequest, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    if (userProfileChangeRequest != null) {
                        obtain.writeInt(1);
                        userProfileChangeRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(String str, String str2, String str3, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzb(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzb(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzc(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzc(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzd(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzd(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zze(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zze(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzf(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzf(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzg(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzh(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzi(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zzj(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    obtain.writeString(str);
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzbja != null ? com_google_android_gms_internal_zzbja.asBinder() : null);
                    this.zzrp.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzbjb zzfE(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbjb)) ? new zza(iBinder) : (zzbjb) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzbjz com_google_android_gms_internal_zzbjz = null;
            String readString;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zza(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzb(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    if (parcel.readInt() != 0) {
                        com_google_android_gms_internal_zzbjz = (zzbjz) zzbjz.CREATOR.createFromParcel(parcel);
                    }
                    zza(com_google_android_gms_internal_zzbjz, com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    UserProfileChangeRequest userProfileChangeRequest;
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        userProfileChangeRequest = (UserProfileChangeRequest) UserProfileChangeRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString, userProfileChangeRequest, com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zza(parcel.readString(), parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzb(parcel.readString(), parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzc(parcel.readString(), parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzd(parcel.readString(), parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzc(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzd(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zza(parcel.readString(), parcel.readString(), parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    readString = parcel.readString();
                    if (parcel.readInt() != 0) {
                        com_google_android_gms_internal_zzbjz = (zzbjz) zzbjz.CREATOR.createFromParcel(parcel);
                    }
                    zza(readString, com_google_android_gms_internal_zzbjz, com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zze(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zze(parcel.readString(), parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzf(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zza(com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzg(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzh(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzi(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzj(parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    zzf(parcel.readString(), parcel.readString(), com.google.android.gms.internal.zzbja.zza.zzfD(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.auth.api.internal.IFirebaseAuthService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zza(zzbjz com_google_android_gms_internal_zzbjz, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zza(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zza(String str, zzbjz com_google_android_gms_internal_zzbjz, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zza(String str, UserProfileChangeRequest userProfileChangeRequest, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zza(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zza(String str, String str2, String str3, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzb(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzb(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzc(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzc(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzd(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzd(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zze(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zze(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzf(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzf(String str, String str2, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzg(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzh(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzi(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;

    void zzj(String str, zzbja com_google_android_gms_internal_zzbja) throws RemoteException;
}
