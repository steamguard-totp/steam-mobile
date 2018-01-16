package android.support.v4.content;

import android.annotation.TargetApi;
import android.content.Context;

@TargetApi(24)
class ContextCompatApi24 {
    public static boolean isDeviceProtectedStorage(Context context) {
        return context.isDeviceProtectedStorage();
    }
}
