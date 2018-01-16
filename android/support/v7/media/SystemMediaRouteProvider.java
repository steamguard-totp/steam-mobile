package android.support.v7.media;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.support.v7.media.MediaRouteDescriptor.Builder;
import android.support.v7.media.MediaRouteProvider.ProviderMetadata;
import android.support.v7.media.MediaRouteProvider.RouteController;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.support.v7.media.MediaRouterJellybean.Callback;
import android.support.v7.media.MediaRouterJellybean.GetDefaultRouteWorkaround;
import android.support.v7.media.MediaRouterJellybean.SelectRouteWorkaround;
import android.support.v7.media.MediaRouterJellybean.UserRouteInfo;
import android.support.v7.media.MediaRouterJellybean.VolumeCallback;
import android.support.v7.media.MediaRouterJellybeanMr1.ActiveScanWorkaround;
import android.support.v7.media.MediaRouterJellybeanMr1.IsConnectingWorkaround;
import android.support.v7.mediarouter.R;
import android.view.Display;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

abstract class SystemMediaRouteProvider extends MediaRouteProvider {

    public interface SyncCallback {
        RouteInfo getSystemRouteByDescriptorId(String str);
    }

    static class JellybeanImpl extends SystemMediaRouteProvider implements Callback, VolumeCallback {
        private static final ArrayList<IntentFilter> LIVE_AUDIO_CONTROL_FILTERS = new ArrayList();
        private static final ArrayList<IntentFilter> LIVE_VIDEO_CONTROL_FILTERS = new ArrayList();
        protected boolean mActiveScan;
        protected final Object mCallbackObj;
        protected boolean mCallbackRegistered;
        private GetDefaultRouteWorkaround mGetDefaultRouteWorkaround;
        protected int mRouteTypes;
        protected final Object mRouterObj;
        private SelectRouteWorkaround mSelectRouteWorkaround;
        private final SyncCallback mSyncCallback;
        protected final ArrayList<SystemRouteRecord> mSystemRouteRecords = new ArrayList();
        protected final Object mUserRouteCategoryObj;
        protected final ArrayList<UserRouteRecord> mUserRouteRecords = new ArrayList();
        protected final Object mVolumeCallbackObj;

        protected final class SystemRouteController extends RouteController {
            private final Object mRouteObj;

            public SystemRouteController(Object routeObj) {
                this.mRouteObj = routeObj;
            }

            public void onSetVolume(int volume) {
                MediaRouterJellybean.RouteInfo.requestSetVolume(this.mRouteObj, volume);
            }

            public void onUpdateVolume(int delta) {
                MediaRouterJellybean.RouteInfo.requestUpdateVolume(this.mRouteObj, delta);
            }
        }

        protected static final class SystemRouteRecord {
            public MediaRouteDescriptor mRouteDescriptor;
            public final String mRouteDescriptorId;
            public final Object mRouteObj;

            public SystemRouteRecord(Object routeObj, String id) {
                this.mRouteObj = routeObj;
                this.mRouteDescriptorId = id;
            }
        }

        protected static final class UserRouteRecord {
            public final RouteInfo mRoute;
            public final Object mRouteObj;

            public UserRouteRecord(RouteInfo route, Object routeObj) {
                this.mRoute = route;
                this.mRouteObj = routeObj;
            }
        }

        static {
            IntentFilter f = new IntentFilter();
            f.addCategory("android.media.intent.category.LIVE_AUDIO");
            LIVE_AUDIO_CONTROL_FILTERS.add(f);
            f = new IntentFilter();
            f.addCategory("android.media.intent.category.LIVE_VIDEO");
            LIVE_VIDEO_CONTROL_FILTERS.add(f);
        }

        public JellybeanImpl(Context context, SyncCallback syncCallback) {
            super(context);
            this.mSyncCallback = syncCallback;
            this.mRouterObj = MediaRouterJellybean.getMediaRouter(context);
            this.mCallbackObj = createCallbackObj();
            this.mVolumeCallbackObj = createVolumeCallbackObj();
            this.mUserRouteCategoryObj = MediaRouterJellybean.createRouteCategory(this.mRouterObj, context.getResources().getString(R.string.mr_user_route_category_name), false);
            updateSystemRoutes();
        }

        public RouteController onCreateRouteController(String routeId) {
            int index = findSystemRouteRecordByDescriptorId(routeId);
            if (index >= 0) {
                return new SystemRouteController(((SystemRouteRecord) this.mSystemRouteRecords.get(index)).mRouteObj);
            }
            return null;
        }

        public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest request) {
            int newRouteTypes = 0;
            boolean newActiveScan = false;
            if (request != null) {
                List<String> categories = request.getSelector().getControlCategories();
                int count = categories.size();
                for (int i = 0; i < count; i++) {
                    String category = (String) categories.get(i);
                    if (category.equals("android.media.intent.category.LIVE_AUDIO")) {
                        newRouteTypes |= 1;
                    } else if (category.equals("android.media.intent.category.LIVE_VIDEO")) {
                        newRouteTypes |= 2;
                    } else {
                        newRouteTypes |= 8388608;
                    }
                }
                newActiveScan = request.isActiveScan();
            }
            if (this.mRouteTypes != newRouteTypes || this.mActiveScan != newActiveScan) {
                this.mRouteTypes = newRouteTypes;
                this.mActiveScan = newActiveScan;
                updateCallback();
                updateSystemRoutes();
            }
        }

        public void onRouteAdded(Object routeObj) {
            if (addSystemRouteNoPublish(routeObj)) {
                publishRoutes();
            }
        }

        private void updateSystemRoutes() {
            boolean changed = false;
            for (Object routeObj : MediaRouterJellybean.getRoutes(this.mRouterObj)) {
                changed |= addSystemRouteNoPublish(routeObj);
            }
            if (changed) {
                publishRoutes();
            }
        }

        private boolean addSystemRouteNoPublish(Object routeObj) {
            if (getUserRouteRecord(routeObj) != null || findSystemRouteRecord(routeObj) >= 0) {
                return false;
            }
            SystemRouteRecord record = new SystemRouteRecord(routeObj, assignRouteId(routeObj));
            updateSystemRouteDescriptor(record);
            this.mSystemRouteRecords.add(record);
            return true;
        }

        private String assignRouteId(Object routeObj) {
            boolean isDefault;
            String id;
            if (getDefaultRoute() == routeObj) {
                isDefault = true;
            } else {
                isDefault = false;
            }
            if (isDefault) {
                id = "DEFAULT_ROUTE";
            } else {
                id = String.format(Locale.US, "ROUTE_%08x", new Object[]{Integer.valueOf(getRouteName(routeObj).hashCode())});
            }
            if (findSystemRouteRecordByDescriptorId(id) < 0) {
                return id;
            }
            int i = 2;
            while (true) {
                String newId = String.format(Locale.US, "%s_%d", new Object[]{id, Integer.valueOf(i)});
                if (findSystemRouteRecordByDescriptorId(newId) < 0) {
                    return newId;
                }
                i++;
            }
        }

        public void onRouteRemoved(Object routeObj) {
            if (getUserRouteRecord(routeObj) == null) {
                int index = findSystemRouteRecord(routeObj);
                if (index >= 0) {
                    this.mSystemRouteRecords.remove(index);
                    publishRoutes();
                }
            }
        }

        public void onRouteChanged(Object routeObj) {
            if (getUserRouteRecord(routeObj) == null) {
                int index = findSystemRouteRecord(routeObj);
                if (index >= 0) {
                    updateSystemRouteDescriptor((SystemRouteRecord) this.mSystemRouteRecords.get(index));
                    publishRoutes();
                }
            }
        }

        public void onRouteVolumeChanged(Object routeObj) {
            if (getUserRouteRecord(routeObj) == null) {
                int index = findSystemRouteRecord(routeObj);
                if (index >= 0) {
                    SystemRouteRecord record = (SystemRouteRecord) this.mSystemRouteRecords.get(index);
                    int newVolume = MediaRouterJellybean.RouteInfo.getVolume(routeObj);
                    if (newVolume != record.mRouteDescriptor.getVolume()) {
                        record.mRouteDescriptor = new Builder(record.mRouteDescriptor).setVolume(newVolume).build();
                        publishRoutes();
                    }
                }
            }
        }

        public void onRouteSelected(int type, Object routeObj) {
            if (routeObj == MediaRouterJellybean.getSelectedRoute(this.mRouterObj, 8388611)) {
                UserRouteRecord userRouteRecord = getUserRouteRecord(routeObj);
                if (userRouteRecord != null) {
                    userRouteRecord.mRoute.select();
                    return;
                }
                int index = findSystemRouteRecord(routeObj);
                if (index >= 0) {
                    RouteInfo route = this.mSyncCallback.getSystemRouteByDescriptorId(((SystemRouteRecord) this.mSystemRouteRecords.get(index)).mRouteDescriptorId);
                    if (route != null) {
                        route.select();
                    }
                }
            }
        }

        public void onVolumeSetRequest(Object routeObj, int volume) {
            UserRouteRecord record = getUserRouteRecord(routeObj);
            if (record != null) {
                record.mRoute.requestSetVolume(volume);
            }
        }

        public void onVolumeUpdateRequest(Object routeObj, int direction) {
            UserRouteRecord record = getUserRouteRecord(routeObj);
            if (record != null) {
                record.mRoute.requestUpdateVolume(direction);
            }
        }

        public void onSyncRouteAdded(RouteInfo route) {
            if (route.getProviderInstance() != this) {
                Object routeObj = MediaRouterJellybean.createUserRoute(this.mRouterObj, this.mUserRouteCategoryObj);
                UserRouteRecord record = new UserRouteRecord(route, routeObj);
                MediaRouterJellybean.RouteInfo.setTag(routeObj, record);
                UserRouteInfo.setVolumeCallback(routeObj, this.mVolumeCallbackObj);
                updateUserRouteProperties(record);
                this.mUserRouteRecords.add(record);
                MediaRouterJellybean.addUserRoute(this.mRouterObj, routeObj);
                return;
            }
            int index = findSystemRouteRecord(MediaRouterJellybean.getSelectedRoute(this.mRouterObj, 8388611));
            if (index >= 0 && ((SystemRouteRecord) this.mSystemRouteRecords.get(index)).mRouteDescriptorId.equals(route.getDescriptorId())) {
                route.select();
            }
        }

        public void onSyncRouteRemoved(RouteInfo route) {
            if (route.getProviderInstance() != this) {
                int index = findUserRouteRecord(route);
                if (index >= 0) {
                    UserRouteRecord record = (UserRouteRecord) this.mUserRouteRecords.remove(index);
                    MediaRouterJellybean.RouteInfo.setTag(record.mRouteObj, null);
                    UserRouteInfo.setVolumeCallback(record.mRouteObj, null);
                    MediaRouterJellybean.removeUserRoute(this.mRouterObj, record.mRouteObj);
                }
            }
        }

        public void onSyncRouteChanged(RouteInfo route) {
            if (route.getProviderInstance() != this) {
                int index = findUserRouteRecord(route);
                if (index >= 0) {
                    updateUserRouteProperties((UserRouteRecord) this.mUserRouteRecords.get(index));
                }
            }
        }

        public void onSyncRouteSelected(RouteInfo route) {
            if (!route.isSelected()) {
                return;
            }
            int index;
            if (route.getProviderInstance() != this) {
                index = findUserRouteRecord(route);
                if (index >= 0) {
                    selectRoute(((UserRouteRecord) this.mUserRouteRecords.get(index)).mRouteObj);
                    return;
                }
                return;
            }
            index = findSystemRouteRecordByDescriptorId(route.getDescriptorId());
            if (index >= 0) {
                selectRoute(((SystemRouteRecord) this.mSystemRouteRecords.get(index)).mRouteObj);
            }
        }

        protected void publishRoutes() {
            MediaRouteProviderDescriptor.Builder builder = new MediaRouteProviderDescriptor.Builder();
            int count = this.mSystemRouteRecords.size();
            for (int i = 0; i < count; i++) {
                builder.addRoute(((SystemRouteRecord) this.mSystemRouteRecords.get(i)).mRouteDescriptor);
            }
            setDescriptor(builder.build());
        }

        protected int findSystemRouteRecord(Object routeObj) {
            int count = this.mSystemRouteRecords.size();
            for (int i = 0; i < count; i++) {
                if (((SystemRouteRecord) this.mSystemRouteRecords.get(i)).mRouteObj == routeObj) {
                    return i;
                }
            }
            return -1;
        }

        protected int findSystemRouteRecordByDescriptorId(String id) {
            int count = this.mSystemRouteRecords.size();
            for (int i = 0; i < count; i++) {
                if (((SystemRouteRecord) this.mSystemRouteRecords.get(i)).mRouteDescriptorId.equals(id)) {
                    return i;
                }
            }
            return -1;
        }

        protected int findUserRouteRecord(RouteInfo route) {
            int count = this.mUserRouteRecords.size();
            for (int i = 0; i < count; i++) {
                if (((UserRouteRecord) this.mUserRouteRecords.get(i)).mRoute == route) {
                    return i;
                }
            }
            return -1;
        }

        protected UserRouteRecord getUserRouteRecord(Object routeObj) {
            Object tag = MediaRouterJellybean.RouteInfo.getTag(routeObj);
            return tag instanceof UserRouteRecord ? (UserRouteRecord) tag : null;
        }

        protected void updateSystemRouteDescriptor(SystemRouteRecord record) {
            Builder builder = new Builder(record.mRouteDescriptorId, getRouteName(record.mRouteObj));
            onBuildSystemRouteDescriptor(record, builder);
            record.mRouteDescriptor = builder.build();
        }

        protected String getRouteName(Object routeObj) {
            CharSequence name = MediaRouterJellybean.RouteInfo.getName(routeObj, getContext());
            return name != null ? name.toString() : "";
        }

        protected void onBuildSystemRouteDescriptor(SystemRouteRecord record, Builder builder) {
            int supportedTypes = MediaRouterJellybean.RouteInfo.getSupportedTypes(record.mRouteObj);
            if ((supportedTypes & 1) != 0) {
                builder.addControlFilters(LIVE_AUDIO_CONTROL_FILTERS);
            }
            if ((supportedTypes & 2) != 0) {
                builder.addControlFilters(LIVE_VIDEO_CONTROL_FILTERS);
            }
            builder.setPlaybackType(MediaRouterJellybean.RouteInfo.getPlaybackType(record.mRouteObj));
            builder.setPlaybackStream(MediaRouterJellybean.RouteInfo.getPlaybackStream(record.mRouteObj));
            builder.setVolume(MediaRouterJellybean.RouteInfo.getVolume(record.mRouteObj));
            builder.setVolumeMax(MediaRouterJellybean.RouteInfo.getVolumeMax(record.mRouteObj));
            builder.setVolumeHandling(MediaRouterJellybean.RouteInfo.getVolumeHandling(record.mRouteObj));
        }

        protected void updateUserRouteProperties(UserRouteRecord record) {
            UserRouteInfo.setName(record.mRouteObj, record.mRoute.getName());
            UserRouteInfo.setPlaybackType(record.mRouteObj, record.mRoute.getPlaybackType());
            UserRouteInfo.setPlaybackStream(record.mRouteObj, record.mRoute.getPlaybackStream());
            UserRouteInfo.setVolume(record.mRouteObj, record.mRoute.getVolume());
            UserRouteInfo.setVolumeMax(record.mRouteObj, record.mRoute.getVolumeMax());
            UserRouteInfo.setVolumeHandling(record.mRouteObj, record.mRoute.getVolumeHandling());
        }

        protected void updateCallback() {
            if (this.mCallbackRegistered) {
                this.mCallbackRegistered = false;
                MediaRouterJellybean.removeCallback(this.mRouterObj, this.mCallbackObj);
            }
            if (this.mRouteTypes != 0) {
                this.mCallbackRegistered = true;
                MediaRouterJellybean.addCallback(this.mRouterObj, this.mRouteTypes, this.mCallbackObj);
            }
        }

        protected Object createCallbackObj() {
            return MediaRouterJellybean.createCallback(this);
        }

        protected Object createVolumeCallbackObj() {
            return MediaRouterJellybean.createVolumeCallback(this);
        }

        protected void selectRoute(Object routeObj) {
            if (this.mSelectRouteWorkaround == null) {
                this.mSelectRouteWorkaround = new SelectRouteWorkaround();
            }
            this.mSelectRouteWorkaround.selectRoute(this.mRouterObj, 8388611, routeObj);
        }

        protected Object getDefaultRoute() {
            if (this.mGetDefaultRouteWorkaround == null) {
                this.mGetDefaultRouteWorkaround = new GetDefaultRouteWorkaround();
            }
            return this.mGetDefaultRouteWorkaround.getDefaultRoute(this.mRouterObj);
        }
    }

    private static class JellybeanMr1Impl extends JellybeanImpl implements MediaRouterJellybeanMr1.Callback {
        private ActiveScanWorkaround mActiveScanWorkaround;
        private IsConnectingWorkaround mIsConnectingWorkaround;

        public JellybeanMr1Impl(Context context, SyncCallback syncCallback) {
            super(context, syncCallback);
        }

        public void onRoutePresentationDisplayChanged(Object routeObj) {
            int index = findSystemRouteRecord(routeObj);
            if (index >= 0) {
                SystemRouteRecord record = (SystemRouteRecord) this.mSystemRouteRecords.get(index);
                Display newPresentationDisplay = MediaRouterJellybeanMr1.RouteInfo.getPresentationDisplay(routeObj);
                int newPresentationDisplayId = newPresentationDisplay != null ? newPresentationDisplay.getDisplayId() : -1;
                if (newPresentationDisplayId != record.mRouteDescriptor.getPresentationDisplayId()) {
                    record.mRouteDescriptor = new Builder(record.mRouteDescriptor).setPresentationDisplayId(newPresentationDisplayId).build();
                    publishRoutes();
                }
            }
        }

        protected void onBuildSystemRouteDescriptor(SystemRouteRecord record, Builder builder) {
            super.onBuildSystemRouteDescriptor(record, builder);
            if (!MediaRouterJellybeanMr1.RouteInfo.isEnabled(record.mRouteObj)) {
                builder.setEnabled(false);
            }
            if (isConnecting(record)) {
                builder.setConnecting(true);
            }
            Display presentationDisplay = MediaRouterJellybeanMr1.RouteInfo.getPresentationDisplay(record.mRouteObj);
            if (presentationDisplay != null) {
                builder.setPresentationDisplayId(presentationDisplay.getDisplayId());
            }
        }

        protected void updateCallback() {
            super.updateCallback();
            if (this.mActiveScanWorkaround == null) {
                this.mActiveScanWorkaround = new ActiveScanWorkaround(getContext(), getHandler());
            }
            this.mActiveScanWorkaround.setActiveScanRouteTypes(this.mActiveScan ? this.mRouteTypes : 0);
        }

        protected Object createCallbackObj() {
            return MediaRouterJellybeanMr1.createCallback(this);
        }

        protected boolean isConnecting(SystemRouteRecord record) {
            if (this.mIsConnectingWorkaround == null) {
                this.mIsConnectingWorkaround = new IsConnectingWorkaround();
            }
            return this.mIsConnectingWorkaround.isConnecting(record.mRouteObj);
        }
    }

    private static class JellybeanMr2Impl extends JellybeanMr1Impl {
        public JellybeanMr2Impl(Context context, SyncCallback syncCallback) {
            super(context, syncCallback);
        }

        protected void onBuildSystemRouteDescriptor(SystemRouteRecord record, Builder builder) {
            super.onBuildSystemRouteDescriptor(record, builder);
            CharSequence description = MediaRouterJellybeanMr2.RouteInfo.getDescription(record.mRouteObj);
            if (description != null) {
                builder.setDescription(description.toString());
            }
        }

        protected void selectRoute(Object routeObj) {
            MediaRouterJellybean.selectRoute(this.mRouterObj, 8388611, routeObj);
        }

        protected Object getDefaultRoute() {
            return MediaRouterJellybeanMr2.getDefaultRoute(this.mRouterObj);
        }

        protected void updateUserRouteProperties(UserRouteRecord record) {
            super.updateUserRouteProperties(record);
            MediaRouterJellybeanMr2.UserRouteInfo.setDescription(record.mRouteObj, record.mRoute.getDescription());
        }

        protected void updateCallback() {
            int i = 1;
            if (this.mCallbackRegistered) {
                MediaRouterJellybean.removeCallback(this.mRouterObj, this.mCallbackObj);
            }
            this.mCallbackRegistered = true;
            Object obj = this.mRouterObj;
            int i2 = this.mRouteTypes;
            Object obj2 = this.mCallbackObj;
            if (!this.mActiveScan) {
                i = 0;
            }
            MediaRouterJellybeanMr2.addCallback(obj, i2, obj2, i | 2);
        }

        protected boolean isConnecting(SystemRouteRecord record) {
            return MediaRouterJellybeanMr2.RouteInfo.isConnecting(record.mRouteObj);
        }
    }

    private static class Api24Impl extends JellybeanMr2Impl {
        public Api24Impl(Context context, SyncCallback syncCallback) {
            super(context, syncCallback);
        }

        protected void onBuildSystemRouteDescriptor(SystemRouteRecord record, Builder builder) {
            super.onBuildSystemRouteDescriptor(record, builder);
            builder.setDeviceType(MediaRouterApi24.RouteInfo.getDeviceType(record.mRouteObj));
        }
    }

    static class LegacyImpl extends SystemMediaRouteProvider {
        private static final ArrayList<IntentFilter> CONTROL_FILTERS = new ArrayList();
        private final AudioManager mAudioManager;
        private int mLastReportedVolume = -1;
        private final VolumeChangeReceiver mVolumeChangeReceiver;

        final class DefaultRouteController extends RouteController {
            DefaultRouteController() {
            }

            public void onSetVolume(int volume) {
                LegacyImpl.this.mAudioManager.setStreamVolume(3, volume, 0);
                LegacyImpl.this.publishRoutes();
            }

            public void onUpdateVolume(int delta) {
                int volume = LegacyImpl.this.mAudioManager.getStreamVolume(3);
                if (Math.min(LegacyImpl.this.mAudioManager.getStreamMaxVolume(3), Math.max(0, volume + delta)) != volume) {
                    LegacyImpl.this.mAudioManager.setStreamVolume(3, volume, 0);
                }
                LegacyImpl.this.publishRoutes();
            }
        }

        final class VolumeChangeReceiver extends BroadcastReceiver {
            VolumeChangeReceiver() {
            }

            public void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals("android.media.VOLUME_CHANGED_ACTION") && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                    int volume = intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", -1);
                    if (volume >= 0 && volume != LegacyImpl.this.mLastReportedVolume) {
                        LegacyImpl.this.publishRoutes();
                    }
                }
            }
        }

        static {
            IntentFilter f = new IntentFilter();
            f.addCategory("android.media.intent.category.LIVE_AUDIO");
            f.addCategory("android.media.intent.category.LIVE_VIDEO");
            CONTROL_FILTERS.add(f);
        }

        public LegacyImpl(Context context) {
            super(context);
            this.mAudioManager = (AudioManager) context.getSystemService("audio");
            this.mVolumeChangeReceiver = new VolumeChangeReceiver();
            context.registerReceiver(this.mVolumeChangeReceiver, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            publishRoutes();
        }

        private void publishRoutes() {
            Resources r = getContext().getResources();
            int maxVolume = this.mAudioManager.getStreamMaxVolume(3);
            this.mLastReportedVolume = this.mAudioManager.getStreamVolume(3);
            setDescriptor(new MediaRouteProviderDescriptor.Builder().addRoute(new Builder("DEFAULT_ROUTE", r.getString(R.string.mr_system_route_name)).addControlFilters(CONTROL_FILTERS).setPlaybackStream(3).setPlaybackType(0).setVolumeHandling(1).setVolumeMax(maxVolume).setVolume(this.mLastReportedVolume).build()).build());
        }

        public RouteController onCreateRouteController(String routeId) {
            if (routeId.equals("DEFAULT_ROUTE")) {
                return new DefaultRouteController();
            }
            return null;
        }
    }

    protected SystemMediaRouteProvider(Context context) {
        super(context, new ProviderMetadata(new ComponentName("android", SystemMediaRouteProvider.class.getName())));
    }

    public static SystemMediaRouteProvider obtain(Context context, SyncCallback syncCallback) {
        if (VERSION.SDK_INT >= 24) {
            return new Api24Impl(context, syncCallback);
        }
        if (VERSION.SDK_INT >= 18) {
            return new JellybeanMr2Impl(context, syncCallback);
        }
        if (VERSION.SDK_INT >= 17) {
            return new JellybeanMr1Impl(context, syncCallback);
        }
        if (VERSION.SDK_INT >= 16) {
            return new JellybeanImpl(context, syncCallback);
        }
        return new LegacyImpl(context);
    }

    public void onSyncRouteAdded(RouteInfo route) {
    }

    public void onSyncRouteRemoved(RouteInfo route) {
    }

    public void onSyncRouteChanged(RouteInfo route) {
    }

    public void onSyncRouteSelected(RouteInfo route) {
    }
}
