package com.google.firebase.iid;

@Deprecated
public class zzc {
    private final FirebaseInstanceId zzciP;

    private zzc(FirebaseInstanceId firebaseInstanceId) {
        this.zzciP = firebaseInstanceId;
    }

    public static zzc zzaab() {
        return new zzc(FirebaseInstanceId.getInstance());
    }

    public String getId() {
        return this.zzciP.getId();
    }
}
