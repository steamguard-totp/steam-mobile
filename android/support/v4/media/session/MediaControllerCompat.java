package android.support.v4.media.session;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.app.BundleCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.IMediaControllerCallback.Stub;
import android.support.v4.media.session.MediaSessionCompat.QueueItem;
import android.support.v4.media.session.MediaSessionCompat.Token;
import android.util.Log;
import java.util.HashMap;
import java.util.List;

public final class MediaControllerCompat {
    private final MediaControllerImpl mImpl;
    private final Token mToken;

    public static abstract class Callback implements DeathRecipient {
        private final Object mCallbackObj;
        MessageHandler mHandler;
        boolean mHasExtraCallback;
        boolean mRegistered = false;

        private class MessageHandler extends Handler {
            final /* synthetic */ Callback this$0;

            public void handleMessage(Message msg) {
                if (this.this$0.mRegistered) {
                    Object obj;
                    switch (msg.what) {
                        case 1:
                            obj = msg.obj;
                            msg.getData();
                            return;
                        case 2:
                            obj = msg.obj;
                            return;
                        case 3:
                            obj = msg.obj;
                            return;
                        case 4:
                            obj = msg.obj;
                            return;
                        case 5:
                            obj = msg.obj;
                            return;
                        case 6:
                            obj = msg.obj;
                            return;
                        case 7:
                            obj = msg.obj;
                            return;
                        default:
                            return;
                    }
                }
            }

            public void post(int what, Object obj, Bundle data) {
                Message msg = obtainMessage(what, obj);
                msg.setData(data);
                msg.sendToTarget();
            }
        }

        private class StubApi21 implements android.support.v4.media.session.MediaControllerCompatApi21.Callback {
            StubApi21() {
            }

            public void onSessionEvent(String event, Bundle extras) {
                if (Callback.this.mHasExtraCallback) {
                    int i = VERSION.SDK_INT;
                }
            }

            public void onPlaybackStateChanged(Object stateObj) {
                if (!Callback.this.mHasExtraCallback || VERSION.SDK_INT >= 22) {
                    PlaybackStateCompat.fromPlaybackState(stateObj);
                }
            }

            public void onMetadataChanged(Object metadataObj) {
                MediaMetadataCompat.fromMediaMetadata(metadataObj);
            }

            public void onQueueChanged(List<?> queue) {
                QueueItem.fromQueueItemList(queue);
            }

            public void onAudioInfoChanged(int type, int stream, int control, int max, int current) {
                PlaybackInfo playbackInfo = new PlaybackInfo(type, stream, control, max, current);
            }
        }

        private class StubCompat extends Stub {
            StubCompat() {
            }

            public void onEvent(String event, Bundle extras) throws RemoteException {
                Callback.this.mHandler.post(1, event, extras);
            }

            public void onSessionDestroyed() throws RemoteException {
                Callback.this.mHandler.post(8, null, null);
            }

            public void onPlaybackStateChanged(PlaybackStateCompat state) throws RemoteException {
                Callback.this.mHandler.post(2, state, null);
            }

            public void onMetadataChanged(MediaMetadataCompat metadata) throws RemoteException {
                Callback.this.mHandler.post(3, metadata, null);
            }

            public void onQueueChanged(List<QueueItem> queue) throws RemoteException {
                Callback.this.mHandler.post(5, queue, null);
            }

            public void onQueueTitleChanged(CharSequence title) throws RemoteException {
                Callback.this.mHandler.post(6, title, null);
            }

            public void onExtrasChanged(Bundle extras) throws RemoteException {
                Callback.this.mHandler.post(7, extras, null);
            }

            public void onVolumeInfoChanged(ParcelableVolumeInfo info) throws RemoteException {
                PlaybackInfo pi = null;
                if (info != null) {
                    pi = new PlaybackInfo(info.volumeType, info.audioStream, info.controlType, info.maxVolume, info.currentVolume);
                }
                Callback.this.mHandler.post(4, pi, null);
            }
        }

        public Callback() {
            if (VERSION.SDK_INT >= 21) {
                this.mCallbackObj = MediaControllerCompatApi21.createCallback(new StubApi21());
            } else {
                this.mCallbackObj = new StubCompat();
            }
        }
    }

    interface MediaControllerImpl {
        MediaMetadataCompat getMetadata();
    }

    static class MediaControllerImplApi21 implements MediaControllerImpl {
        private HashMap<Callback, ExtraCallback> mCallbackMap = new HashMap();
        protected final Object mControllerObj;
        private IMediaSession mExtraBinder;
        private List<Callback> mPendingCallbacks;

        private class ExtraCallback extends Stub {
            private Callback mCallback;

            ExtraCallback(Callback callback) {
                this.mCallback = callback;
            }

            public void onEvent(final String event, final Bundle extras) throws RemoteException {
                this.mCallback.mHandler.post(new Runnable() {
                    public void run() {
                    }
                });
            }

            public void onSessionDestroyed() throws RemoteException {
                throw new AssertionError();
            }

            public void onPlaybackStateChanged(final PlaybackStateCompat state) throws RemoteException {
                this.mCallback.mHandler.post(new Runnable() {
                    public void run() {
                    }
                });
            }

            public void onMetadataChanged(MediaMetadataCompat metadata) throws RemoteException {
                throw new AssertionError();
            }

            public void onQueueChanged(List<QueueItem> list) throws RemoteException {
                throw new AssertionError();
            }

            public void onQueueTitleChanged(CharSequence title) throws RemoteException {
                throw new AssertionError();
            }

            public void onExtrasChanged(Bundle extras) throws RemoteException {
                throw new AssertionError();
            }

            public void onVolumeInfoChanged(ParcelableVolumeInfo info) throws RemoteException {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat session) {
            this.mControllerObj = MediaControllerCompatApi21.fromToken(context, session.getSessionToken().getToken());
            requestExtraBinder();
        }

        public MediaMetadataCompat getMetadata() {
            Object metadataObj = MediaControllerCompatApi21.getMetadata(this.mControllerObj);
            return metadataObj != null ? MediaMetadataCompat.fromMediaMetadata(metadataObj) : null;
        }

        public void sendCommand(String command, Bundle params, ResultReceiver cb) {
            MediaControllerCompatApi21.sendCommand(this.mControllerObj, command, params, cb);
        }

        private void requestExtraBinder() {
            sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ResultReceiver(new Handler()) {
                protected void onReceiveResult(int resultCode, Bundle resultData) {
                    if (resultData != null) {
                        MediaControllerImplApi21.this.mExtraBinder = IMediaSession.Stub.asInterface(BundleCompat.getBinder(resultData, "android.support.v4.media.session.EXTRA_BINDER"));
                        if (MediaControllerImplApi21.this.mPendingCallbacks != null) {
                            for (Callback callback : MediaControllerImplApi21.this.mPendingCallbacks) {
                                ExtraCallback extraCallback = new ExtraCallback(callback);
                                MediaControllerImplApi21.this.mCallbackMap.put(callback, extraCallback);
                                callback.mHasExtraCallback = true;
                                try {
                                    MediaControllerImplApi21.this.mExtraBinder.registerCallbackListener(extraCallback);
                                } catch (RemoteException e) {
                                    Log.e("MediaControllerCompat", "Dead object in registerCallback. " + e);
                                }
                            }
                            MediaControllerImplApi21.this.mPendingCallbacks = null;
                        }
                    }
                }
            });
        }
    }

    static class MediaControllerImplApi23 extends MediaControllerImplApi21 {
        public MediaControllerImplApi23(Context context, MediaSessionCompat session) {
            super(context, session);
        }
    }

    static class MediaControllerImplApi24 extends MediaControllerImplApi23 {
        public MediaControllerImplApi24(Context context, MediaSessionCompat session) {
            super(context, session);
        }
    }

    static class MediaControllerImplBase implements MediaControllerImpl {
        private IMediaSession mBinder;
        private Token mToken;

        public MediaControllerImplBase(Token token) {
            this.mToken = token;
            this.mBinder = IMediaSession.Stub.asInterface((IBinder) token.getToken());
        }

        public MediaMetadataCompat getMetadata() {
            try {
                return this.mBinder.getMetadata();
            } catch (RemoteException e) {
                Log.e("MediaControllerCompat", "Dead object in getMetadata. " + e);
                return null;
            }
        }
    }

    public static final class PlaybackInfo {
        private final int mAudioStream;
        private final int mCurrentVolume;
        private final int mMaxVolume;
        private final int mPlaybackType;
        private final int mVolumeControl;

        PlaybackInfo(int type, int stream, int control, int max, int current) {
            this.mPlaybackType = type;
            this.mAudioStream = stream;
            this.mVolumeControl = control;
            this.mMaxVolume = max;
            this.mCurrentVolume = current;
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat session) {
        if (session == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        this.mToken = session.getSessionToken();
        if (VERSION.SDK_INT >= 24) {
            this.mImpl = new MediaControllerImplApi24(context, session);
        } else if (VERSION.SDK_INT >= 23) {
            this.mImpl = new MediaControllerImplApi23(context, session);
        } else if (VERSION.SDK_INT >= 21) {
            this.mImpl = new MediaControllerImplApi21(context, session);
        } else {
            this.mImpl = new MediaControllerImplBase(this.mToken);
        }
    }

    public MediaMetadataCompat getMetadata() {
        return this.mImpl.getMetadata();
    }
}
