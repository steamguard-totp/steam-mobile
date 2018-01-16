package com.google.android.gms.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;

public final class zzbsp<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = (!zzbsp.class.desiredAssertionStatus());
    private static final Comparator<Comparable> zzcnz = new Comparator<Comparable>() {
        public /* synthetic */ int compare(Object obj, Object obj2) {
            return zza((Comparable) obj, (Comparable) obj2);
        }

        public int zza(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };
    int modCount;
    int size;
    Comparator<? super K> zzbYG;
    zzd<K, V> zzcnA;
    final zzd<K, V> zzcnB;
    private zza zzcnC;
    private zzb zzcnD;

    private abstract class zzc<T> implements Iterator<T> {
        final /* synthetic */ zzbsp zzcnE;
        zzd<K, V> zzcnH;
        zzd<K, V> zzcnI;
        int zzcnJ;

        private zzc(zzbsp com_google_android_gms_internal_zzbsp) {
            this.zzcnE = com_google_android_gms_internal_zzbsp;
            this.zzcnH = this.zzcnE.zzcnB.zzcnH;
            this.zzcnI = null;
            this.zzcnJ = this.zzcnE.modCount;
        }

        public final boolean hasNext() {
            return this.zzcnH != this.zzcnE.zzcnB;
        }

        public final void remove() {
            if (this.zzcnI == null) {
                throw new IllegalStateException();
            }
            this.zzcnE.zza(this.zzcnI, true);
            this.zzcnI = null;
            this.zzcnJ = this.zzcnE.modCount;
        }

        final zzd<K, V> zzabL() {
            zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V = this.zzcnH;
            if (com_google_android_gms_internal_zzbsp_zzd_K__V == this.zzcnE.zzcnB) {
                throw new NoSuchElementException();
            } else if (this.zzcnE.modCount != this.zzcnJ) {
                throw new ConcurrentModificationException();
            } else {
                this.zzcnH = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnH;
                this.zzcnI = com_google_android_gms_internal_zzbsp_zzd_K__V;
                return com_google_android_gms_internal_zzbsp_zzd_K__V;
            }
        }
    }

    class zza extends AbstractSet<Entry<K, V>> {
        final /* synthetic */ zzbsp zzcnE;

        zza(zzbsp com_google_android_gms_internal_zzbsp) {
            this.zzcnE = com_google_android_gms_internal_zzbsp;
        }

        public void clear() {
            this.zzcnE.clear();
        }

        public boolean contains(Object obj) {
            return (obj instanceof Entry) && this.zzcnE.zzc((Entry) obj) != null;
        }

        public Iterator<Entry<K, V>> iterator() {
            return new zzc<Entry<K, V>>(this) {
                final /* synthetic */ zza zzcnF;

                {
                    this.zzcnF = r3;
                    zzbsp com_google_android_gms_internal_zzbsp = r3.zzcnE;
                }

                public Entry<K, V> next() {
                    return zzabL();
                }
            };
        }

        public boolean remove(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            zzd zzc = this.zzcnE.zzc((Entry) obj);
            if (zzc == null) {
                return false;
            }
            this.zzcnE.zza(zzc, true);
            return true;
        }

        public int size() {
            return this.zzcnE.size;
        }
    }

    final class zzb extends AbstractSet<K> {
        final /* synthetic */ zzbsp zzcnE;

        zzb(zzbsp com_google_android_gms_internal_zzbsp) {
            this.zzcnE = com_google_android_gms_internal_zzbsp;
        }

        public void clear() {
            this.zzcnE.clear();
        }

        public boolean contains(Object obj) {
            return this.zzcnE.containsKey(obj);
        }

        public Iterator<K> iterator() {
            return new zzc<K>(this) {
                final /* synthetic */ zzb zzcnG;

                {
                    this.zzcnG = r3;
                    zzbsp com_google_android_gms_internal_zzbsp = r3.zzcnE;
                }

                public K next() {
                    return zzabL().zzbYU;
                }
            };
        }

        public boolean remove(Object obj) {
            return this.zzcnE.zzaP(obj) != null;
        }

        public int size() {
            return this.zzcnE.size;
        }
    }

    static final class zzd<K, V> implements Entry<K, V> {
        int height;
        V value;
        final K zzbYU;
        zzd<K, V> zzcnH;
        zzd<K, V> zzcnK;
        zzd<K, V> zzcnL;
        zzd<K, V> zzcnM;
        zzd<K, V> zzcnN;

        zzd() {
            this.zzbYU = null;
            this.zzcnN = this;
            this.zzcnH = this;
        }

        zzd(zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V, K k, zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V2, zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V3) {
            this.zzcnK = com_google_android_gms_internal_zzbsp_zzd_K__V;
            this.zzbYU = k;
            this.height = 1;
            this.zzcnH = com_google_android_gms_internal_zzbsp_zzd_K__V2;
            this.zzcnN = com_google_android_gms_internal_zzbsp_zzd_K__V3;
            com_google_android_gms_internal_zzbsp_zzd_K__V3.zzcnH = this;
            com_google_android_gms_internal_zzbsp_zzd_K__V2.zzcnN = this;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (this.zzbYU == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!this.zzbYU.equals(entry.getKey())) {
                return false;
            }
            if (this.value == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.value.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        public K getKey() {
            return this.zzbYU;
        }

        public V getValue() {
            return this.value;
        }

        public int hashCode() {
            int i = 0;
            int hashCode = this.zzbYU == null ? 0 : this.zzbYU.hashCode();
            if (this.value != null) {
                i = this.value.hashCode();
            }
            return hashCode ^ i;
        }

        public V setValue(V v) {
            V v2 = this.value;
            this.value = v;
            return v2;
        }

        public String toString() {
            String valueOf = String.valueOf(this.zzbYU);
            String valueOf2 = String.valueOf(this.value);
            return new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length()).append(valueOf).append("=").append(valueOf2).toString();
        }

        public zzd<K, V> zzabM() {
            zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V;
            for (zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V2 = this.zzcnL; com_google_android_gms_internal_zzbsp_zzd_K__V2 != null; com_google_android_gms_internal_zzbsp_zzd_K__V2 = com_google_android_gms_internal_zzbsp_zzd_K__V2.zzcnL) {
                com_google_android_gms_internal_zzbsp_zzd_K__V = com_google_android_gms_internal_zzbsp_zzd_K__V2;
            }
            return com_google_android_gms_internal_zzbsp_zzd_K__V;
        }

        public zzd<K, V> zzabN() {
            zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V;
            for (zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V2 = this.zzcnM; com_google_android_gms_internal_zzbsp_zzd_K__V2 != null; com_google_android_gms_internal_zzbsp_zzd_K__V2 = com_google_android_gms_internal_zzbsp_zzd_K__V2.zzcnM) {
                com_google_android_gms_internal_zzbsp_zzd_K__V = com_google_android_gms_internal_zzbsp_zzd_K__V2;
            }
            return com_google_android_gms_internal_zzbsp_zzd_K__V;
        }
    }

    public zzbsp() {
        this(zzcnz);
    }

    public zzbsp(Comparator<? super K> comparator) {
        Comparator comparator2;
        this.size = 0;
        this.modCount = 0;
        this.zzcnB = new zzd();
        if (comparator == null) {
            comparator2 = zzcnz;
        }
        this.zzbYG = comparator2;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void zza(zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V) {
        int i = 0;
        zzd com_google_android_gms_internal_zzbsp_zzd = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnL;
        zzd com_google_android_gms_internal_zzbsp_zzd2 = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnM;
        zzd com_google_android_gms_internal_zzbsp_zzd3 = com_google_android_gms_internal_zzbsp_zzd2.zzcnL;
        zzd com_google_android_gms_internal_zzbsp_zzd4 = com_google_android_gms_internal_zzbsp_zzd2.zzcnM;
        com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnM = com_google_android_gms_internal_zzbsp_zzd3;
        if (com_google_android_gms_internal_zzbsp_zzd3 != null) {
            com_google_android_gms_internal_zzbsp_zzd3.zzcnK = com_google_android_gms_internal_zzbsp_zzd_K__V;
        }
        zza((zzd) com_google_android_gms_internal_zzbsp_zzd_K__V, com_google_android_gms_internal_zzbsp_zzd2);
        com_google_android_gms_internal_zzbsp_zzd2.zzcnL = com_google_android_gms_internal_zzbsp_zzd_K__V;
        com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnK = com_google_android_gms_internal_zzbsp_zzd2;
        com_google_android_gms_internal_zzbsp_zzd_K__V.height = Math.max(com_google_android_gms_internal_zzbsp_zzd != null ? com_google_android_gms_internal_zzbsp_zzd.height : 0, com_google_android_gms_internal_zzbsp_zzd3 != null ? com_google_android_gms_internal_zzbsp_zzd3.height : 0) + 1;
        int i2 = com_google_android_gms_internal_zzbsp_zzd_K__V.height;
        if (com_google_android_gms_internal_zzbsp_zzd4 != null) {
            i = com_google_android_gms_internal_zzbsp_zzd4.height;
        }
        com_google_android_gms_internal_zzbsp_zzd2.height = Math.max(i2, i) + 1;
    }

    private void zza(zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V, zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V2) {
        zzd com_google_android_gms_internal_zzbsp_zzd = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnK;
        com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnK = null;
        if (com_google_android_gms_internal_zzbsp_zzd_K__V2 != null) {
            com_google_android_gms_internal_zzbsp_zzd_K__V2.zzcnK = com_google_android_gms_internal_zzbsp_zzd;
        }
        if (com_google_android_gms_internal_zzbsp_zzd == null) {
            this.zzcnA = com_google_android_gms_internal_zzbsp_zzd_K__V2;
        } else if (com_google_android_gms_internal_zzbsp_zzd.zzcnL == com_google_android_gms_internal_zzbsp_zzd_K__V) {
            com_google_android_gms_internal_zzbsp_zzd.zzcnL = com_google_android_gms_internal_zzbsp_zzd_K__V2;
        } else if ($assertionsDisabled || com_google_android_gms_internal_zzbsp_zzd.zzcnM == com_google_android_gms_internal_zzbsp_zzd_K__V) {
            com_google_android_gms_internal_zzbsp_zzd.zzcnM = com_google_android_gms_internal_zzbsp_zzd_K__V2;
        } else {
            throw new AssertionError();
        }
    }

    private void zzb(zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V) {
        int i = 0;
        zzd com_google_android_gms_internal_zzbsp_zzd = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnL;
        zzd com_google_android_gms_internal_zzbsp_zzd2 = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnM;
        zzd com_google_android_gms_internal_zzbsp_zzd3 = com_google_android_gms_internal_zzbsp_zzd.zzcnL;
        zzd com_google_android_gms_internal_zzbsp_zzd4 = com_google_android_gms_internal_zzbsp_zzd.zzcnM;
        com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnL = com_google_android_gms_internal_zzbsp_zzd4;
        if (com_google_android_gms_internal_zzbsp_zzd4 != null) {
            com_google_android_gms_internal_zzbsp_zzd4.zzcnK = com_google_android_gms_internal_zzbsp_zzd_K__V;
        }
        zza((zzd) com_google_android_gms_internal_zzbsp_zzd_K__V, com_google_android_gms_internal_zzbsp_zzd);
        com_google_android_gms_internal_zzbsp_zzd.zzcnM = com_google_android_gms_internal_zzbsp_zzd_K__V;
        com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnK = com_google_android_gms_internal_zzbsp_zzd;
        com_google_android_gms_internal_zzbsp_zzd_K__V.height = Math.max(com_google_android_gms_internal_zzbsp_zzd2 != null ? com_google_android_gms_internal_zzbsp_zzd2.height : 0, com_google_android_gms_internal_zzbsp_zzd4 != null ? com_google_android_gms_internal_zzbsp_zzd4.height : 0) + 1;
        int i2 = com_google_android_gms_internal_zzbsp_zzd_K__V.height;
        if (com_google_android_gms_internal_zzbsp_zzd3 != null) {
            i = com_google_android_gms_internal_zzbsp_zzd3.height;
        }
        com_google_android_gms_internal_zzbsp_zzd.height = Math.max(i2, i) + 1;
    }

    private void zzb(zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V, boolean z) {
        zzd com_google_android_gms_internal_zzbsp_zzd;
        while (com_google_android_gms_internal_zzbsp_zzd != null) {
            zzd com_google_android_gms_internal_zzbsp_zzd2 = com_google_android_gms_internal_zzbsp_zzd.zzcnL;
            zzd com_google_android_gms_internal_zzbsp_zzd3 = com_google_android_gms_internal_zzbsp_zzd.zzcnM;
            int i = com_google_android_gms_internal_zzbsp_zzd2 != null ? com_google_android_gms_internal_zzbsp_zzd2.height : 0;
            int i2 = com_google_android_gms_internal_zzbsp_zzd3 != null ? com_google_android_gms_internal_zzbsp_zzd3.height : 0;
            int i3 = i - i2;
            zzd com_google_android_gms_internal_zzbsp_zzd4;
            if (i3 == -2) {
                com_google_android_gms_internal_zzbsp_zzd2 = com_google_android_gms_internal_zzbsp_zzd3.zzcnL;
                com_google_android_gms_internal_zzbsp_zzd4 = com_google_android_gms_internal_zzbsp_zzd3.zzcnM;
                i2 = (com_google_android_gms_internal_zzbsp_zzd2 != null ? com_google_android_gms_internal_zzbsp_zzd2.height : 0) - (com_google_android_gms_internal_zzbsp_zzd4 != null ? com_google_android_gms_internal_zzbsp_zzd4.height : 0);
                if (i2 == -1 || (i2 == 0 && !z)) {
                    zza(com_google_android_gms_internal_zzbsp_zzd);
                } else if ($assertionsDisabled || i2 == 1) {
                    zzb(com_google_android_gms_internal_zzbsp_zzd3);
                    zza(com_google_android_gms_internal_zzbsp_zzd);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                com_google_android_gms_internal_zzbsp_zzd3 = com_google_android_gms_internal_zzbsp_zzd2.zzcnL;
                com_google_android_gms_internal_zzbsp_zzd4 = com_google_android_gms_internal_zzbsp_zzd2.zzcnM;
                i2 = (com_google_android_gms_internal_zzbsp_zzd3 != null ? com_google_android_gms_internal_zzbsp_zzd3.height : 0) - (com_google_android_gms_internal_zzbsp_zzd4 != null ? com_google_android_gms_internal_zzbsp_zzd4.height : 0);
                if (i2 == 1 || (i2 == 0 && !z)) {
                    zzb(com_google_android_gms_internal_zzbsp_zzd);
                } else if ($assertionsDisabled || i2 == -1) {
                    zza(com_google_android_gms_internal_zzbsp_zzd2);
                    zzb(com_google_android_gms_internal_zzbsp_zzd);
                } else {
                    throw new AssertionError();
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                com_google_android_gms_internal_zzbsp_zzd.height = i + 1;
                if (z) {
                    return;
                }
            } else if ($assertionsDisabled || i3 == -1 || i3 == 1) {
                com_google_android_gms_internal_zzbsp_zzd.height = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            } else {
                throw new AssertionError();
            }
            com_google_android_gms_internal_zzbsp_zzd = com_google_android_gms_internal_zzbsp_zzd.zzcnK;
        }
    }

    public void clear() {
        this.zzcnA = null;
        this.size = 0;
        this.modCount++;
        zzd com_google_android_gms_internal_zzbsp_zzd = this.zzcnB;
        com_google_android_gms_internal_zzbsp_zzd.zzcnN = com_google_android_gms_internal_zzbsp_zzd;
        com_google_android_gms_internal_zzbsp_zzd.zzcnH = com_google_android_gms_internal_zzbsp_zzd;
    }

    public boolean containsKey(Object obj) {
        return zzaO(obj) != null;
    }

    public Set<Entry<K, V>> entrySet() {
        Set set = this.zzcnC;
        if (set != null) {
            return set;
        }
        set = new zza(this);
        this.zzcnC = set;
        return set;
    }

    public V get(Object obj) {
        zzd zzaO = zzaO(obj);
        return zzaO != null ? zzaO.value : null;
    }

    public Set<K> keySet() {
        Set set = this.zzcnD;
        if (set != null) {
            return set;
        }
        set = new zzb(this);
        this.zzcnD = set;
        return set;
    }

    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        zzd zza = zza((Object) k, true);
        V v2 = zza.value;
        zza.value = v;
        return v2;
    }

    public V remove(Object obj) {
        zzd zzaP = zzaP(obj);
        return zzaP != null ? zzaP.value : null;
    }

    public int size() {
        return this.size;
    }

    zzd<K, V> zza(K k, boolean z) {
        int i;
        Comparator comparator = this.zzbYG;
        zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V = this.zzcnA;
        if (com_google_android_gms_internal_zzbsp_zzd_K__V != null) {
            int compareTo;
            Comparable comparable = comparator == zzcnz ? (Comparable) k : null;
            while (true) {
                compareTo = comparable != null ? comparable.compareTo(com_google_android_gms_internal_zzbsp_zzd_K__V.zzbYU) : comparator.compare(k, com_google_android_gms_internal_zzbsp_zzd_K__V.zzbYU);
                if (compareTo == 0) {
                    return com_google_android_gms_internal_zzbsp_zzd_K__V;
                }
                zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V2 = compareTo < 0 ? com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnL : com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnM;
                if (com_google_android_gms_internal_zzbsp_zzd_K__V2 == null) {
                    break;
                }
                com_google_android_gms_internal_zzbsp_zzd_K__V = com_google_android_gms_internal_zzbsp_zzd_K__V2;
            }
            int i2 = compareTo;
            zzd com_google_android_gms_internal_zzbsp_zzd = com_google_android_gms_internal_zzbsp_zzd_K__V;
            i = i2;
        } else {
            zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V3 = com_google_android_gms_internal_zzbsp_zzd_K__V;
            i = 0;
        }
        if (!z) {
            return null;
        }
        zzd<K, V> com_google_android_gms_internal_zzbsp_zzd2;
        zzd com_google_android_gms_internal_zzbsp_zzd3 = this.zzcnB;
        if (com_google_android_gms_internal_zzbsp_zzd != null) {
            com_google_android_gms_internal_zzbsp_zzd2 = new zzd(com_google_android_gms_internal_zzbsp_zzd, k, com_google_android_gms_internal_zzbsp_zzd3, com_google_android_gms_internal_zzbsp_zzd3.zzcnN);
            if (i < 0) {
                com_google_android_gms_internal_zzbsp_zzd.zzcnL = com_google_android_gms_internal_zzbsp_zzd2;
            } else {
                com_google_android_gms_internal_zzbsp_zzd.zzcnM = com_google_android_gms_internal_zzbsp_zzd2;
            }
            zzb(com_google_android_gms_internal_zzbsp_zzd, true);
        } else if (comparator != zzcnz || (k instanceof Comparable)) {
            com_google_android_gms_internal_zzbsp_zzd2 = new zzd(com_google_android_gms_internal_zzbsp_zzd, k, com_google_android_gms_internal_zzbsp_zzd3, com_google_android_gms_internal_zzbsp_zzd3.zzcnN);
            this.zzcnA = com_google_android_gms_internal_zzbsp_zzd2;
        } else {
            throw new ClassCastException(String.valueOf(k.getClass().getName()).concat(" is not Comparable"));
        }
        this.size++;
        this.modCount++;
        return com_google_android_gms_internal_zzbsp_zzd2;
    }

    void zza(zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V, boolean z) {
        int i = 0;
        if (z) {
            com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnN.zzcnH = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnH;
            com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnH.zzcnN = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnN;
        }
        zzd com_google_android_gms_internal_zzbsp_zzd = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnL;
        zzd com_google_android_gms_internal_zzbsp_zzd2 = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnM;
        zzd com_google_android_gms_internal_zzbsp_zzd3 = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnK;
        if (com_google_android_gms_internal_zzbsp_zzd == null || com_google_android_gms_internal_zzbsp_zzd2 == null) {
            if (com_google_android_gms_internal_zzbsp_zzd != null) {
                zza((zzd) com_google_android_gms_internal_zzbsp_zzd_K__V, com_google_android_gms_internal_zzbsp_zzd);
                com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnL = null;
            } else if (com_google_android_gms_internal_zzbsp_zzd2 != null) {
                zza((zzd) com_google_android_gms_internal_zzbsp_zzd_K__V, com_google_android_gms_internal_zzbsp_zzd2);
                com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnM = null;
            } else {
                zza((zzd) com_google_android_gms_internal_zzbsp_zzd_K__V, null);
            }
            zzb(com_google_android_gms_internal_zzbsp_zzd3, false);
            this.size--;
            this.modCount++;
            return;
        }
        int i2;
        com_google_android_gms_internal_zzbsp_zzd = com_google_android_gms_internal_zzbsp_zzd.height > com_google_android_gms_internal_zzbsp_zzd2.height ? com_google_android_gms_internal_zzbsp_zzd.zzabN() : com_google_android_gms_internal_zzbsp_zzd2.zzabM();
        zza(com_google_android_gms_internal_zzbsp_zzd, false);
        com_google_android_gms_internal_zzbsp_zzd3 = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnL;
        if (com_google_android_gms_internal_zzbsp_zzd3 != null) {
            i2 = com_google_android_gms_internal_zzbsp_zzd3.height;
            com_google_android_gms_internal_zzbsp_zzd.zzcnL = com_google_android_gms_internal_zzbsp_zzd3;
            com_google_android_gms_internal_zzbsp_zzd3.zzcnK = com_google_android_gms_internal_zzbsp_zzd;
            com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnL = null;
        } else {
            i2 = 0;
        }
        com_google_android_gms_internal_zzbsp_zzd3 = com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnM;
        if (com_google_android_gms_internal_zzbsp_zzd3 != null) {
            i = com_google_android_gms_internal_zzbsp_zzd3.height;
            com_google_android_gms_internal_zzbsp_zzd.zzcnM = com_google_android_gms_internal_zzbsp_zzd3;
            com_google_android_gms_internal_zzbsp_zzd3.zzcnK = com_google_android_gms_internal_zzbsp_zzd;
            com_google_android_gms_internal_zzbsp_zzd_K__V.zzcnM = null;
        }
        com_google_android_gms_internal_zzbsp_zzd.height = Math.max(i2, i) + 1;
        zza((zzd) com_google_android_gms_internal_zzbsp_zzd_K__V, com_google_android_gms_internal_zzbsp_zzd);
    }

    zzd<K, V> zzaO(Object obj) {
        zzd<K, V> com_google_android_gms_internal_zzbsp_zzd_K__V = null;
        if (obj != null) {
            try {
                com_google_android_gms_internal_zzbsp_zzd_K__V = zza(obj, false);
            } catch (ClassCastException e) {
            }
        }
        return com_google_android_gms_internal_zzbsp_zzd_K__V;
    }

    zzd<K, V> zzaP(Object obj) {
        zzd zzaO = zzaO(obj);
        if (zzaO != null) {
            zza(zzaO, true);
        }
        return zzaO;
    }

    zzd<K, V> zzc(Entry<?, ?> entry) {
        zzd<K, V> zzaO = zzaO(entry.getKey());
        Object obj = (zzaO == null || !equal(zzaO.value, entry.getValue())) ? null : 1;
        return obj != null ? zzaO : null;
    }
}
