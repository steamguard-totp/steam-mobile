package com.google.android.gms.cast.framework;

public interface SessionManagerListener<T extends Session> {
    void onSessionEnded(T t, int i);

    void onSessionResumeFailed(T t, int i);

    void onSessionResumed(T t, boolean z);

    void onSessionStartFailed(T t, int i);

    void onSessionStarted(T t, String str);
}
