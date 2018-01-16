package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.LayoutInflater;

@TargetApi(21)
class LayoutInflaterCompatLollipop {
    static void setFactory(LayoutInflater inflater, LayoutInflaterFactory factory) {
        inflater.setFactory2(factory != null ? new FactoryWrapperHC(factory) : null);
    }
}
