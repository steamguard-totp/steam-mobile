package android.support.v4.widget;

import android.os.Build.VERSION;
import android.widget.ListView;

public final class ListViewCompat {
    public static void scrollListBy(ListView listView, int y) {
        if (VERSION.SDK_INT >= 19) {
            ListViewCompatKitKat.scrollListBy(listView, y);
        } else {
            ListViewCompatGingerbread.scrollListBy(listView, y);
        }
    }
}
