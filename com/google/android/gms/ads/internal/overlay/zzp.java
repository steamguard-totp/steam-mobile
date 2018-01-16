package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import com.google.android.gms.internal.zzeh;
import com.google.android.gms.internal.zzmb;

@zzmb
public class zzp extends FrameLayout implements OnClickListener {
    private final ImageButton zzNA;
    private final zzv zzNB;

    public zzp(Context context, int i, zzv com_google_android_gms_ads_internal_overlay_zzv) {
        super(context);
        this.zzNB = com_google_android_gms_ads_internal_overlay_zzv;
        setOnClickListener(this);
        this.zzNA = new ImageButton(context);
        this.zzNA.setImageResource(17301527);
        this.zzNA.setBackgroundColor(0);
        this.zzNA.setOnClickListener(this);
        this.zzNA.setPadding(0, 0, 0, 0);
        this.zzNA.setContentDescription("Interstitial close button");
        int zzb = zzeh.zzeO().zzb(context, i);
        addView(this.zzNA, new LayoutParams(zzb, zzb, 17));
    }

    public void onClick(View view) {
        if (this.zzNB != null) {
            this.zzNB.zzhj();
        }
    }

    public void zza(boolean z, boolean z2) {
        if (!z2) {
            this.zzNA.setVisibility(0);
        } else if (z) {
            this.zzNA.setVisibility(4);
        } else {
            this.zzNA.setVisibility(8);
        }
    }
}
