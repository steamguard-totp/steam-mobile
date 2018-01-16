package android.support.v4.view.accessibility;

import android.annotation.TargetApi;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;

@TargetApi(24)
class AccessibilityNodeInfoCompatApi24 {
    public static Object getActionSetProgress() {
        return AccessibilityAction.ACTION_SET_PROGRESS;
    }
}
