package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.Gravity;

@TargetApi(17)
class GravityCompatJellybeanMr1 {
    public static int getAbsoluteGravity(int gravity, int layoutDirection) {
        return Gravity.getAbsoluteGravity(gravity, layoutDirection);
    }
}
