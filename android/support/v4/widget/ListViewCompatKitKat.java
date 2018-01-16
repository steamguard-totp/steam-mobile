package android.support.v4.widget;

import android.annotation.TargetApi;
import android.widget.ListView;

@TargetApi(19)
class ListViewCompatKitKat {
    static void scrollListBy(ListView listView, int y) {
        listView.scrollListBy(y);
    }
}
