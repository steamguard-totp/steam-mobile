package com.valvesoftware.android.steam.community;

public interface RepositoryCallback<T> {
    void dataAvailable(T t);

    void end();
}
