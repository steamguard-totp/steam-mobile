package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.common.internal.zzac;
import java.util.List;

@zzmb
class zzgn extends RelativeLayout {
    private static final float[] zzFN = new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    private final RelativeLayout zzFO;
    private AnimationDrawable zzFP;

    public zzgn(Context context, zzgm com_google_android_gms_internal_zzgm) {
        super(context);
        zzac.zzw(com_google_android_gms_internal_zzgm);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        switch (com_google_android_gms_internal_zzgm.zzfI()) {
            case 0:
                layoutParams.addRule(10);
                layoutParams.addRule(9);
                break;
            case 2:
                layoutParams.addRule(12);
                layoutParams.addRule(11);
                break;
            case 3:
                layoutParams.addRule(12);
                layoutParams.addRule(9);
                break;
            default:
                layoutParams.addRule(10);
                layoutParams.addRule(11);
                break;
        }
        Drawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zzFN, null, null));
        shapeDrawable.getPaint().setColor(com_google_android_gms_internal_zzgm.getBackgroundColor());
        this.zzFO = new RelativeLayout(context);
        this.zzFO.setLayoutParams(layoutParams);
        zzv.zzcL().zza(this.zzFO, shapeDrawable);
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(com_google_android_gms_internal_zzgm.getText())) {
            LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            View textView = new TextView(context);
            textView.setLayoutParams(layoutParams2);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(com_google_android_gms_internal_zzgm.getText());
            textView.setTextColor(com_google_android_gms_internal_zzgm.getTextColor());
            textView.setTextSize((float) com_google_android_gms_internal_zzgm.getTextSize());
            textView.setPadding(zzeh.zzeO().zzb(context, 4), 0, zzeh.zzeO().zzb(context, 4), 0);
            this.zzFO.addView(textView);
            layoutParams.addRule(1, textView.getId());
        }
        View imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams);
        imageView.setId(1195835394);
        List<Drawable> zzfG = com_google_android_gms_internal_zzgm.zzfG();
        if (zzfG.size() > 1) {
            this.zzFP = new AnimationDrawable();
            for (Drawable addFrame : zzfG) {
                this.zzFP.addFrame(addFrame, com_google_android_gms_internal_zzgm.zzfH());
            }
            zzv.zzcL().zza(imageView, this.zzFP);
        } else if (zzfG.size() == 1) {
            imageView.setImageDrawable((Drawable) zzfG.get(0));
        }
        this.zzFO.addView(imageView);
        addView(this.zzFO);
    }

    public void onAttachedToWindow() {
        if (this.zzFP != null) {
            this.zzFP.start();
        }
        super.onAttachedToWindow();
    }

    public ViewGroup zzfJ() {
        return this.zzFO;
    }
}
