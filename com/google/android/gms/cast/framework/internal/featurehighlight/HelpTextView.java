package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.Context;
import android.support.annotation.Keep;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.internal.zzbir;

@Keep
public class HelpTextView extends LinearLayout {
    private TextView zzaqp;
    private TextView zzaqq;

    @Keep
    public HelpTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void zza(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        textView.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    @Keep
    public View asView() {
        return this;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.zzaqp = (TextView) zzbir.zzw((TextView) findViewById(R.id.cast_featurehighlight_help_text_header_view));
        this.zzaqq = (TextView) zzbir.zzw((TextView) findViewById(R.id.cast_featurehighlight_help_text_body_view));
    }

    @Keep
    public void setText(CharSequence charSequence, CharSequence charSequence2) {
        zza(this.zzaqp, charSequence);
        zza(this.zzaqq, charSequence2);
    }
}
