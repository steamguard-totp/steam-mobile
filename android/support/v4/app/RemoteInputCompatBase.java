package android.support.v4.app;

import android.annotation.TargetApi;
import android.os.Bundle;

@TargetApi(9)
class RemoteInputCompatBase {

    public static abstract class RemoteInput {

        public interface Factory {
        }

        protected abstract boolean getAllowFreeFormInput();

        protected abstract CharSequence[] getChoices();

        protected abstract Bundle getExtras();

        protected abstract CharSequence getLabel();

        protected abstract String getResultKey();
    }
}
