package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.View;

@TargetApi(15)
class ViewCompatICSMr1 {
    public static boolean hasOnClickListeners(View v) {
        return v.hasOnClickListeners();
    }
}
