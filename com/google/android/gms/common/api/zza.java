package com.google.android.gms.common.api;

public class zza extends Exception {
    protected final Status zzahq;

    public zza(Status status) {
        super(status.getStatusMessage());
        this.zzahq = status;
    }
}
