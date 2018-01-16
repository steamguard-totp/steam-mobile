package com.google.android.gms.tagmanager;

import android.net.Uri;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

class zzcj {
    private static zzcj zzbFb;
    private volatile String zzbCS;
    private volatile zza zzbFc;
    private volatile String zzbFd;
    private volatile String zzbFe;

    enum zza {
        NONE,
        CONTAINER,
        CONTAINER_DEBUG
    }

    zzcj() {
        clear();
    }

    static zzcj zzPz() {
        zzcj com_google_android_gms_tagmanager_zzcj;
        synchronized (zzcj.class) {
            if (zzbFb == null) {
                zzbFb = new zzcj();
            }
            com_google_android_gms_tagmanager_zzcj = zzbFb;
        }
        return com_google_android_gms_tagmanager_zzcj;
    }

    private String zzhq(String str) {
        return str.split("&")[0].split("=")[1];
    }

    private String zzw(Uri uri) {
        return uri.getQuery().replace("&gtm_debug=x", "");
    }

    void clear() {
        this.zzbFc = zza.NONE;
        this.zzbFd = null;
        this.zzbCS = null;
        this.zzbFe = null;
    }

    String getContainerId() {
        return this.zzbCS;
    }

    zza zzPA() {
        return this.zzbFc;
    }

    String zzPB() {
        return this.zzbFd;
    }

    synchronized boolean zzv(Uri uri) {
        boolean z = true;
        synchronized (this) {
            try {
                String decode = URLDecoder.decode(uri.toString(), "UTF-8");
                String str;
                String valueOf;
                if (decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$")) {
                    str = "Container preview url: ";
                    valueOf = String.valueOf(decode);
                    zzbo.v(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                    if (decode.matches(".*?&gtm_debug=x$")) {
                        this.zzbFc = zza.CONTAINER_DEBUG;
                    } else {
                        this.zzbFc = zza.CONTAINER;
                    }
                    this.zzbFe = zzw(uri);
                    if (this.zzbFc == zza.CONTAINER || this.zzbFc == zza.CONTAINER_DEBUG) {
                        decode = String.valueOf("/r?");
                        valueOf = String.valueOf(this.zzbFe);
                        this.zzbFd = valueOf.length() != 0 ? decode.concat(valueOf) : new String(decode);
                    }
                    this.zzbCS = zzhq(this.zzbFe);
                } else if (!decode.matches("^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$")) {
                    str = "Invalid preview uri: ";
                    String valueOf2 = String.valueOf(decode);
                    zzbo.zzbe(valueOf2.length() != 0 ? str.concat(valueOf2) : new String(str));
                    z = false;
                } else if (zzhq(uri.getQuery()).equals(this.zzbCS)) {
                    decode = "Exit preview mode for container: ";
                    valueOf = String.valueOf(this.zzbCS);
                    zzbo.v(valueOf.length() != 0 ? decode.concat(valueOf) : new String(decode));
                    this.zzbFc = zza.NONE;
                    this.zzbFd = null;
                } else {
                    z = false;
                }
            } catch (UnsupportedEncodingException e) {
                z = false;
            }
        }
        return z;
    }
}
