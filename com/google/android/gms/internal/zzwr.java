package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionProvider;

public class zzwr extends SessionProvider {
    private final CastOptions zzaoW;
    private final zzwz zzapH;

    public zzwr(Context context, CastOptions castOptions, zzwz com_google_android_gms_internal_zzwz) {
        super(context, zza(castOptions));
        this.zzaoW = castOptions;
        this.zzapH = com_google_android_gms_internal_zzwz;
    }

    private static String zza(CastOptions castOptions) {
        return castOptions.getSupportedNamespaces().isEmpty() ? CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId()) : CastMediaControlIntent.categoryForCast(castOptions.getReceiverApplicationId(), castOptions.getSupportedNamespaces());
    }

    public Session createSession(String str) {
        return new CastSession(getContext(), getCategory(), str, this.zzaoW, Cast.CastApi, new zzws(), new zzxe(getContext(), this.zzaoW, this.zzapH));
    }

    public boolean isSessionRecoverable() {
        return this.zzaoW.getResumeSavedSession();
    }
}
