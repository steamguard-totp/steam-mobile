package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@zzmb
public class zzeb {
    public static final zzeb zzzj = new zzeb();

    protected zzeb() {
    }

    public static zzeb zzey() {
        return zzzj;
    }

    public zzdy zza(Context context, zzey com_google_android_gms_internal_zzey) {
        Date birthday = com_google_android_gms_internal_zzey.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1;
        String contentUrl = com_google_android_gms_internal_zzey.getContentUrl();
        int gender = com_google_android_gms_internal_zzey.getGender();
        Collection keywords = com_google_android_gms_internal_zzey.getKeywords();
        List unmodifiableList = !keywords.isEmpty() ? Collections.unmodifiableList(new ArrayList(keywords)) : null;
        boolean isTestDevice = com_google_android_gms_internal_zzey.isTestDevice(context);
        int zzfa = com_google_android_gms_internal_zzey.zzfa();
        Location location = com_google_android_gms_internal_zzey.getLocation();
        Bundle networkExtrasBundle = com_google_android_gms_internal_zzey.getNetworkExtrasBundle(AdMobAdapter.class);
        boolean manualImpressionsEnabled = com_google_android_gms_internal_zzey.getManualImpressionsEnabled();
        String publisherProvidedId = com_google_android_gms_internal_zzey.getPublisherProvidedId();
        SearchAdRequest zzeX = com_google_android_gms_internal_zzey.zzeX();
        zzfj com_google_android_gms_internal_zzfj = zzeX != null ? new zzfj(zzeX) : null;
        String str = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            str = zzeh.zzeO().zza(Thread.currentThread().getStackTrace(), applicationContext.getPackageName());
        }
        return new zzdy(7, time, networkExtrasBundle, gender, unmodifiableList, isTestDevice, zzfa, manualImpressionsEnabled, publisherProvidedId, com_google_android_gms_internal_zzfj, location, contentUrl, com_google_android_gms_internal_zzey.zzeZ(), com_google_android_gms_internal_zzey.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(com_google_android_gms_internal_zzey.zzfb())), com_google_android_gms_internal_zzey.zzeW(), str, com_google_android_gms_internal_zzey.isDesignedForFamilies());
    }
}
