package com.google.android.gms.internal;

import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.analytics.zzf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public final class zzrk extends zzf<zzrk> {
    private ProductAction zzaaN;
    private final Map<String, List<Product>> zzaaO = new HashMap();
    private final List<Promotion> zzaaP = new ArrayList();
    private final List<Product> zzaaQ = new ArrayList();

    public String toString() {
        Map hashMap = new HashMap();
        if (!this.zzaaQ.isEmpty()) {
            hashMap.put("products", this.zzaaQ);
        }
        if (!this.zzaaP.isEmpty()) {
            hashMap.put("promotions", this.zzaaP);
        }
        if (!this.zzaaO.isEmpty()) {
            hashMap.put("impressions", this.zzaaO);
        }
        hashMap.put("productAction", this.zzaaN);
        return zzf.zzj(hashMap);
    }

    public void zza(Product product, String str) {
        if (product != null) {
            Object obj;
            if (str == null) {
                obj = "";
            }
            if (!this.zzaaO.containsKey(obj)) {
                this.zzaaO.put(obj, new ArrayList());
            }
            ((List) this.zzaaO.get(obj)).add(product);
        }
    }

    public void zza(zzrk com_google_android_gms_internal_zzrk) {
        com_google_android_gms_internal_zzrk.zzaaQ.addAll(this.zzaaQ);
        com_google_android_gms_internal_zzrk.zzaaP.addAll(this.zzaaP);
        for (Entry entry : this.zzaaO.entrySet()) {
            String str = (String) entry.getKey();
            for (Product zza : (List) entry.getValue()) {
                com_google_android_gms_internal_zzrk.zza(zza, str);
            }
        }
        if (this.zzaaN != null) {
            com_google_android_gms_internal_zzrk.zzaaN = this.zzaaN;
        }
    }

    public /* synthetic */ void zzb(zzf com_google_android_gms_analytics_zzf) {
        zza((zzrk) com_google_android_gms_analytics_zzf);
    }

    public ProductAction zzmO() {
        return this.zzaaN;
    }

    public List<Product> zzmP() {
        return Collections.unmodifiableList(this.zzaaQ);
    }

    public Map<String, List<Product>> zzmQ() {
        return this.zzaaO;
    }

    public List<Promotion> zzmR() {
        return Collections.unmodifiableList(this.zzaaP);
    }
}
