package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.View;

public final class SearchViewCompat {
    private static final SearchViewCompatImpl IMPL;

    public interface OnCloseListener {
        boolean onClose();
    }

    @Deprecated
    public static abstract class OnCloseListenerCompat implements OnCloseListener {
        public boolean onClose() {
            return false;
        }
    }

    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    @Deprecated
    public static abstract class OnQueryTextListenerCompat implements OnQueryTextListener {
        public boolean onQueryTextSubmit(String query) {
            return false;
        }

        public boolean onQueryTextChange(String newText) {
            return false;
        }
    }

    interface SearchViewCompatImpl {
        View newSearchView(Context context);

        void setOnCloseListener(View view, OnCloseListener onCloseListener);

        void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener);
    }

    static class SearchViewCompatStubImpl implements SearchViewCompatImpl {
        SearchViewCompatStubImpl() {
        }

        public View newSearchView(Context context) {
            return null;
        }

        public Object newOnQueryTextListener(OnQueryTextListener listener) {
            return null;
        }

        public void setOnQueryTextListener(View searchView, OnQueryTextListener listener) {
        }

        public Object newOnCloseListener(OnCloseListener listener) {
            return null;
        }

        public void setOnCloseListener(View searchView, OnCloseListener listener) {
        }
    }

    static class SearchViewCompatHoneycombImpl extends SearchViewCompatStubImpl {
        SearchViewCompatHoneycombImpl() {
        }

        public View newSearchView(Context context) {
            return SearchViewCompatHoneycomb.newSearchView(context);
        }

        public Object newOnQueryTextListener(final OnQueryTextListener listener) {
            return SearchViewCompatHoneycomb.newOnQueryTextListener(new OnQueryTextListenerCompatBridge() {
                public boolean onQueryTextSubmit(String query) {
                    return listener.onQueryTextSubmit(query);
                }

                public boolean onQueryTextChange(String newText) {
                    return listener.onQueryTextChange(newText);
                }
            });
        }

        public void setOnQueryTextListener(View searchView, OnQueryTextListener listener) {
            checkIfLegalArg(searchView);
            SearchViewCompatHoneycomb.setOnQueryTextListener(searchView, newOnQueryTextListener(listener));
        }

        public Object newOnCloseListener(final OnCloseListener listener) {
            return SearchViewCompatHoneycomb.newOnCloseListener(new OnCloseListenerCompatBridge() {
                public boolean onClose() {
                    return listener.onClose();
                }
            });
        }

        public void setOnCloseListener(View searchView, OnCloseListener listener) {
            checkIfLegalArg(searchView);
            SearchViewCompatHoneycomb.setOnCloseListener(searchView, newOnCloseListener(listener));
        }

        protected void checkIfLegalArg(View searchView) {
            SearchViewCompatHoneycomb.checkIfLegalArg(searchView);
        }
    }

    static class SearchViewCompatIcsImpl extends SearchViewCompatHoneycombImpl {
        SearchViewCompatIcsImpl() {
        }

        public View newSearchView(Context context) {
            return SearchViewCompatIcs.newSearchView(context);
        }
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            IMPL = new SearchViewCompatIcsImpl();
        } else if (VERSION.SDK_INT >= 11) {
            IMPL = new SearchViewCompatHoneycombImpl();
        } else {
            IMPL = new SearchViewCompatStubImpl();
        }
    }

    public static View newSearchView(Context context) {
        return IMPL.newSearchView(context);
    }

    public static void setOnQueryTextListener(View searchView, OnQueryTextListener listener) {
        IMPL.setOnQueryTextListener(searchView, listener);
    }

    public static void setOnCloseListener(View searchView, OnCloseListener listener) {
        IMPL.setOnCloseListener(searchView, listener);
    }
}
