package com.google.android.gms.cast;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzp;
import com.google.android.gms.internal.zzym;
import org.json.JSONException;
import org.json.JSONObject;

public final class TextTrackStyle extends zza {
    public static final Creator<TextTrackStyle> CREATOR = new zzn();
    private int mBackgroundColor;
    private final int mVersionCode;
    String zzalH;
    private JSONObject zzalI;
    private float zzaoE;
    private int zzaoF;
    private int zzaoG;
    private int zzaoH;
    private int zzaoI;
    private int zzaoJ;
    private int zzaoK;
    private String zzaoL;
    private int zzaoM;
    private int zzaoN;

    public TextTrackStyle() {
        this(1, 1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
    }

    TextTrackStyle(int i, float f, int i2, int i3, int i4, int i5, int i6, int i7, int i8, String str, int i9, int i10, String str2) {
        this.mVersionCode = i;
        this.zzaoE = f;
        this.zzaoF = i2;
        this.mBackgroundColor = i3;
        this.zzaoG = i4;
        this.zzaoH = i5;
        this.zzaoI = i6;
        this.zzaoJ = i7;
        this.zzaoK = i8;
        this.zzaoL = str;
        this.zzaoM = i9;
        this.zzaoN = i10;
        this.zzalH = str2;
        if (this.zzalH != null) {
            try {
                this.zzalI = new JSONObject(this.zzalH);
                return;
            } catch (JSONException e) {
                this.zzalI = null;
                this.zzalH = null;
                return;
            }
        }
        this.zzalI = null;
    }

    private String zzZ(int i) {
        return String.format("#%02X%02X%02X%02X", new Object[]{Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Integer.valueOf(Color.alpha(i))});
    }

    private int zzcI(String str) {
        int i = 0;
        if (str != null && str.length() == 9 && str.charAt(i) == '#') {
            try {
                i = Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException e) {
            }
        }
        return i;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        if ((this.zzalI == null) != (textTrackStyle.zzalI == null)) {
            return false;
        }
        if (this.zzalI != null && textTrackStyle.zzalI != null && !zzp.zzf(this.zzalI, textTrackStyle.zzalI)) {
            return false;
        }
        if (!(this.zzaoE == textTrackStyle.zzaoE && this.zzaoF == textTrackStyle.zzaoF && this.mBackgroundColor == textTrackStyle.mBackgroundColor && this.zzaoG == textTrackStyle.zzaoG && this.zzaoH == textTrackStyle.zzaoH && this.zzaoI == textTrackStyle.zzaoI && this.zzaoK == textTrackStyle.zzaoK && zzym.zza(this.zzaoL, textTrackStyle.zzaoL) && this.zzaoM == textTrackStyle.zzaoM && this.zzaoN == textTrackStyle.zzaoN)) {
            z = false;
        }
        return z;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public int getEdgeColor() {
        return this.zzaoH;
    }

    public int getEdgeType() {
        return this.zzaoG;
    }

    public String getFontFamily() {
        return this.zzaoL;
    }

    public int getFontGenericFamily() {
        return this.zzaoM;
    }

    public float getFontScale() {
        return this.zzaoE;
    }

    public int getFontStyle() {
        return this.zzaoN;
    }

    public int getForegroundColor() {
        return this.zzaoF;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int getWindowColor() {
        return this.zzaoJ;
    }

    public int getWindowCornerRadius() {
        return this.zzaoK;
    }

    public int getWindowType() {
        return this.zzaoI;
    }

    public int hashCode() {
        return zzaa.hashCode(Float.valueOf(this.zzaoE), Integer.valueOf(this.zzaoF), Integer.valueOf(this.mBackgroundColor), Integer.valueOf(this.zzaoG), Integer.valueOf(this.zzaoH), Integer.valueOf(this.zzaoI), Integer.valueOf(this.zzaoJ), Integer.valueOf(this.zzaoK), this.zzaoL, Integer.valueOf(this.zzaoM), Integer.valueOf(this.zzaoN), String.valueOf(this.zzalI));
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fontScale", (double) this.zzaoE);
            if (this.zzaoF != 0) {
                jSONObject.put("foregroundColor", zzZ(this.zzaoF));
            }
            if (this.mBackgroundColor != 0) {
                jSONObject.put("backgroundColor", zzZ(this.mBackgroundColor));
            }
            switch (this.zzaoG) {
                case 0:
                    jSONObject.put("edgeType", "NONE");
                    break;
                case 1:
                    jSONObject.put("edgeType", "OUTLINE");
                    break;
                case 2:
                    jSONObject.put("edgeType", "DROP_SHADOW");
                    break;
                case 3:
                    jSONObject.put("edgeType", "RAISED");
                    break;
                case 4:
                    jSONObject.put("edgeType", "DEPRESSED");
                    break;
            }
            if (this.zzaoH != 0) {
                jSONObject.put("edgeColor", zzZ(this.zzaoH));
            }
            switch (this.zzaoI) {
                case 0:
                    jSONObject.put("windowType", "NONE");
                    break;
                case 1:
                    jSONObject.put("windowType", "NORMAL");
                    break;
                case 2:
                    jSONObject.put("windowType", "ROUNDED_CORNERS");
                    break;
            }
            if (this.zzaoJ != 0) {
                jSONObject.put("windowColor", zzZ(this.zzaoJ));
            }
            if (this.zzaoI == 2) {
                jSONObject.put("windowRoundedCornerRadius", this.zzaoK);
            }
            if (this.zzaoL != null) {
                jSONObject.put("fontFamily", this.zzaoL);
            }
            switch (this.zzaoM) {
                case 0:
                    jSONObject.put("fontGenericFamily", "SANS_SERIF");
                    break;
                case 1:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SANS_SERIF");
                    break;
                case 2:
                    jSONObject.put("fontGenericFamily", "SERIF");
                    break;
                case 3:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SERIF");
                    break;
                case 4:
                    jSONObject.put("fontGenericFamily", "CASUAL");
                    break;
                case 5:
                    jSONObject.put("fontGenericFamily", "CURSIVE");
                    break;
                case 6:
                    jSONObject.put("fontGenericFamily", "SMALL_CAPITALS");
                    break;
            }
            switch (this.zzaoN) {
                case 0:
                    jSONObject.put("fontStyle", "NORMAL");
                    break;
                case 1:
                    jSONObject.put("fontStyle", "BOLD");
                    break;
                case 2:
                    jSONObject.put("fontStyle", "ITALIC");
                    break;
                case 3:
                    jSONObject.put("fontStyle", "BOLD_ITALIC");
                    break;
            }
            if (this.zzalI != null) {
                jSONObject.put("customData", this.zzalI);
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public void writeToParcel(Parcel parcel, int i) {
        this.zzalH = this.zzalI == null ? null : this.zzalI.toString();
        zzn.zza(this, parcel, i);
    }

    public void zzn(JSONObject jSONObject) throws JSONException {
        String string;
        this.zzaoE = (float) jSONObject.optDouble("fontScale", 1.0d);
        this.zzaoF = zzcI(jSONObject.optString("foregroundColor"));
        this.mBackgroundColor = zzcI(jSONObject.optString("backgroundColor"));
        if (jSONObject.has("edgeType")) {
            string = jSONObject.getString("edgeType");
            if ("NONE".equals(string)) {
                this.zzaoG = 0;
            } else if ("OUTLINE".equals(string)) {
                this.zzaoG = 1;
            } else if ("DROP_SHADOW".equals(string)) {
                this.zzaoG = 2;
            } else if ("RAISED".equals(string)) {
                this.zzaoG = 3;
            } else if ("DEPRESSED".equals(string)) {
                this.zzaoG = 4;
            }
        }
        this.zzaoH = zzcI(jSONObject.optString("edgeColor"));
        if (jSONObject.has("windowType")) {
            string = jSONObject.getString("windowType");
            if ("NONE".equals(string)) {
                this.zzaoI = 0;
            } else if ("NORMAL".equals(string)) {
                this.zzaoI = 1;
            } else if ("ROUNDED_CORNERS".equals(string)) {
                this.zzaoI = 2;
            }
        }
        this.zzaoJ = zzcI(jSONObject.optString("windowColor"));
        if (this.zzaoI == 2) {
            this.zzaoK = jSONObject.optInt("windowRoundedCornerRadius", 0);
        }
        this.zzaoL = jSONObject.optString("fontFamily", null);
        if (jSONObject.has("fontGenericFamily")) {
            string = jSONObject.getString("fontGenericFamily");
            if ("SANS_SERIF".equals(string)) {
                this.zzaoM = 0;
            } else if ("MONOSPACED_SANS_SERIF".equals(string)) {
                this.zzaoM = 1;
            } else if ("SERIF".equals(string)) {
                this.zzaoM = 2;
            } else if ("MONOSPACED_SERIF".equals(string)) {
                this.zzaoM = 3;
            } else if ("CASUAL".equals(string)) {
                this.zzaoM = 4;
            } else if ("CURSIVE".equals(string)) {
                this.zzaoM = 5;
            } else if ("SMALL_CAPITALS".equals(string)) {
                this.zzaoM = 6;
            }
        }
        if (jSONObject.has("fontStyle")) {
            string = jSONObject.getString("fontStyle");
            if ("NORMAL".equals(string)) {
                this.zzaoN = 0;
            } else if ("BOLD".equals(string)) {
                this.zzaoN = 1;
            } else if ("ITALIC".equals(string)) {
                this.zzaoN = 2;
            } else if ("BOLD_ITALIC".equals(string)) {
                this.zzaoN = 3;
            }
        }
        this.zzalI = jSONObject.optJSONObject("customData");
    }
}
