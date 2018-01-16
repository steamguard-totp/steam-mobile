package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.MotionEvent;

@TargetApi(12)
class MotionEventCompatHoneycombMr1 {
    static float getAxisValue(MotionEvent event, int axis) {
        return event.getAxisValue(axis);
    }
}
