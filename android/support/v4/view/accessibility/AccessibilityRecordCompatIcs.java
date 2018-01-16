package android.support.v4.view.accessibility;

import android.annotation.TargetApi;
import android.view.accessibility.AccessibilityRecord;

@TargetApi(14)
class AccessibilityRecordCompatIcs {
    public static void setScrollX(Object record, int scrollX) {
        ((AccessibilityRecord) record).setScrollX(scrollX);
    }

    public static void setScrollY(Object record, int scrollY) {
        ((AccessibilityRecord) record).setScrollY(scrollY);
    }

    public static void setScrollable(Object record, boolean scrollable) {
        ((AccessibilityRecord) record).setScrollable(scrollable);
    }
}
