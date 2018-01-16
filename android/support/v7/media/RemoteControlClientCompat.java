package android.support.v7.media;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v7.media.MediaRouterJellybean.UserRouteInfo;
import java.lang.ref.WeakReference;

abstract class RemoteControlClientCompat {
    protected final Context mContext;
    protected final Object mRcc;
    protected VolumeCallback mVolumeCallback;

    public interface VolumeCallback {
        void onVolumeSetRequest(int i);

        void onVolumeUpdateRequest(int i);
    }

    static class JellybeanImpl extends RemoteControlClientCompat {
        private boolean mRegistered;
        private final Object mRouterObj;
        private final Object mUserRouteCategoryObj = MediaRouterJellybean.createRouteCategory(this.mRouterObj, "", false);
        private final Object mUserRouteObj = MediaRouterJellybean.createUserRoute(this.mRouterObj, this.mUserRouteCategoryObj);

        private static final class VolumeCallbackWrapper implements android.support.v7.media.MediaRouterJellybean.VolumeCallback {
            private final WeakReference<JellybeanImpl> mImplWeak;

            public VolumeCallbackWrapper(JellybeanImpl impl) {
                this.mImplWeak = new WeakReference(impl);
            }

            public void onVolumeUpdateRequest(Object routeObj, int direction) {
                JellybeanImpl impl = (JellybeanImpl) this.mImplWeak.get();
                if (impl != null && impl.mVolumeCallback != null) {
                    impl.mVolumeCallback.onVolumeUpdateRequest(direction);
                }
            }

            public void onVolumeSetRequest(Object routeObj, int volume) {
                JellybeanImpl impl = (JellybeanImpl) this.mImplWeak.get();
                if (impl != null && impl.mVolumeCallback != null) {
                    impl.mVolumeCallback.onVolumeSetRequest(volume);
                }
            }
        }

        public JellybeanImpl(Context context, Object rcc) {
            super(context, rcc);
            this.mRouterObj = MediaRouterJellybean.getMediaRouter(context);
        }

        public void setPlaybackInfo(PlaybackInfo info) {
            UserRouteInfo.setVolume(this.mUserRouteObj, info.volume);
            UserRouteInfo.setVolumeMax(this.mUserRouteObj, info.volumeMax);
            UserRouteInfo.setVolumeHandling(this.mUserRouteObj, info.volumeHandling);
            UserRouteInfo.setPlaybackStream(this.mUserRouteObj, info.playbackStream);
            UserRouteInfo.setPlaybackType(this.mUserRouteObj, info.playbackType);
            if (!this.mRegistered) {
                this.mRegistered = true;
                UserRouteInfo.setVolumeCallback(this.mUserRouteObj, MediaRouterJellybean.createVolumeCallback(new VolumeCallbackWrapper(this)));
                UserRouteInfo.setRemoteControlClient(this.mUserRouteObj, this.mRcc);
            }
        }
    }

    static class LegacyImpl extends RemoteControlClientCompat {
        public LegacyImpl(Context context, Object rcc) {
            super(context, rcc);
        }
    }

    public static final class PlaybackInfo {
        public int playbackStream = 3;
        public int playbackType = 1;
        public int volume;
        public int volumeHandling = 0;
        public int volumeMax;
    }

    protected RemoteControlClientCompat(Context context, Object rcc) {
        this.mContext = context;
        this.mRcc = rcc;
    }

    public static RemoteControlClientCompat obtain(Context context, Object rcc) {
        if (VERSION.SDK_INT >= 16) {
            return new JellybeanImpl(context, rcc);
        }
        return new LegacyImpl(context, rcc);
    }

    public Object getRemoteControlClient() {
        return this.mRcc;
    }

    public void setPlaybackInfo(PlaybackInfo info) {
    }

    public void setVolumeCallback(VolumeCallback callback) {
        this.mVolumeCallback = callback;
    }
}
