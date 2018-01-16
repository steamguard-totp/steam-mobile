package android.support.v7.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class MediaRouteProviderDescriptor {
    private final Bundle mBundle;
    private List<MediaRouteDescriptor> mRoutes;

    public static final class Builder {
        private final Bundle mBundle = new Bundle();
        private ArrayList<MediaRouteDescriptor> mRoutes;

        public Builder addRoute(MediaRouteDescriptor route) {
            if (route == null) {
                throw new IllegalArgumentException("route must not be null");
            }
            if (this.mRoutes == null) {
                this.mRoutes = new ArrayList();
            } else if (this.mRoutes.contains(route)) {
                throw new IllegalArgumentException("route descriptor already added");
            }
            this.mRoutes.add(route);
            return this;
        }

        public MediaRouteProviderDescriptor build() {
            if (this.mRoutes != null) {
                int count = this.mRoutes.size();
                ArrayList<Bundle> routeBundles = new ArrayList(count);
                for (int i = 0; i < count; i++) {
                    routeBundles.add(((MediaRouteDescriptor) this.mRoutes.get(i)).asBundle());
                }
                this.mBundle.putParcelableArrayList("routes", routeBundles);
            }
            return new MediaRouteProviderDescriptor(this.mBundle, this.mRoutes);
        }
    }

    private MediaRouteProviderDescriptor(Bundle bundle, List<MediaRouteDescriptor> routes) {
        this.mBundle = bundle;
        this.mRoutes = routes;
    }

    public List<MediaRouteDescriptor> getRoutes() {
        ensureRoutes();
        return this.mRoutes;
    }

    private void ensureRoutes() {
        if (this.mRoutes == null) {
            ArrayList<Bundle> routeBundles = this.mBundle.getParcelableArrayList("routes");
            if (routeBundles == null || routeBundles.isEmpty()) {
                this.mRoutes = Collections.emptyList();
                return;
            }
            int count = routeBundles.size();
            this.mRoutes = new ArrayList(count);
            for (int i = 0; i < count; i++) {
                this.mRoutes.add(MediaRouteDescriptor.fromBundle((Bundle) routeBundles.get(i)));
            }
        }
    }

    public boolean isValid() {
        ensureRoutes();
        int routeCount = this.mRoutes.size();
        for (int i = 0; i < routeCount; i++) {
            MediaRouteDescriptor route = (MediaRouteDescriptor) this.mRoutes.get(i);
            if (route == null || !route.isValid()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder result = new StringBuilder();
        result.append("MediaRouteProviderDescriptor{ ");
        result.append("routes=").append(Arrays.toString(getRoutes().toArray()));
        result.append(", isValid=").append(isValid());
        result.append(" }");
        return result.toString();
    }

    public static MediaRouteProviderDescriptor fromBundle(Bundle bundle) {
        return bundle != null ? new MediaRouteProviderDescriptor(bundle, null) : null;
    }
}
