package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.util.Log;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.zzft;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzmb;
import com.google.android.gms.internal.zzpy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

@TargetApi(14)
@zzmb
public class zzy extends Thread implements OnFrameAvailableListener, zza {
    private static final float[] zzNO = new float[]{-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private final float[] zzNL;
    private final zzx zzNP;
    private final float[] zzNQ;
    private final float[] zzNR;
    private final float[] zzNS;
    private final float[] zzNT;
    private final float[] zzNU;
    private final float[] zzNV;
    private float zzNW;
    private float zzNX;
    private float zzNY;
    private SurfaceTexture zzNZ;
    private SurfaceTexture zzOa;
    private int zzOb;
    private int zzOc;
    private int zzOd;
    private FloatBuffer zzOe = ByteBuffer.allocateDirect(zzNO.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
    private final CountDownLatch zzOf;
    private final Object zzOg;
    private EGL10 zzOh;
    private EGLDisplay zzOi;
    private EGLContext zzOj;
    private EGLSurface zzOk;
    private volatile boolean zzOl;
    private volatile boolean zzOm;
    private int zzrG;
    private int zzrH;

    public zzy(Context context) {
        super("SphericalVideoProcessor");
        this.zzOe.put(zzNO).position(0);
        this.zzNL = new float[9];
        this.zzNQ = new float[9];
        this.zzNR = new float[9];
        this.zzNS = new float[9];
        this.zzNT = new float[9];
        this.zzNU = new float[9];
        this.zzNV = new float[9];
        this.zzNW = Float.NaN;
        this.zzNP = new zzx(context);
        this.zzNP.zza((zza) this);
        this.zzOf = new CountDownLatch(1);
        this.zzOg = new Object();
    }

    private void zza(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        fArr[4] = (float) Math.cos((double) f);
        fArr[5] = (float) (-Math.sin((double) f));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin((double) f);
        fArr[8] = (float) Math.cos((double) f);
    }

    private void zza(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = ((fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3])) + (fArr2[2] * fArr3[6]);
        fArr[1] = ((fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4])) + (fArr2[2] * fArr3[7]);
        fArr[2] = ((fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5])) + (fArr2[2] * fArr3[8]);
        fArr[3] = ((fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3])) + (fArr2[5] * fArr3[6]);
        fArr[4] = ((fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4])) + (fArr2[5] * fArr3[7]);
        fArr[5] = ((fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5])) + (fArr2[5] * fArr3[8]);
        fArr[6] = ((fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3])) + (fArr2[8] * fArr3[6]);
        fArr[7] = ((fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4])) + (fArr2[8] * fArr3[7]);
        fArr[8] = ((fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5])) + (fArr2[8] * fArr3[8]);
    }

    private float[] zza(float[] fArr, float[] fArr2) {
        return new float[]{((fArr[0] * fArr2[0]) + (fArr[1] * fArr2[1])) + (fArr[2] * fArr2[2]), ((fArr[3] * fArr2[0]) + (fArr[4] * fArr2[1])) + (fArr[5] * fArr2[2]), ((fArr[6] * fArr2[0]) + (fArr[7] * fArr2[1])) + (fArr[8] * fArr2[2])};
    }

    private void zzaC(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Log.e("SphericalVideoRenderer", new StringBuilder(String.valueOf(str).length() + 21).append(str).append(": glError ").append(glGetError).toString());
        }
    }

    private void zzb(float[] fArr, float f) {
        fArr[0] = (float) Math.cos((double) f);
        fArr[1] = (float) (-Math.sin((double) f));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin((double) f);
        fArr[4] = (float) Math.cos((double) f);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private float zzc(float[] fArr) {
        float[] zza = zza(fArr, new float[]{0.0f, 1.0f, 0.0f});
        return ((float) Math.atan2((double) zza[1], (double) zza[0])) - 1.5707964f;
    }

    private int zzc(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        zzaC("createShader");
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            zzaC("shaderSource");
            GLES20.glCompileShader(glCreateShader);
            zzaC("compileShader");
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            zzaC("getShaderiv");
            if (iArr[0] == 0) {
                Log.e("SphericalVideoRenderer", "Could not compile shader " + i + ":");
                Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                zzaC("deleteShader");
                return 0;
            }
        }
        return glCreateShader;
    }

    private void zzhS() {
        GLES20.glViewport(0, 0, this.zzrG, this.zzrH);
        zzaC("viewport");
        int glGetUniformLocation = GLES20.glGetUniformLocation(this.zzOb, "uFOVx");
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.zzOb, "uFOVy");
        if (this.zzrG > this.zzrH) {
            GLES20.glUniform1f(glGetUniformLocation, 0.87266463f);
            GLES20.glUniform1f(glGetUniformLocation2, (((float) this.zzrH) * 0.87266463f) / ((float) this.zzrG));
            return;
        }
        GLES20.glUniform1f(glGetUniformLocation, (((float) this.zzrG) * 0.87266463f) / ((float) this.zzrH));
        GLES20.glUniform1f(glGetUniformLocation2, 0.87266463f);
    }

    private int zzhU() {
        int zzc = zzc(35633, zzhX());
        if (zzc == 0) {
            return 0;
        }
        int zzc2 = zzc(35632, zzhY());
        if (zzc2 == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        zzaC("createProgram");
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, zzc);
            zzaC("attachShader");
            GLES20.glAttachShader(glCreateProgram, zzc2);
            zzaC("attachShader");
            GLES20.glLinkProgram(glCreateProgram);
            zzaC("linkProgram");
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            zzaC("getProgramiv");
            if (iArr[0] != 1) {
                Log.e("SphericalVideoRenderer", "Could not link program: ");
                Log.e("SphericalVideoRenderer", GLES20.glGetProgramInfoLog(glCreateProgram));
                GLES20.glDeleteProgram(glCreateProgram);
                zzaC("deleteProgram");
                return 0;
            }
            GLES20.glValidateProgram(glCreateProgram);
            zzaC("validateProgram");
        }
        return glCreateProgram;
    }

    private EGLConfig zzhW() {
        int[] iArr = new int[1];
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        return !this.zzOh.eglChooseConfig(this.zzOi, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344}, eGLConfigArr, 1, iArr) ? null : iArr[0] > 0 ? eGLConfigArr[0] : null;
    }

    private String zzhX() {
        zzft com_google_android_gms_internal_zzft = zzfx.zzCI;
        return !((String) com_google_android_gms_internal_zzft.get()).equals(com_google_android_gms_internal_zzft.zzfm()) ? (String) com_google_android_gms_internal_zzft.get() : "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}";
    }

    private String zzhY() {
        zzft com_google_android_gms_internal_zzft = zzfx.zzCJ;
        return !((String) com_google_android_gms_internal_zzft.get()).equals(com_google_android_gms_internal_zzft.zzfm()) ? (String) com_google_android_gms_internal_zzft.get() : "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}";
    }

    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzOd++;
        synchronized (this.zzOg) {
            this.zzOg.notifyAll();
        }
    }

    public void run() {
        Object obj = 1;
        if (this.zzOa == null) {
            zzpy.e("SphericalVideoProcessor started with no output texture.");
            this.zzOf.countDown();
            return;
        }
        boolean zzhV = zzhV();
        int zzhT = zzhT();
        if (this.zzOb == 0) {
            obj = null;
        }
        if (!zzhV || r0 == null) {
            String str = "EGL initialization failed: ";
            String valueOf = String.valueOf(GLUtils.getEGLErrorString(this.zzOh.eglGetError()));
            valueOf = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
            zzpy.e(valueOf);
            zzv.zzcN().zza(new Throwable(valueOf), "SphericalVideoProcessor.run.1");
            zzhZ();
            this.zzOf.countDown();
            return;
        }
        this.zzNZ = new SurfaceTexture(zzhT);
        this.zzNZ.setOnFrameAvailableListener(this);
        this.zzOf.countDown();
        this.zzNP.start();
        try {
            this.zzOl = true;
            while (!this.zzOm) {
                zzhR();
                if (this.zzOl) {
                    zzhS();
                    this.zzOl = false;
                }
                try {
                    synchronized (this.zzOg) {
                        if (!(this.zzOm || this.zzOl || this.zzOd != 0)) {
                            this.zzOg.wait();
                        }
                    }
                } catch (InterruptedException e) {
                }
            }
        } catch (IllegalStateException e2) {
            zzpy.zzbe("SphericalVideoProcessor halted unexpectedly.");
        } catch (Throwable th) {
            zzpy.zzb("SphericalVideoProcessor died.", th);
            zzv.zzcN().zza(th, "SphericalVideoProcessor.run.2");
        } finally {
            this.zzNP.stop();
            this.zzNZ.setOnFrameAvailableListener(null);
            this.zzNZ = null;
            zzhZ();
        }
    }

    public void zza(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zzrG = i;
        this.zzrH = i2;
        this.zzOa = surfaceTexture;
    }

    public void zzb(float f, float f2) {
        float f3;
        float f4;
        if (this.zzrG > this.zzrH) {
            f3 = (1.7453293f * f) / ((float) this.zzrG);
            f4 = (1.7453293f * f2) / ((float) this.zzrG);
        } else {
            f3 = (1.7453293f * f) / ((float) this.zzrH);
            f4 = (1.7453293f * f2) / ((float) this.zzrH);
        }
        this.zzNX -= f3;
        this.zzNY -= f4;
        if (this.zzNY < -1.5707964f) {
            this.zzNY = -1.5707964f;
        }
        if (this.zzNY > 1.5707964f) {
            this.zzNY = 1.5707964f;
        }
    }

    public void zzhP() {
        synchronized (this.zzOg) {
            this.zzOm = true;
            this.zzOa = null;
            this.zzOg.notifyAll();
        }
    }

    public SurfaceTexture zzhQ() {
        if (this.zzOa == null) {
            return null;
        }
        try {
            this.zzOf.await();
        } catch (InterruptedException e) {
        }
        return this.zzNZ;
    }

    void zzhR() {
        while (this.zzOd > 0) {
            this.zzNZ.updateTexImage();
            this.zzOd--;
        }
        if (this.zzNP.zzb(this.zzNL)) {
            if (Float.isNaN(this.zzNW)) {
                this.zzNW = -zzc(this.zzNL);
            }
            zzb(this.zzNU, this.zzNW + this.zzNX);
        } else {
            zza(this.zzNL, -1.5707964f);
            zzb(this.zzNU, this.zzNX);
        }
        zza(this.zzNQ, 1.5707964f);
        zza(this.zzNR, this.zzNU, this.zzNQ);
        zza(this.zzNS, this.zzNL, this.zzNR);
        zza(this.zzNT, this.zzNY);
        zza(this.zzNV, this.zzNT, this.zzNS);
        GLES20.glUniformMatrix3fv(this.zzOc, 1, false, this.zzNV, 0);
        GLES20.glDrawArrays(5, 0, 4);
        zzaC("drawArrays");
        GLES20.glFinish();
        this.zzOh.eglSwapBuffers(this.zzOi, this.zzOk);
    }

    int zzhT() {
        this.zzOb = zzhU();
        GLES20.glUseProgram(this.zzOb);
        zzaC("useProgram");
        int glGetAttribLocation = GLES20.glGetAttribLocation(this.zzOb, "aPosition");
        GLES20.glVertexAttribPointer(glGetAttribLocation, 3, 5126, false, 12, this.zzOe);
        zzaC("vertexAttribPointer");
        GLES20.glEnableVertexAttribArray(glGetAttribLocation);
        zzaC("enableVertexAttribArray");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        zzaC("genTextures");
        glGetAttribLocation = iArr[0];
        GLES20.glBindTexture(36197, glGetAttribLocation);
        zzaC("bindTextures");
        GLES20.glTexParameteri(36197, 10240, 9729);
        zzaC("texParameteri");
        GLES20.glTexParameteri(36197, 10241, 9729);
        zzaC("texParameteri");
        GLES20.glTexParameteri(36197, 10242, 33071);
        zzaC("texParameteri");
        GLES20.glTexParameteri(36197, 10243, 33071);
        zzaC("texParameteri");
        this.zzOc = GLES20.glGetUniformLocation(this.zzOb, "uVMat");
        GLES20.glUniformMatrix3fv(this.zzOc, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
        return glGetAttribLocation;
    }

    boolean zzhV() {
        this.zzOh = (EGL10) EGLContext.getEGL();
        this.zzOi = this.zzOh.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        if (this.zzOi == EGL10.EGL_NO_DISPLAY) {
            return false;
        }
        if (!this.zzOh.eglInitialize(this.zzOi, new int[2])) {
            return false;
        }
        EGLConfig zzhW = zzhW();
        if (zzhW == null) {
            return false;
        }
        this.zzOj = this.zzOh.eglCreateContext(this.zzOi, zzhW, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        if (this.zzOj == null || this.zzOj == EGL10.EGL_NO_CONTEXT) {
            return false;
        }
        this.zzOk = this.zzOh.eglCreateWindowSurface(this.zzOi, zzhW, this.zzOa, null);
        return (this.zzOk == null || this.zzOk == EGL10.EGL_NO_SURFACE) ? false : this.zzOh.eglMakeCurrent(this.zzOi, this.zzOk, this.zzOk, this.zzOj);
    }

    boolean zzhZ() {
        boolean z = false;
        if (!(this.zzOk == null || this.zzOk == EGL10.EGL_NO_SURFACE)) {
            z = (this.zzOh.eglMakeCurrent(this.zzOi, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT) | 0) | this.zzOh.eglDestroySurface(this.zzOi, this.zzOk);
            this.zzOk = null;
        }
        if (this.zzOj != null) {
            z |= this.zzOh.eglDestroyContext(this.zzOi, this.zzOj);
            this.zzOj = null;
        }
        if (this.zzOi == null) {
            return z;
        }
        z |= this.zzOh.eglTerminate(this.zzOi);
        this.zzOi = null;
        return z;
    }

    public void zzho() {
        synchronized (this.zzOg) {
            this.zzOg.notifyAll();
        }
    }

    public void zzi(int i, int i2) {
        synchronized (this.zzOg) {
            this.zzrG = i;
            this.zzrH = i2;
            this.zzOl = true;
            this.zzOg.notifyAll();
        }
    }
}
