package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class zzaah extends GoogleApiClient {
    private final UnsupportedOperationException zzazJ;

    public zzaah(String str) {
        this.zzazJ = new UnsupportedOperationException(str);
    }

    public ConnectionResult blockingConnect() {
        throw this.zzazJ;
    }

    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        throw this.zzazJ;
    }

    public void connect() {
        throw this.zzazJ;
    }

    public void disconnect() {
        throw this.zzazJ;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        throw this.zzazJ;
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        throw this.zzazJ;
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        throw this.zzazJ;
    }
}
