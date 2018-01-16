package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.View;

@TargetApi(17)
class ViewCompatJellybeanMr1 {
    public static int getLayoutDirection(View view) {
        return view.getLayoutDirection();
    }

    public static int getWindowSystemUiVisibility(View view) {
        return view.getWindowSystemUiVisibility();
    }
}
