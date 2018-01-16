package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.ViewConfiguration;

@TargetApi(14)
class ViewConfigurationCompatICS {
    static boolean hasPermanentMenuKey(ViewConfiguration config) {
        return config.hasPermanentMenuKey();
    }
}
