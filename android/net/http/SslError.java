package android.net.http;

public class SslError {
    SslCertificate mCertificate;
    int mErrors;

    public SslCertificate getCertificate() {
        return this.mCertificate;
    }

    public int getPrimaryError() {
        if (this.mErrors != 0) {
            for (int error = 3; error >= 0; error--) {
                if ((this.mErrors & (1 << error)) != 0) {
                    return error;
                }
            }
        }
        return 0;
    }

    public String toString() {
        return "primary error: " + getPrimaryError() + " certificate: " + getCertificate();
    }
}
