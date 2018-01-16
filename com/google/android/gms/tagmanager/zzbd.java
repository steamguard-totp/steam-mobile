package com.google.android.gms.tagmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzayv;

public interface zzbd extends IInterface {

    public static abstract class zza extends Binder implements zzbd {

        private static class zza implements zzbd {
            private IBinder zzrp;

            zza(IBinder iBinder) {
                this.zzrp = iBinder;
            }

            public IBinder asBinder() {
                return this.zzrp;
            }

            public zzayv getService(zzd com_google_android_gms_dynamic_zzd, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) throws RemoteException {
                IBinder iBinder = null;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
                    obtain.writeStrongBinder(com_google_android_gms_dynamic_zzd != null ? com_google_android_gms_dynamic_zzd.asBinder() : null);
                    obtain.writeStrongBinder(com_google_android_gms_tagmanager_zzbb != null ? com_google_android_gms_tagmanager_zzbb.asBinder() : null);
                    if (com_google_android_gms_tagmanager_zzay != null) {
                        iBinder = com_google_android_gms_tagmanager_zzay.asBinder();
                    }
                    obtain.writeStrongBinder(iBinder);
                    this.zzrp.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    zzayv zzff = com.google.android.gms.internal.zzayv.zza.zzff(obtain2.readStrongBinder());
                    return zzff;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.tagmanager.ITagManagerServiceProvider");
        }

        public static zzbd asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
            return (queryLocalInterface == null || !(queryLocalInterface instanceof zzbd)) ? new zza(iBinder) : (zzbd) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
                    zzayv service = getService(com.google.android.gms.dynamic.zzd.zza.zzcd(parcel.readStrongBinder()), com.google.android.gms.tagmanager.zzbb.zza.zzfd(parcel.readStrongBinder()), com.google.android.gms.tagmanager.zzay.zza.zzfa(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(service != null ? service.asBinder() : null);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.tagmanager.ITagManagerServiceProvider");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    zzayv getService(zzd com_google_android_gms_dynamic_zzd, zzbb com_google_android_gms_tagmanager_zzbb, zzay com_google_android_gms_tagmanager_zzay) throws RemoteException;
}
