package com.google.android.gms.tagmanager;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.annotation.KeepName;

@KeepName
public class TagManagerService extends Service {
    @KeepName
    public static void initialize(Context context) {
        zzae.zzbE(context);
    }

    public IBinder onBind(Intent intent) {
        initialize(this);
        return zzae.zzbD(this);
    }
}
