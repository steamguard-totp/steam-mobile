package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.graphics.ColorUtils;
import android.support.v7.appcompat.R;
import android.util.TypedValue;

final class MediaRouterThemeHelper {
    public static float getDisabledAlpha(Context context) {
        TypedValue value = new TypedValue();
        return context.getTheme().resolveAttribute(16842803, value, true) ? value.getFloat() : 0.5f;
    }

    public static int getControllerColor(Context context, int style) {
        if (ColorUtils.calculateContrast(-1, getThemeColor(context, style, R.attr.colorPrimary)) >= 3.0d) {
            return -1;
        }
        return -570425344;
    }

    private static int getThemeColor(Context context, int style, int attr) {
        if (style != 0) {
            TypedArray ta = context.obtainStyledAttributes(style, new int[]{attr});
            int color = ta.getColor(0, 0);
            ta.recycle();
            if (color != 0) {
                return color;
            }
        }
        TypedValue value = new TypedValue();
        context.getTheme().resolveAttribute(attr, value, true);
        if (value.resourceId != 0) {
            return context.getResources().getColor(value.resourceId);
        }
        return value.data;
    }
}
