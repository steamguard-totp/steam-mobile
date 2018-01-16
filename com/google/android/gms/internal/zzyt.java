package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api.zzf;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;

public final class zzyt {
    public static final zzf<zzyl> zzavu = new zzf();
    public static final zzf<Object> zzavv = new zzf();
    public static final zzf<Object> zzavw = new zzf();
    public static final zzf<Object> zzavx = new zzf();
    public static final Charset zzavy;
    public static final String zzavz = zzym.zzcQ("com.google.cast.multizone");

    static {
        Charset charset = null;
        try {
            charset = Charset.forName("UTF-8");
        } catch (IllegalCharsetNameException e) {
        } catch (UnsupportedCharsetException e2) {
        }
        zzavy = charset;
    }
}
