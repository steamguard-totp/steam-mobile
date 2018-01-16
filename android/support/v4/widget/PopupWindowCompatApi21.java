package android.support.v4.widget;

import android.annotation.TargetApi;
import android.widget.PopupWindow;
import java.lang.reflect.Field;

@TargetApi(21)
class PopupWindowCompatApi21 {
    private static Field sOverlapAnchorField;

    static {
        try {
            sOverlapAnchorField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
            sOverlapAnchorField.setAccessible(true);
        } catch (NoSuchFieldException e) {
        }
    }

    static void setOverlapAnchor(PopupWindow popupWindow, boolean overlapAnchor) {
        if (sOverlapAnchorField != null) {
            try {
                sOverlapAnchorField.set(popupWindow, Boolean.valueOf(overlapAnchor));
            } catch (IllegalAccessException e) {
            }
        }
    }
}
