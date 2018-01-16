package com.google.android.gms.internal;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdRequest.Gender;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.zza;
import java.util.Date;
import java.util.HashSet;

@zzmb
public final class zzkg {

    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] zzLe = new int[Gender.values().length];

        static {
            zzLf = new int[ErrorCode.values().length];
            try {
                zzLf[ErrorCode.INTERNAL_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                zzLf[ErrorCode.INVALID_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                zzLf[ErrorCode.NETWORK_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                zzLf[ErrorCode.NO_FILL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                zzLe[Gender.FEMALE.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                zzLe[Gender.MALE.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                zzLe[Gender.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public static Gender zzG(int i) {
        switch (i) {
            case 1:
                return Gender.MALE;
            case 2:
                return Gender.FEMALE;
            default:
                return Gender.UNKNOWN;
        }
    }

    public static int zza(ErrorCode errorCode) {
        switch (errorCode) {
            case INVALID_REQUEST:
                return 1;
            case NETWORK_ERROR:
                return 2;
            case NO_FILL:
                return 3;
            default:
                return 0;
        }
    }

    public static AdSize zzc(zzec com_google_android_gms_internal_zzec) {
        int i = 0;
        AdSize[] adSizeArr = new AdSize[]{AdSize.SMART_BANNER, AdSize.BANNER, AdSize.IAB_MRECT, AdSize.IAB_BANNER, AdSize.IAB_LEADERBOARD, AdSize.IAB_WIDE_SKYSCRAPER};
        while (i < 6) {
            if (adSizeArr[i].getWidth() == com_google_android_gms_internal_zzec.width && adSizeArr[i].getHeight() == com_google_android_gms_internal_zzec.height) {
                return adSizeArr[i];
            }
            i++;
        }
        return new AdSize(zza.zza(com_google_android_gms_internal_zzec.width, com_google_android_gms_internal_zzec.height, com_google_android_gms_internal_zzec.zzzk));
    }

    public static MediationAdRequest zzs(zzdy com_google_android_gms_internal_zzdy) {
        return new MediationAdRequest(new Date(com_google_android_gms_internal_zzdy.zzyF), zzG(com_google_android_gms_internal_zzdy.zzyG), com_google_android_gms_internal_zzdy.zzyH != null ? new HashSet(com_google_android_gms_internal_zzdy.zzyH) : null, com_google_android_gms_internal_zzdy.zzyI, com_google_android_gms_internal_zzdy.zzyN);
    }
}
