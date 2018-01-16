package android.support.v4.widget;

import android.annotation.TargetApi;
import android.widget.EdgeEffect;

@TargetApi(21)
class EdgeEffectCompatLollipop {
    public static boolean onPull(Object edgeEffect, float deltaDistance, float displacement) {
        ((EdgeEffect) edgeEffect).onPull(deltaDistance, displacement);
        return true;
    }
}
