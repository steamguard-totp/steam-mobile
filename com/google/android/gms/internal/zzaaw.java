package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class zzaaw {
    protected final zzaax zzaBs;

    protected zzaaw(zzaax com_google_android_gms_internal_zzaax) {
        this.zzaBs = com_google_android_gms_internal_zzaax;
    }

    protected static zzaax zzc(zzaav com_google_android_gms_internal_zzaav) {
        return com_google_android_gms_internal_zzaav.zzwl() ? zzabm.zza(com_google_android_gms_internal_zzaav.zzwn()) : zzaay.zzt(com_google_android_gms_internal_zzaav.zzwm());
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity getActivity() {
        return this.zzaBs.zzwo();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onCreate(Bundle bundle) {
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
    }

    public void onStop() {
    }
}
