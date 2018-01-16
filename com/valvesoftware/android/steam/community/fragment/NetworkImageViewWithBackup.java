package com.valvesoftware.android.steam.community.fragment;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.ImageLoader.ImageContainer;
import com.android.volley.toolbox.ImageLoader.ImageListener;
import java.util.HashSet;

public class NetworkImageViewWithBackup extends ImageView {
    private static final HashSet<String> badImageUrls = new HashSet();
    private String mBackupUrl;
    private int mDefaultImageId;
    private int mErrorImageId;
    private ImageContainer mImageContainer;
    private ImageLoader mImageLoader;
    private String mUrl;

    public NetworkImageViewWithBackup(Context context) {
        this(context, null);
    }

    public NetworkImageViewWithBackup(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public NetworkImageViewWithBackup(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public void setImageUrl(String url, String backupUrl, ImageLoader imageLoader) {
        this.mBackupUrl = backupUrl;
        this.mUrl = url;
        this.mImageLoader = imageLoader;
        loadImageIfNecessary(false);
    }

    public void setDefaultImageResId(int defaultImage) {
        this.mDefaultImageId = defaultImage;
    }

    public void setErrorImageResId(int errorImage) {
        this.mErrorImageId = errorImage;
    }

    private void loadImageIfNecessary(final boolean isInLayoutPass) {
        int width = getWidth();
        int height = getHeight();
        String url = this.mUrl;
        if (badImageUrls.contains(this.mUrl)) {
            if (badImageUrls.contains(this.mBackupUrl)) {
                url = null;
            } else {
                url = this.mBackupUrl;
            }
        }
        if (width != 0 || height != 0) {
            if (TextUtils.isEmpty(url)) {
                if (this.mImageContainer != null) {
                    this.mImageContainer.cancelRequest();
                    this.mImageContainer = null;
                }
                setImageBitmap(null);
                return;
            }
            if (!(this.mImageContainer == null || this.mImageContainer.getRequestUrl() == null)) {
                if (!this.mImageContainer.getRequestUrl().equals(url)) {
                    this.mImageContainer.cancelRequest();
                    setImageBitmap(null);
                } else {
                    return;
                }
            }
            final String currentUrl = url;
            this.mImageContainer = this.mImageLoader.get(currentUrl, new ImageListener() {
                public void onErrorResponse(VolleyError error) {
                    NetworkImageViewWithBackup.badImageUrls.add(currentUrl);
                    if (currentUrl.equals(NetworkImageViewWithBackup.this.mUrl)) {
                        NetworkImageViewWithBackup.this.post(new Runnable() {
                            public void run() {
                                NetworkImageViewWithBackup.this.loadImageIfNecessary(isInLayoutPass);
                            }
                        });
                    } else if (NetworkImageViewWithBackup.this.mErrorImageId != 0) {
                        NetworkImageViewWithBackup.this.setImageResource(NetworkImageViewWithBackup.this.mErrorImageId);
                    }
                }

                public void onResponse(final ImageContainer response, boolean isImmediate) {
                    if (isImmediate && isInLayoutPass) {
                        NetworkImageViewWithBackup.this.post(new Runnable() {
                            public void run() {
                                AnonymousClass1.this.onResponse(response, false);
                            }
                        });
                    } else if (response.getBitmap() != null) {
                        NetworkImageViewWithBackup.this.setImageBitmap(response.getBitmap());
                    } else if (NetworkImageViewWithBackup.this.mDefaultImageId != 0) {
                        NetworkImageViewWithBackup.this.setImageResource(NetworkImageViewWithBackup.this.mDefaultImageId);
                    }
                }
            });
        }
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        loadImageIfNecessary(true);
    }

    protected void onDetachedFromWindow() {
        if (this.mImageContainer != null) {
            this.mImageContainer.cancelRequest();
            setImageBitmap(null);
            this.mImageContainer = null;
        }
        super.onDetachedFromWindow();
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }
}
