package com.google.android.gms.ads.formats;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzhb;
import com.google.android.gms.internal.zzpy;

public abstract class NativeAdView extends FrameLayout {
    private final FrameLayout zzsc;
    private final zzhb zzsd;

    public void addView(View view, int i, LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.zzsc);
    }

    public void bringChildToFront(View view) {
        super.bringChildToFront(view);
        if (this.zzsc != view) {
            super.bringChildToFront(this.zzsc);
        }
    }

    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.zzsc);
    }

    public void removeView(View view) {
        if (this.zzsc != view) {
            super.removeView(view);
        }
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.zzsd.zze((zzd) nativeAd.zzbv());
        } catch (Throwable e) {
            zzpy.zzb("Unable to call setNativeAd on delegate", e);
        }
    }
}
