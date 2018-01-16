package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.AppMeasurement.zzb;
import com.google.android.gms.measurement.AppMeasurement.zzc;
import com.google.android.gms.tagmanager.zzbb.zza;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

final class zzae {
    private static volatile DynamiteModule zzbDW;
    private static volatile zzbc zzbDX;
    private static final Map<String, CustomTagProvider> zzbDY = new HashMap();
    private static final Map<String, CustomVariableProvider> zzbDZ = new HashMap();

    class AnonymousClass1 extends zza {
        final /* synthetic */ AppMeasurement zzbEa;

        AnonymousClass1(AppMeasurement appMeasurement) {
            this.zzbEa = appMeasurement;
        }

        public Map<String, Object> zzPd() {
            return this.zzbEa.zzaE(true);
        }

        public void zza(final zzaz com_google_android_gms_tagmanager_zzaz) {
            this.zzbEa.zza(new zzc(this) {
                public void zzc(String str, String str2, Bundle bundle, long j) {
                    try {
                        com_google_android_gms_tagmanager_zzaz.zzc(str, str2, bundle, j);
                    } catch (Throwable e) {
                        throw new IllegalStateException(e);
                    }
                }
            });
        }

        public void zza(final zzba com_google_android_gms_tagmanager_zzba) {
            this.zzbEa.zza(new zzb(this) {
                public void zzb(String str, String str2, Bundle bundle, long j) {
                    try {
                        com_google_android_gms_tagmanager_zzba.zzb(str, str2, bundle, j);
                    } catch (Throwable e) {
                        throw new IllegalStateException(e);
                    }
                }
            });
        }

        public void zza(String str, String str2, Bundle bundle, long j) {
            this.zzbEa.zza(str, str2, bundle, j);
        }
    }

    private zzae() {
    }

    static zzay zzPb() {
        return new zzay.zza() {
            public void zzf(String str, Map map) {
                if (zzae.zzbDY.containsKey(str)) {
                    zzae.zzbDY.get(str);
                    return;
                }
                zzae.zzbDY.put(str, (CustomTagProvider) zzae.zzc(str, CustomTagProvider.class));
            }

            public String zzg(String str, Map map) {
                CustomVariableProvider customVariableProvider;
                if (zzae.zzbDZ.containsKey(str)) {
                    customVariableProvider = (CustomVariableProvider) zzae.zzbDZ.get(str);
                } else {
                    customVariableProvider = (CustomVariableProvider) zzae.zzc(str, CustomVariableProvider.class);
                    zzae.zzbDZ.put(str, customVariableProvider);
                }
                return customVariableProvider != null ? customVariableProvider.getValue(map) : null;
            }
        };
    }

    static void zza(Intent intent, Context context) {
        zzbc zzbF = zzbF(context);
        synchronized (zzae.class) {
            try {
                zzbF.previewIntent(intent, zze.zzA(context), zze.zzA(zzbDW.zzBd()), zzbH(context), zzPb());
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
    }

    static IBinder zzbD(Context context) {
        try {
            return zzbd.zza.asInterface(zzbG(context).zzdX("com.google.android.gms.tagmanager.TagManagerServiceProviderImpl")).getService(zze.zzA(context), zzbH(context), zzPb()).asBinder();
        } catch (Throwable e) {
            throw new IllegalStateException(e);
        } catch (Throwable e2) {
            throw new RuntimeException(e2);
        }
    }

    static void zzbE(Context context) {
        zzbc zzbF = zzbF(context);
        synchronized (zzae.class) {
            try {
                zzbF.initialize(zze.zzA(context), zzbH(context), zzPb());
            } catch (Throwable e) {
                throw new IllegalStateException(e);
            }
        }
    }

    private static zzbc zzbF(Context context) {
        zzbc com_google_android_gms_tagmanager_zzbc = zzbDX;
        if (com_google_android_gms_tagmanager_zzbc == null) {
            synchronized (zzae.class) {
                com_google_android_gms_tagmanager_zzbc = zzbDX;
                if (com_google_android_gms_tagmanager_zzbc == null) {
                    try {
                        com_google_android_gms_tagmanager_zzbc = zzbc.zza.asInterface(zzbG(context).zzdX("com.google.android.gms.tagmanager.TagManagerApiImpl"));
                        zzbDX = com_google_android_gms_tagmanager_zzbc;
                    } catch (Throwable e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
        return com_google_android_gms_tagmanager_zzbc;
    }

    private static DynamiteModule zzbG(Context context) throws DynamiteModule.zza {
        DynamiteModule dynamiteModule = zzbDW;
        if (dynamiteModule == null) {
            synchronized (zzae.class) {
                dynamiteModule = zzbDW;
                if (zzbDW == null) {
                    dynamiteModule = DynamiteModule.zza(context, DynamiteModule.zzaQy, ModuleDescriptor.MODULE_ID);
                    zzbDW = dynamiteModule;
                }
            }
        }
        return dynamiteModule;
    }

    private static zzbb zzbH(Context context) {
        return new AnonymousClass1(AppMeasurement.getInstance(context));
    }

    private static Object zzc(String str, Class<?> cls) {
        Object obj = null;
        Object obj2 = null;
        try {
            Class cls2 = Class.forName(str);
            for (Object equals : cls2.getInterfaces()) {
                if (equals.equals(cls)) {
                    obj = 1;
                    break;
                }
            }
            if (obj == null) {
                String valueOf = String.valueOf(cls.getCanonicalName());
                Log.e("GoogleTagManagerAPI", new StringBuilder((String.valueOf(str).length() + 30) + String.valueOf(valueOf).length()).append(str).append(" doesn't implement ").append(valueOf).append(" interface.").toString());
            } else {
                try {
                    obj2 = cls2.getConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (NoSuchMethodException e) {
                    Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" doesn't have a valid no-arg constructor"));
                } catch (SecurityException e2) {
                    Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" doesn't have an accessible no-arg constructor"));
                } catch (InvocationTargetException e3) {
                    Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" construction threw an exception."));
                } catch (InstantiationException e4) {
                    Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" is an abstract class."));
                } catch (IllegalAccessException e5) {
                    Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" doesn't have an accessible no-arg constructor"));
                }
            }
        } catch (ClassNotFoundException e6) {
            Log.e("GoogleTagManagerAPI", String.valueOf(str).concat(" can't be found in the application."));
        }
        return obj2;
    }
}
