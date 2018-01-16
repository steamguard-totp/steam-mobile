package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.TextureView;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzgb;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzgf;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzpo.zza;
import com.google.android.gms.internal.zzpo.zzb;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqa;
import java.util.concurrent.TimeUnit;

@zzmb
public class zzz {
    private final Context mContext;
    private final zzgf zzNm;
    private boolean zzNq;
    private final String zzOn;
    private final zzgd zzOo;
    private final zzpo zzOp = new zzb().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzkB();
    private final long[] zzOq;
    private final String[] zzOr;
    private boolean zzOs = false;
    private boolean zzOt = false;
    private boolean zzOu = false;
    private boolean zzOv = false;
    private zzj zzOw;
    private boolean zzOx;
    private boolean zzOy;
    private long zzOz = -1;
    private final zzqa zztZ;

    public zzz(Context context, zzqa com_google_android_gms_internal_zzqa, String str, zzgf com_google_android_gms_internal_zzgf, zzgd com_google_android_gms_internal_zzgd) {
        this.mContext = context;
        this.zztZ = com_google_android_gms_internal_zzqa;
        this.zzOn = str;
        this.zzNm = com_google_android_gms_internal_zzgf;
        this.zzOo = com_google_android_gms_internal_zzgd;
        String str2 = (String) zzfx.zzBp.get();
        if (str2 == null) {
            this.zzOr = new String[0];
            this.zzOq = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.zzOr = new String[split.length];
        this.zzOq = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzOq[i] = Long.parseLong(split[i]);
            } catch (Throwable e) {
                zzpy.zzc("Unable to parse frame hash target time number.", e);
                this.zzOq[i] = -1;
            }
        }
    }

    private void zzc(zzj com_google_android_gms_ads_internal_overlay_zzj) {
        long longValue = ((Long) zzfx.zzBq.get()).longValue();
        long currentPosition = (long) com_google_android_gms_ads_internal_overlay_zzj.getCurrentPosition();
        int i = 0;
        while (i < this.zzOr.length) {
            if (this.zzOr[i] == null && longValue > Math.abs(currentPosition - this.zzOq[i])) {
                this.zzOr[i] = zza((TextureView) com_google_android_gms_ads_internal_overlay_zzj);
                return;
            }
            i++;
        }
    }

    private void zzia() {
        if (this.zzOu && !this.zzOv) {
            zzgb.zza(this.zzNm, this.zzOo, "vff2");
            this.zzOv = true;
        }
        long nanoTime = zzv.zzcP().nanoTime();
        if (this.zzNq && this.zzOy && this.zzOz != -1) {
            this.zzOp.zza(((double) TimeUnit.SECONDS.toNanos(1)) / ((double) (nanoTime - this.zzOz)));
        }
        this.zzOy = this.zzNq;
        this.zzOz = nanoTime;
    }

    public void onStop() {
        if (((Boolean) zzfx.zzBo.get()).booleanValue() && !this.zzOx) {
            String valueOf;
            String valueOf2;
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.zzOn);
            bundle.putString("player", this.zzOw.zzhd());
            for (zza com_google_android_gms_internal_zzpo_zza : this.zzOp.getBuckets()) {
                valueOf = String.valueOf("fps_c_");
                valueOf2 = String.valueOf(com_google_android_gms_internal_zzpo_zza.name);
                bundle.putString(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), Integer.toString(com_google_android_gms_internal_zzpo_zza.count));
                valueOf = String.valueOf("fps_p_");
                valueOf2 = String.valueOf(com_google_android_gms_internal_zzpo_zza.name);
                bundle.putString(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), Double.toString(com_google_android_gms_internal_zzpo_zza.zzXs));
            }
            for (int i = 0; i < this.zzOq.length; i++) {
                valueOf2 = this.zzOr[i];
                if (valueOf2 != null) {
                    String valueOf3 = String.valueOf("fh_");
                    valueOf = String.valueOf(Long.valueOf(this.zzOq[i]));
                    bundle.putString(new StringBuilder((String.valueOf(valueOf3).length() + 0) + String.valueOf(valueOf).length()).append(valueOf3).append(valueOf).toString(), valueOf2);
                }
            }
            zzv.zzcJ().zza(this.mContext, this.zztZ.zzaZ, "gmob-apps", bundle, true);
            this.zzOx = true;
        }
    }

    @TargetApi(14)
    String zza(TextureView textureView) {
        Bitmap bitmap = textureView.getBitmap(8, 8);
        long j = 0;
        long j2 = 63;
        int i = 0;
        while (i < 8) {
            long j3 = j;
            j = j2;
            for (int i2 = 0; i2 < 8; i2++) {
                int pixel = bitmap.getPixel(i2, i);
                j3 |= (Color.green(pixel) + (Color.blue(pixel) + Color.red(pixel)) > 128 ? 1 : 0) << ((int) j);
                j--;
            }
            i++;
            j2 = j;
            j = j3;
        }
        return String.format("%016X", new Object[]{Long.valueOf(j)});
    }

    public void zza(zzj com_google_android_gms_ads_internal_overlay_zzj) {
        zzgb.zza(this.zzNm, this.zzOo, "vpc2");
        this.zzOs = true;
        if (this.zzNm != null) {
            this.zzNm.zzg("vpn", com_google_android_gms_ads_internal_overlay_zzj.zzhd());
        }
        this.zzOw = com_google_android_gms_ads_internal_overlay_zzj;
    }

    public void zzb(zzj com_google_android_gms_ads_internal_overlay_zzj) {
        zzia();
        zzc(com_google_android_gms_ads_internal_overlay_zzj);
    }

    public void zzhz() {
        if (this.zzOs && !this.zzOt) {
            zzgb.zza(this.zzNm, this.zzOo, "vfr2");
            this.zzOt = true;
        }
    }

    public void zzib() {
        this.zzNq = true;
        if (this.zzOt && !this.zzOu) {
            zzgb.zza(this.zzNm, this.zzOo, "vfp2");
            this.zzOu = true;
        }
    }

    public void zzic() {
        this.zzNq = false;
    }
}
