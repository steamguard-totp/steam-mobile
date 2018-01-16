package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.View;
import android.widget.SearchView;

@TargetApi(14)
class SearchViewCompatIcs {

    public static class MySearchView extends SearchView {
        public MySearchView(Context context) {
            super(context);
        }

        public void onActionViewCollapsed() {
            setQuery("", false);
            super.onActionViewCollapsed();
        }
    }

    public static View newSearchView(Context context) {
        return new MySearchView(context);
    }
}
