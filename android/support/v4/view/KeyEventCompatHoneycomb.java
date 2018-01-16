package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.KeyEvent;

@TargetApi(11)
class KeyEventCompatHoneycomb {
    public static boolean isCtrlPressed(KeyEvent event) {
        return event.isCtrlPressed();
    }
}
