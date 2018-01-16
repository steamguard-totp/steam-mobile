package com.google.android.gms.internal;

import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;
import com.google.android.gms.internal.zzwu.zza;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class zzwz extends zza {
    private final MediaRouter zzamI;
    private final Map<MediaRouteSelector, Set<Callback>> zzapU = new HashMap();

    public zzwz(MediaRouter mediaRouter) {
        this.zzamI = mediaRouter;
    }

    public void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
        this.zzamI.setMediaSessionCompat(mediaSessionCompat);
    }

    public void zza(Bundle bundle, int i) {
        MediaRouteSelector fromBundle = MediaRouteSelector.fromBundle(bundle);
        for (Callback addCallback : (Set) this.zzapU.get(fromBundle)) {
            this.zzamI.addCallback(fromBundle, addCallback, i);
        }
    }

    public void zza(Bundle bundle, zzwv com_google_android_gms_internal_zzwv) {
        MediaRouteSelector fromBundle = MediaRouteSelector.fromBundle(bundle);
        if (!this.zzapU.containsKey(fromBundle)) {
            this.zzapU.put(fromBundle, new HashSet());
        }
        ((Set) this.zzapU.get(fromBundle)).add(new zzwy(com_google_android_gms_internal_zzwv));
    }

    public boolean zzb(Bundle bundle, int i) {
        return this.zzamI.isRouteAvailable(MediaRouteSelector.fromBundle(bundle), i);
    }

    public void zzcL(String str) {
        for (RouteInfo routeInfo : this.zzamI.getRoutes()) {
            if (routeInfo.getId().equals(str)) {
                this.zzamI.selectRoute(routeInfo);
                return;
            }
        }
    }

    public Bundle zzcM(String str) {
        for (RouteInfo routeInfo : this.zzamI.getRoutes()) {
            if (routeInfo.getId().equals(str)) {
                return routeInfo.getExtras();
            }
        }
        return null;
    }

    public void zzm(Bundle bundle) {
        for (Callback removeCallback : (Set) this.zzapU.get(MediaRouteSelector.fromBundle(bundle))) {
            this.zzamI.removeCallback(removeCallback);
        }
    }

    public void zzsB() {
        this.zzamI.selectRoute(this.zzamI.getDefaultRoute());
    }

    public boolean zzsC() {
        return this.zzamI.getSelectedRoute().getId().equals(this.zzamI.getDefaultRoute().getId());
    }

    public String zzsD() {
        return this.zzamI.getSelectedRoute().getId();
    }

    public int zzsd() {
        return 10084208;
    }
}
