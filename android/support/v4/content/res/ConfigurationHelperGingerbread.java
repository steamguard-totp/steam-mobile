package android.support.v4.content.res;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.util.DisplayMetrics;

@TargetApi(9)
class ConfigurationHelperGingerbread {
    static int getScreenHeightDp(Resources resources) {
        DisplayMetrics metrics = resources.getDisplayMetrics();
        return (int) (((float) metrics.heightPixels) / metrics.density);
    }

    static int getScreenWidthDp(Resources resources) {
        DisplayMetrics metrics = resources.getDisplayMetrics();
        return (int) (((float) metrics.widthPixels) / metrics.density);
    }

    static int getSmallestScreenWidthDp(Resources resources) {
        return Math.min(getScreenWidthDp(resources), getScreenHeightDp(resources));
    }
}
