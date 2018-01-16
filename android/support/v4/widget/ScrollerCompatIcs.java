package android.support.v4.widget;

import android.annotation.TargetApi;
import android.widget.OverScroller;

@TargetApi(14)
class ScrollerCompatIcs {
    public static float getCurrVelocity(Object scroller) {
        return ((OverScroller) scroller).getCurrVelocity();
    }
}
