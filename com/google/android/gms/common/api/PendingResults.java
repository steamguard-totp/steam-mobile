package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzabl;

public final class PendingResults {
    public static PendingResult<Status> immediatePendingResult(Status status) {
        zzac.zzb((Object) status, (Object) "Result must not be null");
        PendingResult com_google_android_gms_internal_zzabl = new zzabl(Looper.getMainLooper());
        com_google_android_gms_internal_zzabl.zzb(status);
        return com_google_android_gms_internal_zzabl;
    }
}
