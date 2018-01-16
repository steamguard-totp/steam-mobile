package android.support.v4.hardware.display;

import android.annotation.TargetApi;
import android.content.Context;

@TargetApi(17)
final class DisplayManagerJellybeanMr1 {
    public static Object getDisplayManager(Context context) {
        return context.getSystemService("display");
    }
}
