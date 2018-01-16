package com.google.firebase;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zza;
import com.google.android.gms.common.util.zzs;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.internal.zzbqj;
import com.google.android.gms.internal.zzbqk;
import com.google.android.gms.internal.zzbql;
import com.google.android.gms.internal.zzbqm;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class FirebaseApp {
    private static final List<String> zzbUA = Arrays.asList(new String[]{"com.google.android.gms.measurement.AppMeasurement"});
    private static final List<String> zzbUB = Arrays.asList(new String[0]);
    private static final Set<String> zzbUC = Collections.emptySet();
    private static final List<String> zzbUy = Arrays.asList(new String[]{"com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId"});
    private static final List<String> zzbUz = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
    static final Map<String, FirebaseApp> zzbha = new ArrayMap();
    private static final Object zztU = new Object();
    private final String mName;
    private final FirebaseOptions zzbUD;
    private final AtomicBoolean zzbUE = new AtomicBoolean(false);
    private final AtomicBoolean zzbUF = new AtomicBoolean();
    private final List<Object> zzbUG = new CopyOnWriteArrayList();
    private final List<Object> zzbUH = new CopyOnWriteArrayList();
    private final List<Object> zzbUI = new CopyOnWriteArrayList();
    private zzbql zzbUJ;
    private final Context zzvZ;

    @TargetApi(24)
    private static class zzc extends BroadcastReceiver {
        private static AtomicReference<zzc> zzbUK = new AtomicReference();
        private final Context zzvZ;

        public zzc(Context context) {
            this.zzvZ = context;
        }

        private static void zzbR(Context context) {
            if (zzbUK.get() == null) {
                BroadcastReceiver com_google_firebase_FirebaseApp_zzc = new zzc(context);
                if (zzbUK.compareAndSet(null, com_google_firebase_FirebaseApp_zzc)) {
                    context.registerReceiver(com_google_firebase_FirebaseApp_zzc, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void onReceive(Context context, Intent intent) {
            synchronized (FirebaseApp.zztU) {
                for (FirebaseApp zza : FirebaseApp.zzbha.values()) {
                    zza.zzTw();
                }
            }
            unregister();
        }

        public void unregister() {
            this.zzvZ.unregisterReceiver(this);
        }
    }

    protected FirebaseApp(Context context, String str, FirebaseOptions firebaseOptions) {
        this.zzvZ = (Context) zzac.zzw(context);
        this.mName = zzac.zzdv(str);
        this.zzbUD = (FirebaseOptions) zzac.zzw(firebaseOptions);
    }

    public static FirebaseApp getInstance() {
        FirebaseApp firebaseApp;
        synchronized (zztU) {
            firebaseApp = (FirebaseApp) zzbha.get("[DEFAULT]");
            if (firebaseApp == null) {
                String valueOf = String.valueOf(zzt.zzyK());
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 116).append("Default FirebaseApp is not initialized in this process ").append(valueOf).append(". Make sure to call FirebaseApp.initializeApp(Context) first.").toString());
            }
        }
        return firebaseApp;
    }

    public static FirebaseApp getInstance(String str) {
        FirebaseApp firebaseApp;
        synchronized (zztU) {
            firebaseApp = (FirebaseApp) zzbha.get(zzit(str));
            if (firebaseApp != null) {
            } else {
                String str2;
                Iterable zzTv = zzTv();
                if (zzTv.isEmpty()) {
                    str2 = "";
                } else {
                    String str3 = "Available app names: ";
                    str2 = String.valueOf(TextUtils.join(", ", zzTv));
                    str2 = str2.length() != 0 ? str3.concat(str2) : new String(str3);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", new Object[]{str, str2}));
            }
        }
        return firebaseApp;
    }

    public static FirebaseApp initializeApp(Context context) {
        FirebaseApp instance;
        synchronized (zztU) {
            if (zzbha.containsKey("[DEFAULT]")) {
                instance = getInstance();
            } else {
                FirebaseOptions fromResource = FirebaseOptions.fromResource(context);
                if (fromResource == null) {
                    instance = null;
                } else {
                    instance = initializeApp(context, fromResource);
                }
            }
        }
        return instance;
    }

    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions) {
        return initializeApp(context, firebaseOptions, "[DEFAULT]");
    }

    public static FirebaseApp initializeApp(Context context, FirebaseOptions firebaseOptions, String str) {
        FirebaseApp firebaseApp;
        zzbqk zzbZ = zzbqk.zzbZ(context);
        zzbQ(context);
        String zzit = zzit(str);
        if (context.getApplicationContext() != null) {
            Object applicationContext = context.getApplicationContext();
        }
        synchronized (zztU) {
            zzac.zza(!zzbha.containsKey(zzit), new StringBuilder(String.valueOf(zzit).length() + 33).append("FirebaseApp name ").append(zzit).append(" already exists!").toString());
            zzac.zzb(applicationContext, (Object) "Application context cannot be null.");
            firebaseApp = new FirebaseApp(applicationContext, zzit, firebaseOptions);
            zzbha.put(zzit, firebaseApp);
        }
        zzbZ.zzg(firebaseApp);
        firebaseApp.zza(FirebaseApp.class, firebaseApp, zzbUy);
        if (firebaseApp.zzTt()) {
            firebaseApp.zza(FirebaseApp.class, firebaseApp, zzbUz);
            firebaseApp.zza(Context.class, firebaseApp.getApplicationContext(), zzbUA);
        }
        return firebaseApp;
    }

    private void zzTs() {
        zzac.zza(!this.zzbUF.get(), "FirebaseApp was deleted");
    }

    private static List<String> zzTv() {
        Collection com_google_android_gms_common_util_zza = new zza();
        synchronized (zztU) {
            for (FirebaseApp name : zzbha.values()) {
                com_google_android_gms_common_util_zza.add(name.getName());
            }
            zzbqk zzaap = zzbqk.zzaap();
            if (zzaap != null) {
                com_google_android_gms_common_util_zza.addAll(zzaap.zzaaq());
            }
        }
        List<String> arrayList = new ArrayList(com_google_android_gms_common_util_zza);
        Collections.sort(arrayList);
        return arrayList;
    }

    private void zzTw() {
        zza(FirebaseApp.class, this, zzbUy);
        if (zzTt()) {
            zza(FirebaseApp.class, this, zzbUz);
            zza(Context.class, this.zzvZ, zzbUA);
        }
    }

    private <T> void zza(Class<T> cls, T t, Iterable<String> iterable) {
        String valueOf;
        boolean isDeviceProtectedStorage = ContextCompat.isDeviceProtectedStorage(this.zzvZ);
        if (isDeviceProtectedStorage) {
            zzc.zzbR(this.zzvZ);
        }
        for (String valueOf2 : iterable) {
            if (isDeviceProtectedStorage) {
                try {
                    if (!zzbUB.contains(valueOf2)) {
                    }
                } catch (ClassNotFoundException e) {
                    if (zzbUC.contains(valueOf2)) {
                        throw new IllegalStateException(String.valueOf(valueOf2).concat(" is missing, but is required. Check if it has been removed by Proguard."));
                    }
                    String.valueOf(valueOf2).concat(" is not linked. Skipping initialization.");
                } catch (NoSuchMethodException e2) {
                    throw new IllegalStateException(String.valueOf(valueOf2).concat("#getInstance has been removed by Proguard. Add keep rule to prevent it."));
                } catch (Throwable e3) {
                    Log.wtf("FirebaseApp", "Firebase API initialization failure.", e3);
                } catch (Throwable e4) {
                    String str = "FirebaseApp";
                    String str2 = "Failed to initialize ";
                    valueOf2 = String.valueOf(valueOf2);
                    Log.wtf(str, valueOf2.length() != 0 ? str2.concat(valueOf2) : new String(str2), e4);
                }
            }
            Method method = Class.forName(valueOf2).getMethod("getInstance", new Class[]{cls});
            int modifiers = method.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                method.invoke(null, new Object[]{t});
            }
        }
    }

    public static void zzaQ(boolean z) {
        synchronized (zztU) {
            Iterator it = new ArrayList(zzbha.values()).iterator();
            while (it.hasNext()) {
                FirebaseApp firebaseApp = (FirebaseApp) it.next();
                if (firebaseApp.zzbUE.get()) {
                    firebaseApp.zzaR(z);
                }
            }
        }
    }

    private void zzaR(boolean z) {
        Iterator it = this.zzbUH.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    @TargetApi(14)
    private static void zzbQ(Context context) {
        if (zzs.zzyA() && (context.getApplicationContext() instanceof Application)) {
            zzbqj.zza((Application) context.getApplicationContext());
        }
    }

    private static String zzit(String str) {
        return str.trim();
    }

    public boolean equals(Object obj) {
        return !(obj instanceof FirebaseApp) ? false : this.mName.equals(((FirebaseApp) obj).getName());
    }

    public Context getApplicationContext() {
        zzTs();
        return this.zzvZ;
    }

    public String getName() {
        zzTs();
        return this.mName;
    }

    public FirebaseOptions getOptions() {
        zzTs();
        return this.zzbUD;
    }

    public int hashCode() {
        return this.mName.hashCode();
    }

    public String toString() {
        return zzaa.zzv(this).zzg("name", this.mName).zzg("options", this.zzbUD).toString();
    }

    public boolean zzTt() {
        return "[DEFAULT]".equals(getName());
    }

    public String zzTu() {
        String valueOf = String.valueOf(com.google.android.gms.common.util.zzc.zzs(getName().getBytes()));
        String valueOf2 = String.valueOf(com.google.android.gms.common.util.zzc.zzs(getOptions().getApplicationId().getBytes()));
        return new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length()).append(valueOf).append("+").append(valueOf2).toString();
    }

    public void zza(zzbql com_google_android_gms_internal_zzbql) {
        this.zzbUJ = (zzbql) zzac.zzw(com_google_android_gms_internal_zzbql);
    }

    public void zza(zzbqm com_google_android_gms_internal_zzbqm) {
        Iterator it = this.zzbUG.iterator();
        int i = 0;
        while (it.hasNext()) {
            it.next();
            i++;
        }
        String.format("Notified %d auth state listeners.", new Object[]{Integer.valueOf(i)});
    }
}
