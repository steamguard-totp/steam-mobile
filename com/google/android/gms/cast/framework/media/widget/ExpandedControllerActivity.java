package com.google.android.gms.cast.framework.media.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.gms.R;
import com.google.android.gms.cast.AdBreakClipInfo;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.RemoteMediaClient.Listener;
import com.google.android.gms.cast.framework.media.uicontroller.UIMediaController;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.internal.zzxa;
import com.google.android.gms.internal.zzxf;
import com.google.android.gms.internal.zzxk;

public abstract class ExpandedControllerActivity extends AppCompatActivity {
    private SessionManager zzaoU;
    private SeekBar zzasI;
    private final Listener zzasr = new zza();
    private ImageView zzatA;
    private ImageView zzatB;
    private zzxf zzatC;
    private int[] zzatD;
    private ImageView[] zzatE = new ImageView[4];
    private View zzatF;
    private ImageView zzatG;
    private TextView zzatH;
    private TextView zzatI;
    private zzxa zzatJ;
    private UIMediaController zzatK;
    private final SessionManagerListener<CastSession> zzatk = new zzb();
    private int zzatl;
    private int zzatm;
    private int zzatn;
    private int zzato;
    private int zzatp;
    private int zzatq;
    private int zzatr;
    private int zzats;
    private int zzatt;
    private int zzatu;
    private int zzatv;
    private int zzatw;
    private int zzatx;
    private int zzaty;
    private TextView zzatz;

    private class zza implements Listener {
        final /* synthetic */ ExpandedControllerActivity zzatL;

        private zza(ExpandedControllerActivity expandedControllerActivity) {
            this.zzatL = expandedControllerActivity;
        }

        public void onAdBreakStatusUpdated() {
            this.zzatL.zztL();
        }

        public void onMetadataUpdated() {
            this.zzatL.zztJ();
        }

        public void onPreloadStatusUpdated() {
        }

        public void onQueueStatusUpdated() {
        }

        public void onSendingRemoteMediaRequest() {
            this.zzatL.zzatz.setText(this.zzatL.getResources().getString(R.string.cast_expanded_controller_loading));
        }

        public void onStatusUpdated() {
            RemoteMediaClient zzc = this.zzatL.getRemoteMediaClient();
            if (zzc == null || !zzc.hasMediaSession()) {
                this.zzatL.finish();
                return;
            }
            this.zzatL.zztK();
            this.zzatL.zztL();
        }
    }

    private class zzb implements SessionManagerListener<CastSession> {
        final /* synthetic */ ExpandedControllerActivity zzatL;

        private zzb(ExpandedControllerActivity expandedControllerActivity) {
            this.zzatL = expandedControllerActivity;
        }

        public void onSessionEnded(CastSession castSession, int i) {
            this.zzatL.finish();
        }

        public /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
        }

        public /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z) {
        }

        public /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
        }

        public /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        }
    }

    private RemoteMediaClient getRemoteMediaClient() {
        CastSession currentCastSession = this.zzaoU.getCurrentCastSession();
        return (currentCastSession == null || !currentCastSession.isConnected()) ? null : currentCastSession.getRemoteMediaClient();
    }

    private zzxf zza(RelativeLayout relativeLayout) {
        View com_google_android_gms_internal_zzxf = new zzxf(this);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(0, R.id.end_text);
        layoutParams.addRule(1, R.id.start_text);
        layoutParams.addRule(6, R.id.seek_bar);
        layoutParams.addRule(7, R.id.seek_bar);
        layoutParams.addRule(5, R.id.seek_bar);
        layoutParams.addRule(8, R.id.seek_bar);
        com_google_android_gms_internal_zzxf.setLayoutParams(layoutParams);
        com_google_android_gms_internal_zzxf.setPadding(this.zzasI.getPaddingLeft(), this.zzasI.getPaddingTop(), this.zzasI.getPaddingRight(), this.zzasI.getPaddingBottom());
        com_google_android_gms_internal_zzxf.setContentDescription(getResources().getString(R.string.cast_seek_bar));
        com_google_android_gms_internal_zzxf.setBackgroundColor(0);
        relativeLayout.addView(com_google_android_gms_internal_zzxf);
        return com_google_android_gms_internal_zzxf;
    }

    private void zza(Toolbar toolbar) {
        setSupportActionBar(toolbar);
        if (getSupportActionBar() != null) {
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
            getSupportActionBar().setHomeAsUpIndicator(R.drawable.quantum_ic_keyboard_arrow_down_white_36);
        }
    }

    private void zza(View view, int i, int i2, UIMediaController uIMediaController) {
        ImageView imageView = (ImageView) view.findViewById(i);
        if (i2 == R.id.cast_button_type_empty) {
            imageView.setVisibility(4);
        } else if (i2 == R.id.cast_button_type_custom) {
        } else {
            if (i2 == R.id.cast_button_type_play_pause_toggle) {
                zza(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_skip_previous) {
                zzb(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_skip_next) {
                zzc(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_rewind_30_seconds) {
                zzd(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_forward_30_seconds) {
                zze(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_mute_toggle) {
                zzf(imageView, uIMediaController);
            } else if (i2 == R.id.cast_button_type_closed_caption) {
                zzg(imageView, uIMediaController);
            }
        }
    }

    private void zza(View view, UIMediaController uIMediaController) {
        this.zzatA = (ImageView) view.findViewById(R.id.background_image_view);
        this.zzatB = (ImageView) view.findViewById(R.id.blurred_background_image_view);
        View findViewById = view.findViewById(R.id.background_place_holder_image_view);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        uIMediaController.bindImageViewToImageOfCurrentItem(this.zzatA, new ImageHints(4, displayMetrics.widthPixels, displayMetrics.heightPixels), findViewById);
        this.zzatz = (TextView) view.findViewById(R.id.status_text);
        uIMediaController.bindViewToLoadingIndicator((ProgressBar) view.findViewById(R.id.loading_indicator));
        TextView textView = (TextView) view.findViewById(R.id.start_text);
        TextView textView2 = (TextView) view.findViewById(R.id.end_text);
        ImageView imageView = (ImageView) view.findViewById(R.id.live_stream_indicator);
        this.zzasI = (SeekBar) view.findViewById(R.id.seek_bar);
        zztF();
        zztH();
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.live_stream_seek_bar);
        uIMediaController.bindTextViewToStreamPosition(textView, true);
        uIMediaController.bindTextViewToStreamDuration(textView2, imageView);
        uIMediaController.bindSeekBar(this.zzasI);
        uIMediaController.bindViewToUIController(seekBar, new zzxk(seekBar, this.zzasI));
        this.zzatE[0] = (ImageView) view.findViewById(R.id.button_0);
        this.zzatE[1] = (ImageView) view.findViewById(R.id.button_1);
        this.zzatE[2] = (ImageView) view.findViewById(R.id.button_2);
        this.zzatE[3] = (ImageView) view.findViewById(R.id.button_3);
        zza(view, R.id.button_0, this.zzatD[0], uIMediaController);
        zza(view, R.id.button_1, this.zzatD[1], uIMediaController);
        zza(view, R.id.button_play_pause_toggle, R.id.cast_button_type_play_pause_toggle, uIMediaController);
        zza(view, R.id.button_2, this.zzatD[2], uIMediaController);
        zza(view, R.id.button_3, this.zzatD[3], uIMediaController);
        this.zzatF = findViewById(R.id.ad_container);
        this.zzatG = (ImageView) this.zzatF.findViewById(R.id.ad_image_view);
        this.zzatI = (TextView) this.zzatF.findViewById(R.id.ad_label);
        this.zzatH = (TextView) this.zzatF.findViewById(R.id.ad_in_progress_label);
        this.zzatC = zza((RelativeLayout) view.findViewById(R.id.seek_bar_controls));
    }

    private void zza(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzatl);
        Drawable zzb = zza.zzb(this, this.zzaty, this.zzatq);
        Drawable zzb2 = zza.zzb(this, this.zzaty, this.zzatp);
        Drawable zzb3 = zza.zzb(this, this.zzaty, this.zzatr);
        imageView.setImageDrawable(zzb2);
        uIMediaController.bindImageViewToPlayPauseToggle(imageView, zzb2, zzb, zzb3, null, false);
    }

    private void zzb(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzatl);
        imageView.setImageDrawable(zza.zzb(this, this.zzaty, this.zzats));
        imageView.setContentDescription(getResources().getString(R.string.cast_skip_prev));
        uIMediaController.bindViewToSkipPrev(imageView, 0);
    }

    private void zzc(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzatl);
        imageView.setImageDrawable(zza.zzb(this, this.zzaty, this.zzatt));
        imageView.setContentDescription(getResources().getString(R.string.cast_skip_next));
        uIMediaController.bindViewToSkipNext(imageView, 0);
    }

    private void zzd(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzatl);
        imageView.setImageDrawable(zza.zzb(this, this.zzaty, this.zzatu));
        imageView.setContentDescription(getResources().getString(R.string.cast_rewind_30));
        uIMediaController.bindViewToRewind(imageView, 30000);
    }

    private void zze(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzatl);
        imageView.setImageDrawable(zza.zzb(this, this.zzaty, this.zzatv));
        imageView.setContentDescription(getResources().getString(R.string.cast_forward_30));
        uIMediaController.bindViewToForward(imageView, 30000);
    }

    private void zzf(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzatl);
        imageView.setImageDrawable(zza.zzb(this, this.zzaty, this.zzatw));
        uIMediaController.bindImageViewToMuteToggle(imageView);
    }

    private void zzg(ImageView imageView, UIMediaController uIMediaController) {
        imageView.setBackgroundResource(this.zzatl);
        imageView.setImageDrawable(zza.zzb(this, this.zzaty, this.zzatx));
        uIMediaController.bindViewToClosedCaption(imageView);
    }

    private void zztD() {
        TypedArray obtainStyledAttributes = obtainStyledAttributes(new int[]{android.support.v7.appcompat.R.attr.selectableItemBackgroundBorderless, android.support.v7.appcompat.R.attr.colorControlActivated});
        this.zzatl = obtainStyledAttributes.getResourceId(0, 0);
        this.zzatm = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
    }

    private void zztE() {
        boolean z = true;
        TypedArray obtainStyledAttributes = obtainStyledAttributes(null, R.styleable.CastExpandedController, R.attr.castExpandedControllerStyle, R.style.CastExpandedController);
        this.zzaty = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castButtonColor, 0);
        this.zzatn = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarProgressDrawable, 0);
        this.zzato = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSeekBarThumbDrawable, 0);
        this.zzatp = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castPlayButtonDrawable, 0);
        this.zzatq = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castPauseButtonDrawable, 0);
        this.zzatr = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castStopButtonDrawable, 0);
        this.zzats = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSkipPreviousButtonDrawable, 0);
        this.zzatt = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castSkipNextButtonDrawable, 0);
        this.zzatu = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castRewind30ButtonDrawable, 0);
        this.zzatv = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castForward30ButtonDrawable, 0);
        this.zzatw = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castMuteToggleButtonDrawable, 0);
        this.zzatx = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castClosedCaptionsButtonDrawable, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.CastExpandedController_castControlButtons, 0);
        if (resourceId != 0) {
            TypedArray obtainTypedArray = getResources().obtainTypedArray(resourceId);
            if (obtainTypedArray.length() != 4) {
                z = false;
            }
            zzac.zzas(z);
            this.zzatD = new int[obtainTypedArray.length()];
            for (int i = 0; i < obtainTypedArray.length(); i++) {
                this.zzatD[i] = obtainTypedArray.getResourceId(i, 0);
            }
            obtainTypedArray.recycle();
        } else {
            this.zzatD = new int[]{R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty, R.id.cast_button_type_empty};
        }
        obtainStyledAttributes.recycle();
    }

    private void zztF() {
        Drawable drawable = getResources().getDrawable(this.zzatn);
        ColorStateList colorStateList = null;
        if (drawable != null) {
            if (this.zzatn == R.drawable.cast_expanded_controller_seekbar_track) {
                ColorStateList zztG = zztG();
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable wrap = DrawableCompat.wrap(layerDrawable.findDrawableByLayerId(16908301));
                DrawableCompat.setTintList(wrap, zztG);
                layerDrawable.setDrawableByLayerId(16908301, wrap);
                layerDrawable.findDrawableByLayerId(16908288).setColorFilter(getResources().getColor(R.color.cast_expanded_controller_seek_bar_progress_background_tint_color), Mode.SRC_IN);
                colorStateList = zztG;
            }
            this.zzasI.setProgressDrawable(drawable);
        }
        drawable = getResources().getDrawable(this.zzato);
        if (drawable != null) {
            if (this.zzato == R.drawable.cast_expanded_controller_seekbar_thumb) {
                if (colorStateList == null) {
                    colorStateList = zztG();
                }
                drawable = DrawableCompat.wrap(drawable);
                DrawableCompat.setTintList(drawable, colorStateList);
            }
            this.zzasI.setThumb(drawable);
        }
    }

    private ColorStateList zztG() {
        int color = getResources().getColor(this.zzatm);
        TypedValue typedValue = new TypedValue();
        getResources().getValue(R.dimen.cast_expanded_controller_seekbar_disabled_alpha, typedValue, true);
        int argb = Color.argb((int) (typedValue.getFloat() * ((float) Color.alpha(color))), Color.red(color), Color.green(color), Color.blue(color));
        int[] iArr = new int[]{color, argb};
        r0 = new int[2][];
        r0[0] = new int[]{16842910};
        r0[1] = new int[]{-16842910};
        return new ColorStateList(r0, iArr);
    }

    @TargetApi(21)
    private void zztH() {
        if (zzs.zzyI()) {
            this.zzasI.setSplitTrack(false);
        }
    }

    @TargetApi(19)
    private void zztI() {
        if (zzs.zzyx()) {
            int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
            if (zzs.zzyA()) {
                systemUiVisibility ^= 2;
            }
            if (zzs.zzyC()) {
                systemUiVisibility ^= 4;
            }
            if (zzs.zzyF()) {
                systemUiVisibility ^= 4096;
            }
            getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility);
            if (zzs.zzyE()) {
                setImmersive(true);
            }
        }
    }

    private void zztJ() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession()) {
            MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
            if (mediaInfo != null) {
                MediaMetadata metadata = mediaInfo.getMetadata();
                if (metadata != null) {
                    ActionBar supportActionBar = getSupportActionBar();
                    if (supportActionBar != null) {
                        supportActionBar.setTitle(metadata.getString("com.google.android.gms.cast.metadata.TITLE"));
                    }
                }
            }
        }
    }

    private void zztK() {
        CastSession currentCastSession = this.zzaoU.getCurrentCastSession();
        if (currentCastSession != null) {
            CastDevice castDevice = currentCastSession.getCastDevice();
            if (castDevice != null) {
                if (!TextUtils.isEmpty(castDevice.getFriendlyName())) {
                    this.zzatz.setText(getResources().getString(R.string.cast_casting_to_device, new Object[]{r0}));
                    return;
                }
            }
        }
        this.zzatz.setText("");
    }

    private void zztL() {
        CharSequence charSequence = null;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        MediaInfo mediaInfo = remoteMediaClient == null ? null : remoteMediaClient.getMediaInfo();
        MediaStatus mediaStatus = remoteMediaClient == null ? null : remoteMediaClient.getMediaStatus();
        boolean z = mediaStatus != null && mediaStatus.isPlayingAd();
        if (z) {
            Object contentUrl;
            if (zzs.zzyD() && this.zzatB.getVisibility() == 8) {
                Drawable drawable = this.zzatA.getDrawable();
                if (drawable != null && (drawable instanceof BitmapDrawable)) {
                    Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                    if (bitmap != null) {
                        bitmap = zza.zza(this, bitmap, 0.25f, 7.5f);
                        if (bitmap != null) {
                            this.zzatB.setImageBitmap(bitmap);
                            this.zzatB.setVisibility(0);
                        }
                    }
                }
            }
            AdBreakClipInfo currentAdBreakClip = mediaStatus.getCurrentAdBreakClip();
            if (currentAdBreakClip != null) {
                charSequence = currentAdBreakClip.getTitle();
                contentUrl = currentAdBreakClip.getContentUrl();
            } else {
                contentUrl = null;
            }
            this.zzatH.setVisibility(0);
            if (TextUtils.isEmpty(contentUrl)) {
                this.zzatG.setVisibility(8);
            } else {
                this.zzatJ.zzo(Uri.parse(contentUrl));
            }
            TextView textView = this.zzatI;
            if (TextUtils.isEmpty(charSequence)) {
                charSequence = getResources().getString(R.string.cast_ad_label);
            }
            textView.setText(charSequence);
            this.zzasI.setEnabled(false);
            this.zzatF.setVisibility(0);
        } else {
            this.zzasI.setEnabled(true);
            this.zzatF.setVisibility(8);
            if (zzs.zzyD()) {
                this.zzatB.setVisibility(8);
                this.zzatB.setImageBitmap(null);
            }
        }
        if (mediaInfo != null) {
            this.zzatC.zzcc(this.zzasI.getMax());
            this.zzatC.zzb(mediaInfo.getAdBreaks(), -1);
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        CastContext.getSharedInstance(this).registerLifecycleCallbacksBeforeIceCreamSandwich(this, bundle);
        this.zzaoU = CastContext.getSharedInstance(this).getSessionManager();
        if (this.zzaoU.getCurrentCastSession() == null) {
            finish();
        }
        this.zzatK = new UIMediaController(this);
        this.zzatK.setPostRemoteMediaClientListener(this.zzasr);
        setContentView(R.layout.cast_expanded_controller_activity);
        zztD();
        zztE();
        zza(findViewById(R.id.expanded_controller_layout), this.zzatK);
        zza((Toolbar) findViewById(R.id.toolbar));
        zztK();
        zztJ();
        this.zzatJ = new zzxa(getApplicationContext(), new ImageHints(-1, this.zzatG.getWidth(), this.zzatG.getHeight()));
        this.zzatJ.zza(new com.google.android.gms.internal.zzxa.zza(this) {
            final /* synthetic */ ExpandedControllerActivity zzatL;

            {
                this.zzatL = r1;
            }

            public void zzc(Bitmap bitmap) {
                if (bitmap != null) {
                    if (this.zzatL.zzatH != null) {
                        this.zzatL.zzatH.setVisibility(8);
                    }
                    if (this.zzatL.zzatG != null) {
                        this.zzatL.zzatG.setVisibility(0);
                        this.zzatL.zzatG.setImageBitmap(bitmap);
                    }
                }
            }
        });
    }

    protected void onDestroy() {
        this.zzatJ.clear();
        if (this.zzatK != null) {
            this.zzatK.setPostRemoteMediaClientListener(null);
            this.zzatK.dispose();
        }
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return true;
    }

    protected void onPause() {
        CastContext.getSharedInstance(this).getSessionManager().removeSessionManagerListener(this.zzatk, CastSession.class);
        super.onPause();
    }

    protected void onResume() {
        CastContext.getSharedInstance(this).getSessionManager().addSessionManagerListener(this.zzatk, CastSession.class);
        CastSession currentCastSession = CastContext.getSharedInstance(this).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !(currentCastSession.isConnected() || currentCastSession.isConnecting())) {
            finish();
        }
        zztK();
        zztL();
        super.onResume();
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            zztI();
        }
    }
}
