package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.internal.zzsw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class HitBuilders {

    protected static class HitBuilder<T extends HitBuilder> {
        private Map<String, String> zzaaM = new HashMap();
        ProductAction zzaaN;
        Map<String, List<Product>> zzaaO = new HashMap();
        List<Promotion> zzaaP = new ArrayList();
        List<Product> zzaaQ = new ArrayList();

        protected HitBuilder() {
        }

        public T addImpression(Product product, String str) {
            if (product == null) {
                zzsw.zzbe("product should be non-null");
            } else {
                Object obj;
                if (str == null) {
                    obj = "";
                }
                if (!this.zzaaO.containsKey(obj)) {
                    this.zzaaO.put(obj, new ArrayList());
                }
                ((List) this.zzaaO.get(obj)).add(product);
            }
            return this;
        }

        public T addProduct(Product product) {
            if (product == null) {
                zzsw.zzbe("product should be non-null");
            } else {
                this.zzaaQ.add(product);
            }
            return this;
        }

        public T addPromotion(Promotion promotion) {
            if (promotion == null) {
                zzsw.zzbe("promotion should be non-null");
            } else {
                this.zzaaP.add(promotion);
            }
            return this;
        }

        public Map<String, String> build() {
            Map<String, String> hashMap = new HashMap(this.zzaaM);
            if (this.zzaaN != null) {
                hashMap.putAll(this.zzaaN.build());
            }
            int i = 1;
            for (Promotion zzbL : this.zzaaP) {
                hashMap.putAll(zzbL.zzbL(zzc.zzar(i)));
                i++;
            }
            i = 1;
            for (Product zzbL2 : this.zzaaQ) {
                hashMap.putAll(zzbL2.zzbL(zzc.zzap(i)));
                i++;
            }
            int i2 = 1;
            for (Entry entry : this.zzaaO.entrySet()) {
                List<Product> list = (List) entry.getValue();
                String zzau = zzc.zzau(i2);
                int i3 = 1;
                for (Product product : list) {
                    String valueOf = String.valueOf(zzau);
                    String valueOf2 = String.valueOf(zzc.zzat(i3));
                    hashMap.putAll(product.zzbL(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i3++;
                }
                if (!TextUtils.isEmpty((CharSequence) entry.getKey())) {
                    String valueOf3 = String.valueOf(zzau);
                    String valueOf4 = String.valueOf("nm");
                    hashMap.put(valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3), (String) entry.getKey());
                }
                i2++;
            }
            return hashMap;
        }

        public final T set(String str, String str2) {
            if (str != null) {
                this.zzaaM.put(str, str2);
            } else {
                zzsw.zzbe("HitBuilder.set() called with a null paramName.");
            }
            return this;
        }

        public final T setAll(Map<String, String> map) {
            if (map != null) {
                this.zzaaM.putAll(new HashMap(map));
            }
            return this;
        }

        public T setProductAction(ProductAction productAction) {
            this.zzaaN = productAction;
            return this;
        }
    }

    public static class ScreenViewBuilder extends HitBuilder<ScreenViewBuilder> {
        public ScreenViewBuilder() {
            set("&t", "screenview");
        }

        public /* bridge */ /* synthetic */ Map build() {
            return super.build();
        }
    }
}
