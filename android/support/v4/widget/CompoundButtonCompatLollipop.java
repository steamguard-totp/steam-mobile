package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.widget.CompoundButton;

@TargetApi(21)
class CompoundButtonCompatLollipop {
    static void setButtonTintList(CompoundButton button, ColorStateList tint) {
        button.setButtonTintList(tint);
    }

    static void setButtonTintMode(CompoundButton button, Mode tintMode) {
        button.setButtonTintMode(tintMode);
    }
}
