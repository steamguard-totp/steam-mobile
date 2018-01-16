package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzyu;

public class CastMediaOptions extends zza {
    public static final Creator<CastMediaOptions> CREATOR = new zza();
    private static final zzyu zzaoQ = new zzyu("CastMediaOptions");
    private final int mVersionCode;
    private final String zzaqH;
    private final String zzaqI;
    private final zzb zzaqJ;
    private final NotificationOptions zzaqK;

    CastMediaOptions(int i, String str, String str2, IBinder iBinder, NotificationOptions notificationOptions) {
        this.mVersionCode = i;
        this.zzaqH = str;
        this.zzaqI = str2;
        this.zzaqJ = zzb.zza.zzbc(iBinder);
        this.zzaqK = notificationOptions;
    }

    public String getExpandedControllerActivityClassName() {
        return this.zzaqI;
    }

    public ImagePicker getImagePicker() {
        if (this.zzaqJ != null) {
            try {
                return (ImagePicker) zze.zzE(this.zzaqJ.zzsR());
            } catch (Throwable e) {
                zzaoQ.zzb(e, "Unable to call %s on %s.", "getWrappedClientObject", zzb.class.getSimpleName());
            }
        }
        return null;
    }

    public String getMediaIntentReceiverClassName() {
        return this.zzaqH;
    }

    public NotificationOptions getNotificationOptions() {
        return this.zzaqK;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public IBinder zzsQ() {
        return this.zzaqJ == null ? null : this.zzaqJ.asBinder();
    }
}
