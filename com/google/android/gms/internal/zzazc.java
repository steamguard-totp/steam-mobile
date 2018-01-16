package com.google.android.gms.internal;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class zzazc {
    private static zzazc zzbIf;
    private volatile String zzbCS;
    private volatile String zzbFe;
    private volatile zza zzbIg;

    enum zza {
        NONE,
        CONTAINER
    }

    zzazc() {
        clear();
    }

    public static zzazc zzQB() {
        zzazc com_google_android_gms_internal_zzazc;
        synchronized (zzazc.class) {
            if (zzbIf == null) {
                zzbIf = new zzazc();
            }
            com_google_android_gms_internal_zzazc = zzbIf;
        }
        return com_google_android_gms_internal_zzazc;
    }

    void clear() {
        this.zzbIg = zza.NONE;
        this.zzbFe = null;
        this.zzbCS = null;
    }

    public String getContainerId() {
        return this.zzbCS;
    }

    public boolean isPreview() {
        return this.zzbIg == zza.CONTAINER;
    }

    public String zzQC() {
        return this.zzbFe;
    }

    public synchronized boolean zzc(String str, Uri uri) {
        String decode;
        boolean z = false;
        synchronized (this) {
            try {
                decode = URLDecoder.decode(uri.toString(), "UTF-8");
                String queryParameter;
                if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\S+")) {
                    queryParameter = uri.getQueryParameter("id");
                    String queryParameter2 = uri.getQueryParameter("gtm_auth");
                    String queryParameter3 = uri.getQueryParameter("gtm_preview");
                    if (!str.equals(queryParameter)) {
                        zzayx.zzbe("Preview fails (container doesn't match the container specified by the asset)");
                    } else if (queryParameter == null || queryParameter.length() <= 0) {
                        queryParameter = "Bad preview url: ";
                        decode = String.valueOf(decode);
                        zzayx.zzbe(decode.length() != 0 ? queryParameter.concat(decode) : new String(queryParameter));
                    } else {
                        if (queryParameter3 == null || queryParameter3.length() != 0) {
                            if (queryParameter3 == null || queryParameter3.length() <= 0 || queryParameter2 == null || queryParameter2.length() <= 0) {
                                queryParameter = "Bad preview url: ";
                                decode = String.valueOf(decode);
                                zzayx.zzbe(decode.length() != 0 ? queryParameter.concat(decode) : new String(queryParameter));
                            } else {
                                this.zzbIg = zza.CONTAINER;
                                this.zzbFe = uri.getQuery();
                                this.zzbCS = queryParameter;
                            }
                        } else if (!queryParameter.equals(this.zzbCS) || this.zzbIg == zza.NONE) {
                            zzayx.zzbe("Error in exiting preview mode. The container is not in preview.");
                        } else {
                            decode = "Exit preview mode for container: ";
                            String valueOf = String.valueOf(this.zzbCS);
                            zzayx.v(valueOf.length() != 0 ? decode.concat(valueOf) : new String(decode));
                            this.zzbIg = zza.NONE;
                            this.zzbCS = null;
                            this.zzbFe = null;
                        }
                        z = true;
                    }
                } else {
                    queryParameter = "Bad preview url: ";
                    decode = String.valueOf(decode);
                    zzayx.zzbe(decode.length() != 0 ? queryParameter.concat(decode) : new String(queryParameter));
                }
            } catch (UnsupportedEncodingException e) {
                decode = String.valueOf(e);
                zzayx.zzbe(new StringBuilder(String.valueOf(decode).length() + 32).append("Error decoding the preview url: ").append(decode).toString());
            }
        }
        return z;
    }

    public boolean zzhK(String str) {
        return isPreview() && getContainerId().equals(str);
    }
}
