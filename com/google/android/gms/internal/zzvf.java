package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;

public interface zzvf extends IInterface {

    public static abstract class zza extends Binder implements zzvf {

        private static class zza implements zzvf {
            private IBinder zzrp;

            zza(IBinder iBinder) {
                this.zzrp = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrp;
            }

            public void zza(zzve com_google_android_gms_internal_zzve) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzve != null ? com_google_android_gms_internal_zzve.asBinder() : null);
                    this.zzrp.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzve com_google_android_gms_internal_zzve, CredentialRequest credentialRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzve != null ? com_google_android_gms_internal_zzve.asBinder() : null);
                    if (credentialRequest != null) {
                        obtain.writeInt(1);
                        credentialRequest.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzve com_google_android_gms_internal_zzve, zzva com_google_android_gms_internal_zzva) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzve != null ? com_google_android_gms_internal_zzve.asBinder() : null);
                    if (com_google_android_gms_internal_zzva != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzva.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzve com_google_android_gms_internal_zzve, zzvc com_google_android_gms_internal_zzvc) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzve != null ? com_google_android_gms_internal_zzve.asBinder() : null);
                    if (com_google_android_gms_internal_zzvc != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzvc.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzve com_google_android_gms_internal_zzve, zzvg com_google_android_gms_internal_zzvg) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzve != null ? com_google_android_gms_internal_zzve.asBinder() : null);
                    if (com_google_android_gms_internal_zzvg != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_internal_zzvg.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.zzrp.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static zzvf zzaG(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzvf)) ? new zza(iBinder) : (zzvf) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            zzvc com_google_android_gms_internal_zzvc = null;
            zzve zzaF;
            switch (i) {
                case 1:
                    CredentialRequest credentialRequest;
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzaF = com.google.android.gms.internal.zzve.zza.zzaF(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        credentialRequest = (CredentialRequest) CredentialRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaF, credentialRequest);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    zzvg com_google_android_gms_internal_zzvg;
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzaF = com.google.android.gms.internal.zzve.zza.zzaF(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        com_google_android_gms_internal_zzvg = (zzvg) zzvg.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaF, com_google_android_gms_internal_zzvg);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    zzva com_google_android_gms_internal_zzva;
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzaF = com.google.android.gms.internal.zzve.zza.zzaF(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        com_google_android_gms_internal_zzva = (zzva) zzva.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaF, com_google_android_gms_internal_zzva);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zza(com.google.android.gms.internal.zzve.zza.zzaF(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    zzaF = com.google.android.gms.internal.zzve.zza.zzaF(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        com_google_android_gms_internal_zzvc = (zzvc) zzvc.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaF, com_google_android_gms_internal_zzvc);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.credentials.internal.ICredentialsService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzve com_google_android_gms_internal_zzve) throws RemoteException;

    void zza(zzve com_google_android_gms_internal_zzve, CredentialRequest credentialRequest) throws RemoteException;

    void zza(zzve com_google_android_gms_internal_zzve, zzva com_google_android_gms_internal_zzva) throws RemoteException;

    void zza(zzve com_google_android_gms_internal_zzve, zzvc com_google_android_gms_internal_zzvc) throws RemoteException;

    void zza(zzve com_google_android_gms_internal_zzve, zzvg com_google_android_gms_internal_zzvg) throws RemoteException;
}
