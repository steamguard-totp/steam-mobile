package com.google.android.gms.internal;

import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;
import com.google.android.gms.common.internal.zzac;

public class zzwy extends Callback {
    private static final zzyu zzaoQ = new zzyu("MediaRouterCallback");
    private final zzwv zzapT;

    public zzwy(zzwv com_google_android_gms_internal_zzwv) {
        this.zzapT = (zzwv) zzac.zzw(com_google_android_gms_internal_zzwv);
    }

    public void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzapT.zzc(routeInfo.getId(), routeInfo.getExtras());
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onRouteAdded", zzwv.class.getSimpleName());
        }
    }

    public void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzapT.zzd(routeInfo.getId(), routeInfo.getExtras());
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onRouteChanged", zzwv.class.getSimpleName());
        }
    }

    public void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzapT.zze(routeInfo.getId(), routeInfo.getExtras());
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onRouteRemoved", zzwv.class.getSimpleName());
        }
    }

    public void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo) {
        try {
            this.zzapT.zzf(routeInfo.getId(), routeInfo.getExtras());
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onRouteSelected", zzwv.class.getSimpleName());
        }
    }

    public void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo, int i) {
        try {
            this.zzapT.zza(routeInfo.getId(), routeInfo.getExtras(), i);
        } catch (Throwable e) {
            zzaoQ.zzb(e, "Unable to call %s on %s.", "onRouteUnselected", zzwv.class.getSimpleName());
        }
    }
}
