package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.analytics.ecommerce.Product;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zzf;
import com.google.android.gms.internal.zzaze.zzc;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class zzbez extends zzazv {
    private static final String ID = zzag.UNIVERSAL_ANALYTICS.toString();
    private static final List<String> zzbGY = Arrays.asList(new String[]{"detail", "checkout", "checkout_option", "click", "add", "remove", "purchase", "refund"});
    private static final Pattern zzbGZ = Pattern.compile("dimension(\\d+)");
    private static final Pattern zzbHa = Pattern.compile("metric(\\d+)");
    private static final Set<String> zzbJN = zzf.zza("", "0", "false");
    private static final Map<String, String> zzbJO = zzf.zza("transactionId", "&ti", "transactionAffiliation", "&ta", "transactionTax", "&tt", "transactionShipping", "&ts", "transactionTotal", "&tr", "transactionCurrency", "&cu");
    private static final Map<String, String> zzbJP = zzf.zza("name", "&in", "sku", "&ic", "category", "&iv", "price", "&ip", "quantity", "&iq", "currency", "&cu");
    private final zzc zzbIr;
    private final zzazq zzbJQ;
    private Map<String, Object> zzbJR;

    public zzbez(Context context, zzc com_google_android_gms_internal_zzaze_zzc) {
        this(new zzazq(context), com_google_android_gms_internal_zzaze_zzc);
    }

    public zzbez(zzazq com_google_android_gms_internal_zzazq, zzc com_google_android_gms_internal_zzaze_zzc) {
        this.zzbIr = com_google_android_gms_internal_zzaze_zzc;
        this.zzbJQ = com_google_android_gms_internal_zzazq;
    }

    private Double zzV(Object obj) {
        String str;
        String valueOf;
        if (obj instanceof String) {
            try {
                return Double.valueOf((String) obj);
            } catch (NumberFormatException e) {
                str = "Cannot convert the object to Double: ";
                valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        } else if (obj instanceof Integer) {
            return Double.valueOf(((Integer) obj).doubleValue());
        } else {
            if (obj instanceof Double) {
                return (Double) obj;
            }
            str = "Cannot convert the object to Double: ";
            valueOf = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    private Integer zzW(Object obj) {
        String str;
        String valueOf;
        if (obj instanceof String) {
            try {
                return Integer.valueOf((String) obj);
            } catch (NumberFormatException e) {
                str = "Cannot convert the object to Integer: ";
                valueOf = String.valueOf(e.getMessage());
                throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        } else if (obj instanceof Double) {
            return Integer.valueOf(((Double) obj).intValue());
        } else {
            if (obj instanceof Integer) {
                return (Integer) obj;
            }
            str = "Cannot convert the object to Integer: ";
            valueOf = String.valueOf(obj.toString());
            throw new RuntimeException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
    }

    private void zza(Tracker tracker, zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        tracker.send(zzi(com_google_android_gms_internal_zzbfw_));
    }

    private void zza(Tracker tracker, zzbfw<?> com_google_android_gms_internal_zzbfw_, zzbfw<?> com_google_android_gms_internal_zzbfw_2, zzbfw<?> com_google_android_gms_internal_zzbfw_3) {
        String str = (String) this.zzbJR.get("transactionId");
        if (str == null) {
            zzayx.e("Cannot find transactionId in data layer.");
            return;
        }
        List<Map> linkedList = new LinkedList();
        try {
            Map zzi = zzi(com_google_android_gms_internal_zzbfw_);
            zzi.put("&t", "transaction");
            for (Entry entry : zzj(com_google_android_gms_internal_zzbfw_2).entrySet()) {
                String str2 = (String) this.zzbJR.get(entry.getKey());
                if (str2 != null) {
                    zzi.put((String) entry.getValue(), str2);
                }
            }
            linkedList.add(zzi);
            List<Map> zzhS = zzhS("transactionProducts");
            if (zzhS != null) {
                for (Map map : zzhS) {
                    if (map.get("name") == null) {
                        zzayx.e("Unable to send transaction item hit due to missing 'name' field.");
                        return;
                    }
                    Map zzi2 = zzi(com_google_android_gms_internal_zzbfw_);
                    zzi2.put("&t", "item");
                    zzi2.put("&ti", str);
                    for (Entry entry2 : zzk(com_google_android_gms_internal_zzbfw_3).entrySet()) {
                        Object obj = map.get(entry2.getKey());
                        if (obj != null) {
                            zzi2.put((String) entry2.getValue(), obj.toString());
                        }
                    }
                    linkedList.add(zzi2);
                }
            }
            for (Map send : linkedList) {
                tracker.send(send);
            }
        } catch (Throwable e) {
            zzayx.zzb("Unable to send transaction", e);
        }
    }

    private Promotion zzap(Map<String, String> map) {
        Promotion promotion = new Promotion();
        String str = (String) map.get("id");
        if (str != null) {
            promotion.setId(String.valueOf(str));
        }
        str = (String) map.get("name");
        if (str != null) {
            promotion.setName(String.valueOf(str));
        }
        str = (String) map.get("creative");
        if (str != null) {
            promotion.setCreative(String.valueOf(str));
        }
        str = (String) map.get("position");
        if (str != null) {
            promotion.setPosition(String.valueOf(str));
        }
        return promotion;
    }

    private Product zzaq(Map<String, Object> map) {
        String str;
        Product product = new Product();
        Object obj = map.get("id");
        if (obj != null) {
            product.setId(String.valueOf(obj));
        }
        obj = map.get("name");
        if (obj != null) {
            product.setName(String.valueOf(obj));
        }
        obj = map.get("brand");
        if (obj != null) {
            product.setBrand(String.valueOf(obj));
        }
        obj = map.get("category");
        if (obj != null) {
            product.setCategory(String.valueOf(obj));
        }
        obj = map.get("variant");
        if (obj != null) {
            product.setVariant(String.valueOf(obj));
        }
        obj = map.get("coupon");
        if (obj != null) {
            product.setCouponCode(String.valueOf(obj));
        }
        obj = map.get("position");
        if (obj != null) {
            product.setPosition(zzW(obj).intValue());
        }
        obj = map.get("price");
        if (obj != null) {
            product.setPrice(zzV(obj).doubleValue());
        }
        obj = map.get("quantity");
        if (obj != null) {
            product.setQuantity(zzW(obj).intValue());
        }
        for (String str2 : map.keySet()) {
            String str22;
            Matcher matcher = zzbGZ.matcher(str22);
            if (matcher.matches()) {
                try {
                    product.setCustomDimension(Integer.parseInt(matcher.group(1)), String.valueOf(map.get(str22)));
                } catch (NumberFormatException e) {
                    str = "illegal number in custom dimension value: ";
                    str22 = String.valueOf(str22);
                    zzayx.zzbe(str22.length() != 0 ? str.concat(str22) : new String(str));
                }
            } else {
                matcher = zzbHa.matcher(str22);
                if (matcher.matches()) {
                    try {
                        product.setCustomMetric(Integer.parseInt(matcher.group(1)), zzW(map.get(str22)).intValue());
                    } catch (NumberFormatException e2) {
                        str = "illegal number in custom metric value: ";
                        str22 = String.valueOf(str22);
                        zzayx.zzbe(str22.length() != 0 ? str.concat(str22) : new String(str));
                    }
                }
            }
        }
        return product;
    }

    private void zzb(Tracker tracker, zzbfw<?> com_google_android_gms_internal_zzbfw_, zzbfw<?> com_google_android_gms_internal_zzbfw_2, zzbfw<?> com_google_android_gms_internal_zzbfw_3) {
        String str;
        ScreenViewBuilder screenViewBuilder = new ScreenViewBuilder();
        Map zzi = zzi(com_google_android_gms_internal_zzbfw_);
        screenViewBuilder.setAll(zzi);
        Object zzl = zzazu.zza(com_google_android_gms_internal_zzbfw_2) ? this.zzbJR.get("ecommerce") : zzbgf.zzl(zzbgf.zzm(com_google_android_gms_internal_zzbfw_3));
        if (zzl instanceof Map) {
            List<Map> list;
            Map map = (Map) zzl;
            String str2 = (String) zzi.get("&cu");
            if (str2 == null) {
                str2 = (String) map.get("currencyCode");
            }
            if (str2 != null) {
                screenViewBuilder.set("&cu", str2);
            }
            Object obj = map.get("impressions");
            if (obj instanceof List) {
                for (Map zzi2 : (List) obj) {
                    try {
                        screenViewBuilder.addImpression(zzaq(zzi2), (String) zzi2.get("list"));
                    } catch (RuntimeException e) {
                        String str3 = "Failed to extract a product from event data. ";
                        str2 = String.valueOf(e.getMessage());
                        zzayx.e(str2.length() != 0 ? str3.concat(str2) : new String(str3));
                    }
                }
            }
            List list2 = null;
            if (map.containsKey("promoClick")) {
                list2 = (List) ((Map) map.get("promoClick")).get("promotions");
            } else if (map.containsKey("promoView")) {
                list2 = (List) ((Map) map.get("promoView")).get("promotions");
            }
            if (r1 != null) {
                for (Map zzi22 : r1) {
                    try {
                        screenViewBuilder.addPromotion(zzap(zzi22));
                    } catch (RuntimeException e2) {
                        str = "Failed to extract a promotion from event data. ";
                        str2 = String.valueOf(e2.getMessage());
                        zzayx.e(str2.length() != 0 ? str.concat(str2) : new String(str));
                    }
                }
                if (map.containsKey("promoClick")) {
                    screenViewBuilder.set("&promoa", "click");
                    obj = null;
                    if (obj != null) {
                        for (String str22 : zzbGY) {
                            if (map.containsKey(str22)) {
                                map = (Map) map.get(str22);
                                list = (List) map.get("products");
                                if (list != null) {
                                    for (Map zzaq : list) {
                                        try {
                                            screenViewBuilder.addProduct(zzaq(zzaq));
                                        } catch (RuntimeException e3) {
                                            str = "Failed to extract a product from event data. ";
                                            String valueOf = String.valueOf(e3.getMessage());
                                            zzayx.e(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                                        }
                                    }
                                }
                                try {
                                    screenViewBuilder.setProductAction(map.containsKey("actionField") ? zzj(str22, (Map) map.get("actionField")) : new ProductAction(str22));
                                } catch (RuntimeException e4) {
                                    str22 = "Failed to extract a product action from event data. ";
                                    String valueOf2 = String.valueOf(e4.getMessage());
                                    zzayx.e(valueOf2.length() != 0 ? str22.concat(valueOf2) : new String(str22));
                                }
                            }
                        }
                    }
                } else {
                    screenViewBuilder.set("&promoa", "view");
                }
            }
            int i = 1;
            if (obj != null) {
                for (String str222 : zzbGY) {
                    if (map.containsKey(str222)) {
                        map = (Map) map.get(str222);
                        list = (List) map.get("products");
                        if (list != null) {
                            while (r4.hasNext()) {
                                screenViewBuilder.addProduct(zzaq(zzaq));
                            }
                        }
                        if (map.containsKey("actionField")) {
                        }
                        screenViewBuilder.setProductAction(map.containsKey("actionField") ? zzj(str222, (Map) map.get("actionField")) : new ProductAction(str222));
                    }
                }
            }
        }
        tracker.send(screenViewBuilder.build());
    }

    private Map<String, String> zzh(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        zzac.zzw(com_google_android_gms_internal_zzbfw_);
        zzac.zzas(com_google_android_gms_internal_zzbfw_ instanceof zzbgc);
        Map<String, String> linkedHashMap = new LinkedHashMap();
        Object zzl = zzbgf.zzl(zzbgf.zzm(com_google_android_gms_internal_zzbfw_));
        zzac.zzar(zzl instanceof Map);
        for (Entry entry : ((Map) zzl).entrySet()) {
            linkedHashMap.put(entry.getKey().toString(), entry.getValue().toString());
        }
        return linkedHashMap;
    }

    private List<Map<String, Object>> zzhS(String str) {
        Object obj = this.zzbJR.get(str);
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List<Map<String, Object>> list = (List) obj;
            for (Object obj2 : list) {
                if (!(obj2 instanceof Map)) {
                    throw new IllegalArgumentException("Each element of transactionProducts should be of type Map.");
                }
            }
            return list;
        }
        throw new IllegalArgumentException("transactionProducts should be of type List.");
    }

    private Map<String, String> zzi(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        Map<String, String> zzh = zzh(com_google_android_gms_internal_zzbfw_);
        String str = (String) zzh.get("&aip");
        if (str != null && zzbJN.contains(str.toLowerCase())) {
            zzh.remove("&aip");
        }
        return zzh;
    }

    private ProductAction zzj(String str, Map<String, Object> map) {
        ProductAction productAction = new ProductAction(str);
        Object obj = map.get("id");
        if (obj != null) {
            productAction.setTransactionId(String.valueOf(obj));
        }
        obj = map.get("affiliation");
        if (obj != null) {
            productAction.setTransactionAffiliation(String.valueOf(obj));
        }
        obj = map.get("coupon");
        if (obj != null) {
            productAction.setTransactionCouponCode(String.valueOf(obj));
        }
        obj = map.get("list");
        if (obj != null) {
            productAction.setProductActionList(String.valueOf(obj));
        }
        obj = map.get("option");
        if (obj != null) {
            productAction.setCheckoutOptions(String.valueOf(obj));
        }
        obj = map.get("revenue");
        if (obj != null) {
            productAction.setTransactionRevenue(zzV(obj).doubleValue());
        }
        obj = map.get("tax");
        if (obj != null) {
            productAction.setTransactionTax(zzV(obj).doubleValue());
        }
        obj = map.get("shipping");
        if (obj != null) {
            productAction.setTransactionShipping(zzV(obj).doubleValue());
        }
        obj = map.get("step");
        if (obj != null) {
            productAction.setCheckoutStep(zzW(obj).intValue());
        }
        return productAction;
    }

    private Map<String, String> zzj(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        return com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV ? zzbJO : zzh(com_google_android_gms_internal_zzbfw_);
    }

    private Map<String, String> zzk(zzbfw<?> com_google_android_gms_internal_zzbfw_) {
        return com_google_android_gms_internal_zzbfw_ == zzbga.zzbKV ? zzbJP : zzh(com_google_android_gms_internal_zzbfw_);
    }

    protected zzbfw<?> zza(zzazg com_google_android_gms_internal_zzazg, zzbfw<?>... com_google_android_gms_internal_zzbfw_Arr) {
        boolean z = false;
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr != null);
        zzac.zzas(com_google_android_gms_internal_zzbfw_Arr.length >= 1);
        try {
            this.zzbJR = zzbgf.zzP(this.zzbIr.zzQK().zzQq());
            zzbfw com_google_android_gms_internal_zzbfw = com_google_android_gms_internal_zzbfw_Arr[0];
            zzbfw com_google_android_gms_internal_zzbfx = com_google_android_gms_internal_zzbfw_Arr.length > 1 ? com_google_android_gms_internal_zzbfw_Arr[1] : new zzbfx(Boolean.valueOf(true));
            zzbfw com_google_android_gms_internal_zzbfx2 = com_google_android_gms_internal_zzbfw_Arr.length > 2 ? com_google_android_gms_internal_zzbfw_Arr[2] : new zzbfx(Boolean.valueOf(false));
            zzbfw com_google_android_gms_internal_zzbfw2 = com_google_android_gms_internal_zzbfw_Arr.length > 3 ? com_google_android_gms_internal_zzbfw_Arr[3] : zzbga.zzbKV;
            zzbfw com_google_android_gms_internal_zzbfw3 = com_google_android_gms_internal_zzbfw_Arr.length > 4 ? com_google_android_gms_internal_zzbfw_Arr[4] : zzbga.zzbKV;
            zzbfw com_google_android_gms_internal_zzbfx3 = com_google_android_gms_internal_zzbfw_Arr.length > 5 ? com_google_android_gms_internal_zzbfw_Arr[5] : new zzbfx(Boolean.valueOf(false));
            zzbfw com_google_android_gms_internal_zzbfx4 = com_google_android_gms_internal_zzbfw_Arr.length > 6 ? com_google_android_gms_internal_zzbfw_Arr[6] : new zzbfx(Boolean.valueOf(false));
            zzbfw com_google_android_gms_internal_zzbfw4 = com_google_android_gms_internal_zzbfw_Arr.length > 7 ? com_google_android_gms_internal_zzbfw_Arr[7] : zzbga.zzbKV;
            zzbfw com_google_android_gms_internal_zzbfx5 = com_google_android_gms_internal_zzbfw_Arr.length > 8 ? com_google_android_gms_internal_zzbfw_Arr[8] : new zzbfx(Boolean.valueOf(false));
            zzac.zzas(com_google_android_gms_internal_zzbfw instanceof zzbgc);
            boolean z2 = com_google_android_gms_internal_zzbfw2 == zzbga.zzbKV || (com_google_android_gms_internal_zzbfw2 instanceof zzbgc);
            zzac.zzas(z2);
            z2 = com_google_android_gms_internal_zzbfw3 == zzbga.zzbKV || (com_google_android_gms_internal_zzbfw3 instanceof zzbgc);
            zzac.zzas(z2);
            if (com_google_android_gms_internal_zzbfw4 == zzbga.zzbKV || (com_google_android_gms_internal_zzbfw4 instanceof zzbgc)) {
                z = true;
            }
            zzac.zzas(z);
            Tracker zzhw = this.zzbJQ.zzhw("_GTM_DEFAULT_TRACKER_");
            zzhw.enableAdvertisingIdCollection(zzazu.zza(com_google_android_gms_internal_zzbfx5));
            if (zzazu.zza(com_google_android_gms_internal_zzbfx3)) {
                zzb(zzhw, com_google_android_gms_internal_zzbfw, com_google_android_gms_internal_zzbfx4, com_google_android_gms_internal_zzbfw4);
            } else if (zzazu.zza(com_google_android_gms_internal_zzbfx)) {
                zza(zzhw, com_google_android_gms_internal_zzbfw);
            } else if (zzazu.zza(com_google_android_gms_internal_zzbfx2)) {
                zza(zzhw, com_google_android_gms_internal_zzbfw, com_google_android_gms_internal_zzbfw2, com_google_android_gms_internal_zzbfw3);
            } else {
                zzayx.zzbe("Ignoring unknown tag.");
            }
            this.zzbJR = null;
            return zzbga.zzbKV;
        } catch (Throwable th) {
            this.zzbJR = null;
        }
    }
}
