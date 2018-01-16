package com.google.android.gms.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public final class zzbsl {
    private final Map<Type, zzbrn<?>> zzcmG;

    public zzbsl(Map<Type, zzbrn<?>> map) {
        this.zzcmG = map;
    }

    private <T> zzbsq<T> zzc(final Type type, Class<? super T> cls) {
        return Collection.class.isAssignableFrom(cls) ? SortedSet.class.isAssignableFrom(cls) ? new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;

            {
                this.zzcni = r1;
            }

            public T zzabJ() {
                return new TreeSet();
            }
        } : EnumSet.class.isAssignableFrom(cls) ? new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;

            public T zzabJ() {
                if (type instanceof ParameterizedType) {
                    Type type = ((ParameterizedType) type).getActualTypeArguments()[0];
                    if (type instanceof Class) {
                        return EnumSet.noneOf((Class) type);
                    }
                    String str = "Invalid EnumSet type: ";
                    String valueOf = String.valueOf(type.toString());
                    throw new zzbrs(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
                }
                str = "Invalid EnumSet type: ";
                valueOf = String.valueOf(type.toString());
                throw new zzbrs(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
            }
        } : Set.class.isAssignableFrom(cls) ? new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;

            {
                this.zzcni = r1;
            }

            public T zzabJ() {
                return new LinkedHashSet();
            }
        } : Queue.class.isAssignableFrom(cls) ? new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;

            {
                this.zzcni = r1;
            }

            public T zzabJ() {
                return new LinkedList();
            }
        } : new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;

            {
                this.zzcni = r1;
            }

            public T zzabJ() {
                return new ArrayList();
            }
        } : Map.class.isAssignableFrom(cls) ? SortedMap.class.isAssignableFrom(cls) ? new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;

            {
                this.zzcni = r1;
            }

            public T zzabJ() {
                return new TreeMap();
            }
        } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(zzbth.zzl(((ParameterizedType) type).getActualTypeArguments()[0]).zzacb())) ? new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;

            {
                this.zzcni = r1;
            }

            public T zzabJ() {
                return new zzbsp();
            }
        } : new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;

            {
                this.zzcni = r1;
            }

            public T zzabJ() {
                return new LinkedHashMap();
            }
        } : null;
    }

    private <T> zzbsq<T> zzd(final Type type, final Class<? super T> cls) {
        return new zzbsq<T>(this) {
            final /* synthetic */ zzbsl zzcni;
            private final zzbst zzcnj = zzbst.zzabO();

            public T zzabJ() {
                try {
                    return this.zzcnj.zze(cls);
                } catch (Throwable e) {
                    String valueOf = String.valueOf(type);
                    throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 116).append("Unable to invoke no-args constructor for ").append(valueOf).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), e);
                }
            }
        };
    }

    private <T> zzbsq<T> zzk(Class<? super T> cls) {
        try {
            final Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new zzbsq<T>(this) {
                final /* synthetic */ zzbsl zzcni;

                public T zzabJ() {
                    String valueOf;
                    try {
                        return declaredConstructor.newInstance(null);
                    } catch (Throwable e) {
                        valueOf = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to invoke ").append(valueOf).append(" with no args").toString(), e);
                    } catch (InvocationTargetException e2) {
                        valueOf = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to invoke ").append(valueOf).append(" with no args").toString(), e2.getTargetException());
                    } catch (IllegalAccessException e3) {
                        throw new AssertionError(e3);
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public String toString() {
        return this.zzcmG.toString();
    }

    public <T> zzbsq<T> zzb(zzbth<T> com_google_android_gms_internal_zzbth_T) {
        final Type zzacc = com_google_android_gms_internal_zzbth_T.zzacc();
        Class zzacb = com_google_android_gms_internal_zzbth_T.zzacb();
        final zzbrn com_google_android_gms_internal_zzbrn = (zzbrn) this.zzcmG.get(zzacc);
        if (com_google_android_gms_internal_zzbrn != null) {
            return new zzbsq<T>(this) {
                final /* synthetic */ zzbsl zzcni;

                public T zzabJ() {
                    return com_google_android_gms_internal_zzbrn.zza(zzacc);
                }
            };
        }
        com_google_android_gms_internal_zzbrn = (zzbrn) this.zzcmG.get(zzacb);
        if (com_google_android_gms_internal_zzbrn != null) {
            return new zzbsq<T>(this) {
                final /* synthetic */ zzbsl zzcni;

                public T zzabJ() {
                    return com_google_android_gms_internal_zzbrn.zza(zzacc);
                }
            };
        }
        zzbsq<T> zzk = zzk(zzacb);
        if (zzk != null) {
            return zzk;
        }
        zzk = zzc(zzacc, zzacb);
        return zzk == null ? zzd(zzacc, zzacb) : zzk;
    }
}
