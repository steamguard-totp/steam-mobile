package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;

public class zzav {
    private static final String[] zzqf = new String[]{"/aclk", "/pcs/click"};
    private String zzqb = "googleads.g.doubleclick.net";
    private String zzqc = "/pagead/ads";
    private String zzqd = "ad.doubleclick.net";
    private String[] zzqe = new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
    private zzaq zzqg;

    public zzav(zzaq com_google_android_gms_internal_zzaq) {
        this.zzqg = com_google_android_gms_internal_zzaq;
    }

    private Uri zza(Uri uri, Context context, String str, boolean z, View view) throws zzaw {
        try {
            boolean zzb = zzb(uri);
            if (zzb) {
                if (uri.toString().contains("dc_ms=")) {
                    throw new zzaw("Parameter already exists: dc_ms");
                }
            } else if (uri.getQueryParameter("ms") != null) {
                throw new zzaw("Query parameter already exists: ms");
            }
            String zza = z ? this.zzqg.zza(context, str, view) : this.zzqg.zzb(context);
            return zzb ? zzb(uri, "dc_ms", zza) : zza(uri, "ms", zza);
        } catch (UnsupportedOperationException e) {
            throw new zzaw("Provided Uri is not in a valid state");
        }
    }

    private Uri zza(Uri uri, String str, String str2) throws UnsupportedOperationException {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = uri2.indexOf("?adurl");
        }
        return indexOf != -1 ? Uri.parse(new StringBuilder(uri2.substring(0, indexOf + 1)).append(str).append("=").append(str2).append("&").append(uri2.substring(indexOf + 1)).toString()) : uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    private Uri zzb(Uri uri, String str, String str2) {
        String uri2 = uri.toString();
        int indexOf = uri2.indexOf(";adurl");
        if (indexOf != -1) {
            return Uri.parse(new StringBuilder(uri2.substring(0, indexOf + 1)).append(str).append("=").append(str2).append(";").append(uri2.substring(indexOf + 1)).toString());
        }
        String encodedPath = uri.getEncodedPath();
        int indexOf2 = uri2.indexOf(encodedPath);
        return Uri.parse(new StringBuilder(uri2.substring(0, encodedPath.length() + indexOf2)).append(";").append(str).append("=").append(str2).append(";").append(uri2.substring(encodedPath.length() + indexOf2)).toString());
    }

    public zzaq zzW() {
        return this.zzqg;
    }

    public Uri zza(Uri uri, Context context) throws zzaw {
        return zza(uri, context, null, false, null);
    }

    public Uri zza(Uri uri, Context context, View view) throws zzaw {
        try {
            return zza(uri, context, uri.getQueryParameter("ai"), true, view);
        } catch (UnsupportedOperationException e) {
            throw new zzaw("Provided Uri is not in a valid state");
        }
    }

    public void zza(MotionEvent motionEvent) {
        this.zzqg.zza(motionEvent);
    }

    public boolean zza(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.zzqb) && uri.getPath().equals(this.zzqc);
        } catch (NullPointerException e) {
            return false;
        }
    }

    @Deprecated
    public Uri zzb(Uri uri, Context context) throws zzaw {
        return zza(uri, context, null);
    }

    public void zzb(String str, String str2) {
        this.zzqb = str;
        this.zzqc = str2;
    }

    public boolean zzb(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            return uri.getHost().equals(this.zzqd);
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean zzc(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            for (String endsWith : this.zzqe) {
                if (host.endsWith(endsWith)) {
                    return true;
                }
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }

    public boolean zzd(Uri uri) {
        if (!zzc(uri)) {
            return false;
        }
        for (String endsWith : zzqf) {
            if (uri.getPath().endsWith(endsWith)) {
                return true;
            }
        }
        return false;
    }

    public void zzm(String str) {
        this.zzqe = str.split(",");
    }
}
