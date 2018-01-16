package com.google.android.gms.internal;

import java.io.Reader;
import java.io.StringReader;

public final class zzbrw {
    public zzbrr zza(Reader reader) throws zzbrs, zzbsa {
        try {
            zzbti com_google_android_gms_internal_zzbti = new zzbti(reader);
            zzbrr zzh = zzh(com_google_android_gms_internal_zzbti);
            if (zzh.zzaby() || com_google_android_gms_internal_zzbti.zzabQ() == zzbtj.END_DOCUMENT) {
                return zzh;
            }
            throw new zzbsa("Did not consume the entire document.");
        } catch (Throwable e) {
            throw new zzbsa(e);
        } catch (Throwable e2) {
            throw new zzbrs(e2);
        } catch (Throwable e22) {
            throw new zzbsa(e22);
        }
    }

    public zzbrr zzh(zzbti com_google_android_gms_internal_zzbti) throws zzbrs, zzbsa {
        String valueOf;
        boolean isLenient = com_google_android_gms_internal_zzbti.isLenient();
        com_google_android_gms_internal_zzbti.setLenient(true);
        try {
            zzbrr zzh = zzbss.zzh(com_google_android_gms_internal_zzbti);
            com_google_android_gms_internal_zzbti.setLenient(isLenient);
            return zzh;
        } catch (Throwable e) {
            valueOf = String.valueOf(com_google_android_gms_internal_zzbti);
            throw new zzbrv(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Failed parsing JSON source: ").append(valueOf).append(" to Json").toString(), e);
        } catch (Throwable e2) {
            valueOf = String.valueOf(com_google_android_gms_internal_zzbti);
            throw new zzbrv(new StringBuilder(String.valueOf(valueOf).length() + 36).append("Failed parsing JSON source: ").append(valueOf).append(" to Json").toString(), e2);
        } catch (Throwable th) {
            com_google_android_gms_internal_zzbti.setLenient(isLenient);
        }
    }

    public zzbrr zzjU(String str) throws zzbsa {
        return zza(new StringReader(str));
    }
}
