package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.internal.zzez;
import com.google.android.gms.internal.zzpy;

public final class PublisherAdView extends ViewGroup {
    private final zzez zzrJ;

    public AdListener getAdListener() {
        return this.zzrJ.getAdListener();
    }

    public AdSize getAdSize() {
        return this.zzrJ.getAdSize();
    }

    public AdSize[] getAdSizes() {
        return this.zzrJ.getAdSizes();
    }

    public String getAdUnitId() {
        return this.zzrJ.getAdUnitId();
    }

    public AppEventListener getAppEventListener() {
        return this.zzrJ.getAppEventListener();
    }

    public String getMediationAdapterClassName() {
        return this.zzrJ.getMediationAdapterClassName();
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.zzrJ.getOnCustomRenderedAdLoadedListener();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt != null && childAt.getVisibility() != 8) {
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = ((i3 - i) - measuredWidth) / 2;
            int i6 = ((i4 - i2) - measuredHeight) / 2;
            childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
        }
    }

    protected void onMeasure(int i, int i2) {
        int widthInPixels;
        int i3 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize;
            AdSize adSize2 = null;
            try {
                adSize = getAdSize();
            } catch (Throwable e) {
                zzpy.zzb("Unable to retrieve ad size.", e);
                adSize = adSize2;
            }
            if (adSize != null) {
                Context context = getContext();
                widthInPixels = adSize.getWidthInPixels(context);
                i3 = adSize.getHeightInPixels(context);
            } else {
                widthInPixels = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            widthInPixels = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(widthInPixels, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public void setAdListener(AdListener adListener) {
        this.zzrJ.setAdListener(adListener);
    }

    public void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length < 1) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.zzrJ.zza(adSizeArr);
    }

    public void setAdUnitId(String str) {
        this.zzrJ.setAdUnitId(str);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.zzrJ.setAppEventListener(appEventListener);
    }

    public void setCorrelator(Correlator correlator) {
        this.zzrJ.setCorrelator(correlator);
    }

    public void setManualImpressionsEnabled(boolean z) {
        this.zzrJ.setManualImpressionsEnabled(z);
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.zzrJ.setOnCustomRenderedAdLoadedListener(onCustomRenderedAdLoadedListener);
    }
}
