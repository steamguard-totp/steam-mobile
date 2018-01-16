package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

public interface zzbja extends IInterface {

    public static abstract class zza extends Binder implements zzbja {

        private static class zza implements zzbja {
            private IBinder zzrp;

            zza(IBinder iBinder) {
                this.zzrp = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrp;
            }

            public void onFailure(Status status) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (status != null) {
                        obtain.writeInt(1);
                        status.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzUh() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    this.zzrp.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzUi() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    this.zzrp.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(zzbjj com_google_android_gms_internal_zzbjj) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (com_google_android_gms_internal_zzbjj != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzbjj.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(zzbjp com_google_android_gms_internal_zzbjp, zzbjl com_google_android_gms_internal_zzbjl) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (com_google_android_gms_internal_zzbjp != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzbjp.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (com_google_android_gms_internal_zzbjl != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzbjl.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zza(zzbjv com_google_android_gms_internal_zzbjv) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (com_google_android_gms_internal_zzbjv != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzbjv.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zzb(zzbjp com_google_android_gms_internal_zzbjp) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    if (com_google_android_gms_internal_zzbjp != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzbjp.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            public void zziy(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    obtain.writeString(str);
                    this.zzrp.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public static zzbja zzfD(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbja)) ? new zza(iBinder) : (zzbja) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zzb(parcel.readInt() != 0 ? (zzbjp) zzbjp.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zza(parcel.readInt() != 0 ? (zzbjp) zzbjp.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (zzbjl) zzbjl.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zza(parcel.readInt() != 0 ? (zzbjj) zzbjj.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zza(parcel.readInt() != 0 ? (zzbjv) zzbjv.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    onFailure(parcel.readInt() != 0 ? (Status) Status.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zzUh();
                    return true;
                case 7:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zzUi();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    zziy(parcel.readString());
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.firebase.auth.api.internal.IFirebaseAuthCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onFailure(Status status) throws RemoteException;

    void zzUh() throws RemoteException;

    void zzUi() throws RemoteException;

    void zza(zzbjj com_google_android_gms_internal_zzbjj) throws RemoteException;

    void zza(zzbjp com_google_android_gms_internal_zzbjp, zzbjl com_google_android_gms_internal_zzbjl) throws RemoteException;

    void zza(zzbjv com_google_android_gms_internal_zzbjv) throws RemoteException;

    void zzb(zzbjp com_google_android_gms_internal_zzbjp) throws RemoteException;

    void zziy(String str) throws RemoteException;
}
