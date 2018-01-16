package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;

public interface zzvl extends IInterface {

    public static abstract class zza extends Binder implements zzvl {

        private static class zza implements zzvl {
            private IBinder zzrp;

            zza(IBinder iBinder) {
                this.zzrp = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrp;
            }

            public void zza(zzvk com_google_android_gms_internal_zzvk) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzvk != null ? com_google_android_gms_internal_zzvk.asBinder() : null);
                    this.zzrp.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void zza(zzvk com_google_android_gms_internal_zzvk, ProxyRequest proxyRequest) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzvk != null ? com_google_android_gms_internal_zzvk.asBinder() : null);
                    if (proxyRequest != null) {
                        obtain.writeInt(1);
                        proxyRequest.writeToParcel(obtain, 0);
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

            public void zza(zzvk com_google_android_gms_internal_zzvk, com.google.android.gms.auth.api.proxy.zza com_google_android_gms_auth_api_proxy_zza) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    obtain.writeStrongBinder(com_google_android_gms_internal_zzvk != null ? com_google_android_gms_internal_zzvk.asBinder() : null);
                    if (com_google_android_gms_auth_api_proxy_zza != null) {
                        obtain.writeInt(1);
                        com_google_android_gms_auth_api_proxy_zza.writeToParcel(obtain, 0);
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

        public static zzvl zzaJ(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzvl)) ? new zza(iBinder) : (zzvl) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            com.google.android.gms.auth.api.proxy.zza com_google_android_gms_auth_api_proxy_zza = null;
            zzvk zzaI;
            switch (i) {
                case 1:
                    ProxyRequest proxyRequest;
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zzaI = com.google.android.gms.internal.zzvk.zza.zzaI(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        proxyRequest = (ProxyRequest) ProxyRequest.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaI, proxyRequest);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zzaI = com.google.android.gms.internal.zzvk.zza.zzaI(parcel.readStrongBinder());
                    if (parcel.readInt() != 0) {
                        com_google_android_gms_auth_api_proxy_zza = (com.google.android.gms.auth.api.proxy.zza) com.google.android.gms.auth.api.proxy.zza.CREATOR.createFromParcel(parcel);
                    }
                    zza(zzaI, com_google_android_gms_auth_api_proxy_zza);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zza(com.google.android.gms.internal.zzvk.zza.zzaI(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.internal.IAuthService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzvk com_google_android_gms_internal_zzvk) throws RemoteException;

    void zza(zzvk com_google_android_gms_internal_zzvk, ProxyRequest proxyRequest) throws RemoteException;

    void zza(zzvk com_google_android_gms_internal_zzvk, com.google.android.gms.auth.api.proxy.zza com_google_android_gms_auth_api_proxy_zza) throws RemoteException;
}
