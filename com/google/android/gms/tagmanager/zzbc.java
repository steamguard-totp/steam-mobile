package com.google.android.gms.tagmanager;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;

public interface zzbc extends IInterface {

    public static abstract class zza extends Binder implements zzbc {

        private static class zza implements zzbc {
            private IBinder zzrp;

            zza(IBinder iBinder) {
                this.zzrp = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrp;
            }

            public void initialize(zzd com_google_android_gms_dynamic_zzd, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ITagManagerApi");
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    obtain.writeStrongBinder(com_google_android_gms_tagmanager_zzbb != null ? com_google_android_gms_tagmanager_zzbb.asBinder() : null);
                    if (com_google_android_gms_tagmanager_zzay != null) {
                        iBinder = com_google_android_gms_tagmanager_zzay.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrp.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void preview(Intent intent, zzd com_google_android_gms_dynamic_zzd) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ITagManagerApi");
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    this.zzrp.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void previewIntent(Intent intent, zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ITagManagerApi");
                    if (intent != null) {
                        obtain.writeInt(1);
                        intent.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd2 != null ? com_google_android_gms_dynamic_zzd2.asBinder() : null);
                    obtain.writeStrongBinder(com_google_android_gms_tagmanager_zzbb != null ? com_google_android_gms_tagmanager_zzbb.asBinder() : null);
                    if (com_google_android_gms_tagmanager_zzay != null) {
                        iBinder = com_google_android_gms_tagmanager_zzay.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrp.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tagmanager.ITagManagerApi");
        }

        public static zzbc asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.ITagManagerApi");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbc)) ? new zza(iBinder) : (zzbc) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Intent intent = null;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ITagManagerApi");
                    initialize(com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.tagmanager.zzbb.zza.zzfd(parcel.readStrongBinder()), com.google.android.gms.tagmanager.zzay.zza.zzfa(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ITagManagerApi");
                    if (parcel.readInt() != 0) {
                        intent = (Intent) Intent.CREATOR.createFromParcel(parcel);
                    }
                    preview(intent, com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ITagManagerApi");
                    previewIntent(parcel.readInt() != 0 ? (Intent) Intent.CREATOR.createFromParcel(parcel) : null, com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.tagmanager.zzbb.zza.zzfd(parcel.readStrongBinder()), com.google.android.gms.tagmanager.zzay.zza.zzfa(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.tagmanager.ITagManagerApi");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void initialize(zzd com_google_android_gms_dynamic_zzd, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) throws RemoteException;

    void preview(Intent intent, zzd com_google_android_gms_dynamic_zzd) throws RemoteException;

    void previewIntent(Intent intent, zzd com_google_android_gms_dynamic_zzd, zzd com_google_android_gms_dynamic_zzd2, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) throws RemoteException;
}
