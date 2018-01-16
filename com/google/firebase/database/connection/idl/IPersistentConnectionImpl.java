package com.google.firebase.database.connection.idl;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.firebase_database.ModuleDescriptor;
import com.google.android.gms.internal.zzblk;
import com.google.android.gms.internal.zzblm;
import com.google.android.gms.internal.zzbln;
import com.google.android.gms.internal.zzblq;
import com.google.android.gms.internal.zzblr;
import com.google.android.gms.internal.zzbls;
import com.google.android.gms.internal.zzblt;
import com.google.android.gms.internal.zzblu;
import com.google.android.gms.internal.zzbon;
import com.google.firebase.database.connection.idl.zzk.zza;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;

@DynamiteApi
public class IPersistentConnectionImpl extends zza {
    private zzblr zzcaY;

    class AnonymousClass2 implements zzblu {
        final /* synthetic */ zzm zzcba;

        AnonymousClass2(zzm com_google_firebase_database_connection_idl_zzm) {
            this.zzcba = com_google_firebase_database_connection_idl_zzm;
        }

        public void zzan(String str, String str2) {
            try {
                this.zzcba.zzan(str, str2);
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
    }

    class AnonymousClass3 extends zzl.zza {
        final /* synthetic */ zzblr.zza zzcbb;

        AnonymousClass3(zzblr.zza com_google_android_gms_internal_zzblr_zza) {
            this.zzcbb = com_google_android_gms_internal_zzblr_zza;
        }

        public void onDisconnect() {
            this.zzcbb.onDisconnect();
        }

        public void zzP(zzd com_google_android_gms_dynamic_zzd) {
            this.zzcbb.zzaw((Map) zze.zzE(com_google_android_gms_dynamic_zzd));
        }

        public void zzVP() {
            this.zzcbb.zzVP();
        }

        public void zza(List<String> list, zzd com_google_android_gms_dynamic_zzd, boolean z, long j) {
            this.zzcbb.zza(list, zze.zzE(com_google_android_gms_dynamic_zzd), z, IPersistentConnectionImpl.zzaG(j));
        }

        public void zza(List<String> list, List<zzn> list2, zzd com_google_android_gms_dynamic_zzd, long j) {
            List list3 = (List) zze.zzE(com_google_android_gms_dynamic_zzd);
            List arrayList = new ArrayList(list2.size());
            for (int i = 0; i < list2.size(); i++) {
                arrayList.add(zzn.zza((zzn) list2.get(i), list3.get(i)));
            }
            this.zzcbb.zza(list, arrayList, IPersistentConnectionImpl.zzaG(j));
        }

        public void zzaX(boolean z) {
            this.zzcbb.zzaX(z);
        }
    }

    class AnonymousClass4 implements zzblr.zza {
        final /* synthetic */ zzl zzcbc;

        AnonymousClass4(zzl com_google_firebase_database_connection_idl_zzl) {
            this.zzcbc = com_google_firebase_database_connection_idl_zzl;
        }

        public void onDisconnect() {
            try {
                this.zzcbc.onDisconnect();
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }

        public void zzVP() {
            try {
                this.zzcbc.zzVP();
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }

        public void zza(List<String> list, Object obj, boolean z, Long l) {
            try {
                this.zzcbc.zza((List) list, zze.zzA(obj), z, IPersistentConnectionImpl.zza(l));
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }

        public void zza(List<String> list, List<zzblt> list2, Long l) {
            List arrayList = new ArrayList(list2.size());
            List arrayList2 = new ArrayList(list2.size());
            for (zzblt com_google_android_gms_internal_zzblt : list2) {
                arrayList.add(zzn.zza(com_google_android_gms_internal_zzblt));
                arrayList2.add(com_google_android_gms_internal_zzblt.zzWo());
            }
            try {
                this.zzcbc.zza((List) list, arrayList, zze.zzA(arrayList2), IPersistentConnectionImpl.zza(l));
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }

        public void zzaX(boolean z) {
            try {
                this.zzcbc.zzaX(z);
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }

        public void zzaw(Map<String, Object> map) {
            try {
                this.zzcbc.zzP(zze.zzA(map));
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
    }

    class AnonymousClass5 extends zzh.zza {
        final /* synthetic */ zzblm zzcbd;

        AnonymousClass5(zzblm com_google_android_gms_internal_zzblm) {
            this.zzcbd = com_google_android_gms_internal_zzblm;
        }

        public void zza(boolean z, final zzi com_google_firebase_database_connection_idl_zzi) throws RemoteException {
            this.zzcbd.zza(z, new zzblm.zza(this) {
                public void onError(String str) {
                    try {
                        com_google_firebase_database_connection_idl_zzi.onError(str);
                    } catch (Throwable e) {
                        throw new RuntimeException(e);
                    }
                }

                public void zziM(String str) {
                    try {
                        com_google_firebase_database_connection_idl_zzi.zziM(str);
                    } catch (Throwable e) {
                        throw new RuntimeException(e);
                    }
                }
            });
        }
    }

    class AnonymousClass6 implements zzblm {
        final /* synthetic */ zzh zzcbf;

        AnonymousClass6(zzh com_google_firebase_database_connection_idl_zzh) {
            this.zzcbf = com_google_firebase_database_connection_idl_zzh;
        }

        public void zza(boolean z, final zzblm.zza com_google_android_gms_internal_zzblm_zza) {
            try {
                this.zzcbf.zza(z, new zzi.zza(this) {
                    public void onError(String str) throws RemoteException {
                        com_google_android_gms_internal_zzblm_zza.onError(str);
                    }

                    public void zziM(String str) throws RemoteException {
                        com_google_android_gms_internal_zzblm_zza.zziM(str);
                    }
                });
            } catch (Throwable e) {
                throw new RuntimeException(e);
            }
        }
    }

    public static zzk loadDynamic(Context context, zzc com_google_firebase_database_connection_idl_zzc, zzblm com_google_android_gms_internal_zzblm, ScheduledExecutorService scheduledExecutorService, zzblr.zza com_google_android_gms_internal_zzblr_zza) {
        try {
            zzk asInterface = zza.asInterface(DynamiteModule.zza(context, DynamiteModule.zzaQz, ModuleDescriptor.MODULE_ID).zzdX("com.google.firebase.database.connection.idl.IPersistentConnectionImpl"));
            asInterface.setup(com_google_firebase_database_connection_idl_zzc, zza(com_google_android_gms_internal_zzblm), zze.zzA(scheduledExecutorService), zza(com_google_android_gms_internal_zzblr_zza));
            return asInterface;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        } catch (Throwable e2) {
            throw new RuntimeException(e2);
        }
    }

    private static long zza(Long l) {
        if (l == null) {
            return -1;
        }
        if (l.longValue() != -1) {
            return l.longValue();
        }
        throw new IllegalArgumentException("Tag parameter clashed with NO_TAG value");
    }

    private static zzblm zza(zzh com_google_firebase_database_connection_idl_zzh) {
        return new AnonymousClass6(com_google_firebase_database_connection_idl_zzh);
    }

    private static zzblr.zza zza(zzl com_google_firebase_database_connection_idl_zzl) {
        return new AnonymousClass4(com_google_firebase_database_connection_idl_zzl);
    }

    private static zzblu zza(zzm com_google_firebase_database_connection_idl_zzm) {
        return new AnonymousClass2(com_google_firebase_database_connection_idl_zzm);
    }

    private static zzh zza(zzblm com_google_android_gms_internal_zzblm) {
        return new AnonymousClass5(com_google_android_gms_internal_zzblm);
    }

    private static zzl zza(zzblr.zza com_google_android_gms_internal_zzblr_zza) {
        return new AnonymousClass3(com_google_android_gms_internal_zzblr_zza);
    }

    private static Long zzaG(long j) {
        return j == -1 ? null : Long.valueOf(j);
    }

    public void compareAndPut(List<String> list, zzd com_google_android_gms_dynamic_zzd, String str, zzm com_google_firebase_database_connection_idl_zzm) {
        this.zzcaY.zza(list, zze.zzE(com_google_android_gms_dynamic_zzd), str, zza(com_google_firebase_database_connection_idl_zzm));
    }

    public void initialize() {
        this.zzcaY.initialize();
    }

    public void interrupt(String str) {
        this.zzcaY.interrupt(str);
    }

    public boolean isInterrupted(String str) {
        return this.zzcaY.isInterrupted(str);
    }

    public void listen(List<String> list, zzd com_google_android_gms_dynamic_zzd, final zzj com_google_firebase_database_connection_idl_zzj, long j, zzm com_google_firebase_database_connection_idl_zzm) {
        Long zzaG = zzaG(j);
        List<String> list2 = list;
        this.zzcaY.zza(list2, (Map) zze.zzE(com_google_android_gms_dynamic_zzd), new zzblq(this) {
            public String zzVM() {
                try {
                    return com_google_firebase_database_connection_idl_zzj.zzVM();
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                }
            }

            public boolean zzVN() {
                try {
                    return com_google_firebase_database_connection_idl_zzj.zzVN();
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                }
            }

            public zzblk zzVO() {
                try {
                    return zza.zza(com_google_firebase_database_connection_idl_zzj.zzWw());
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                }
            }
        }, zzaG, zza(com_google_firebase_database_connection_idl_zzm));
    }

    public void merge(List<String> list, zzd com_google_android_gms_dynamic_zzd, zzm com_google_firebase_database_connection_idl_zzm) {
        this.zzcaY.zza((List) list, (Map) zze.zzE(com_google_android_gms_dynamic_zzd), zza(com_google_firebase_database_connection_idl_zzm));
    }

    public void onDisconnectCancel(List<String> list, zzm com_google_firebase_database_connection_idl_zzm) {
        this.zzcaY.zza((List) list, zza(com_google_firebase_database_connection_idl_zzm));
    }

    public void onDisconnectMerge(List<String> list, zzd com_google_android_gms_dynamic_zzd, zzm com_google_firebase_database_connection_idl_zzm) {
        this.zzcaY.zzb((List) list, (Map) zze.zzE(com_google_android_gms_dynamic_zzd), zza(com_google_firebase_database_connection_idl_zzm));
    }

    public void onDisconnectPut(List<String> list, zzd com_google_android_gms_dynamic_zzd, zzm com_google_firebase_database_connection_idl_zzm) {
        this.zzcaY.zzb((List) list, zze.zzE(com_google_android_gms_dynamic_zzd), zza(com_google_firebase_database_connection_idl_zzm));
    }

    public void purgeOutstandingWrites() {
        this.zzcaY.purgeOutstandingWrites();
    }

    public void put(List<String> list, zzd com_google_android_gms_dynamic_zzd, zzm com_google_firebase_database_connection_idl_zzm) {
        this.zzcaY.zza((List) list, zze.zzE(com_google_android_gms_dynamic_zzd), zza(com_google_firebase_database_connection_idl_zzm));
    }

    public void refreshAuthToken() {
        this.zzcaY.refreshAuthToken();
    }

    public void refreshAuthToken2(String str) {
        this.zzcaY.zziO(str);
    }

    public void resume(String str) {
        this.zzcaY.resume(str);
    }

    public void setup(zzc com_google_firebase_database_connection_idl_zzc, zzh com_google_firebase_database_connection_idl_zzh, zzd com_google_android_gms_dynamic_zzd, zzl com_google_firebase_database_connection_idl_zzl) {
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) zze.zzE(com_google_android_gms_dynamic_zzd);
        this.zzcaY = new zzbls(new zzbln(new zzbon(com_google_firebase_database_connection_idl_zzc.zzWu(), com_google_firebase_database_connection_idl_zzc.zzWv()), zza(com_google_firebase_database_connection_idl_zzh), scheduledExecutorService, com_google_firebase_database_connection_idl_zzc.zzbZx, com_google_firebase_database_connection_idl_zzc.zzcaT, com_google_firebase_database_connection_idl_zzc.zzbZz), zzf.zza(com_google_firebase_database_connection_idl_zzc.zzcaQ), zza(com_google_firebase_database_connection_idl_zzl));
    }

    public void shutdown() {
        this.zzcaY.shutdown();
    }

    public void unlisten(List<String> list, zzd com_google_android_gms_dynamic_zzd) {
        this.zzcaY.zza((List) list, (Map) zze.zzE(com_google_android_gms_dynamic_zzd));
    }
}
