package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;

@TargetApi(11)
class ActivityCompatHoneycomb {
    static void invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
    }
}
