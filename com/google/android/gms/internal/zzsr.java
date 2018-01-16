package com.google.android.gms.internal;

public class zzsr extends zzsi<zzss> {

    private static class zza implements com.google.android.gms.internal.zzsi.zza<zzss> {
        private final zzrw zzacN;
        private final zzss zzafb = new zzss();

        public zza(zzrw com_google_android_gms_internal_zzrw) {
            this.zzacN = com_google_android_gms_internal_zzrw;
        }

        public void zzd(String str, int i) {
            if ("ga_dispatchPeriod".equals(str)) {
                this.zzafb.zzafd = i;
            } else {
                this.zzacN.zznr().zzd("Int xml configuration name not recognized", str);
            }
        }

        public void zze(String str, boolean z) {
            if ("ga_dryRun".equals(str)) {
                this.zzafb.zzafe = z ? 1 : 0;
                return;
            }
            this.zzacN.zznr().zzd("Bool xml configuration name not recognized", str);
        }

        public /* synthetic */ zzsh zzov() {
            return zzpf();
        }

        public void zzp(String str, String str2) {
            if ("ga_appName".equals(str)) {
                this.zzafb.zzabK = str2;
            } else if ("ga_appVersion".equals(str)) {
                this.zzafb.zzabL = str2;
            } else if ("ga_logLevel".equals(str)) {
                this.zzafb.zzafc = str2;
            } else {
                this.zzacN.zznr().zzd("String xml configuration name not recognized", str);
            }
        }

        public zzss zzpf() {
            return this.zzafb;
        }
    }

    public zzsr(zzrw com_google_android_gms_internal_zzrw) {
        super(com_google_android_gms_internal_zzrw, new zza(com_google_android_gms_internal_zzrw));
    }
}
