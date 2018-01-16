package android.support.v4.widget;

import android.annotation.TargetApi;
import android.view.View;
import android.widget.PopupWindow;

@TargetApi(19)
class PopupWindowCompatKitKat {
    public static void showAsDropDown(PopupWindow popup, View anchor, int xoff, int yoff, int gravity) {
        popup.showAsDropDown(anchor, xoff, yoff, gravity);
    }
}
