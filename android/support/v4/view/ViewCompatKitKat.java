package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.View;

@TargetApi(19)
class ViewCompatKitKat {
    public static boolean isLaidOut(View view) {
        return view.isLaidOut();
    }

    public static boolean isAttachedToWindow(View view) {
        return view.isAttachedToWindow();
    }
}
