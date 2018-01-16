package com.valvesoftware.android.steam.community;

import android.util.Base64;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

public class TwoFactorToken {
    private static final byte[] s_rgchSteamguardCodeChars = new byte[]{(byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 66, (byte) 67, (byte) 68, (byte) 70, (byte) 71, (byte) 72, (byte) 74, (byte) 75, (byte) 77, (byte) 78, (byte) 80, (byte) 81, (byte) 82, (byte) 84, (byte) 86, (byte) 87, (byte) 88, (byte) 89};
    byte[] mSecret;

    public TwoFactorToken(JSONObject json) {
        String sSecret = json.optString("shared_secret");
        if (sSecret != null && sSecret.length() > 0) {
            this.mSecret = Base64.decode(sSecret.getBytes(), 0);
        }
    }

    public final String generateSteamGuardCode() {
        return generateSteamGuardCodeForTime(currentTime());
    }

    public final String generateSteamGuardCodeForTime(long time) {
        if (this.mSecret == null) {
            return "";
        }
        time /= 30;
        byte[] timeBytes = new byte[8];
        int i = 8;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                break;
            }
            timeBytes[i2] = (byte) ((int) time);
            time >>>= 8;
            i = i2;
        }
        SecretKeySpec signKey = new SecretKeySpec(this.mSecret, "HmacSHA1");
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(signKey);
            byte[] hmac_result = mac.doFinal(timeBytes);
            int offset = hmac_result[19] & 15;
            int bin_code = ((((hmac_result[offset] & 127) << 24) | ((hmac_result[offset + 1] & 255) << 16)) | ((hmac_result[offset + 2] & 255) << 8)) | (hmac_result[offset + 3] & 255);
            byte[] resultBytes = new byte[5];
            for (i2 = 0; i2 < 5; i2++) {
                resultBytes[i2] = s_rgchSteamguardCodeChars[bin_code % s_rgchSteamguardCodeChars.length];
                bin_code /= s_rgchSteamguardCodeChars.length;
            }
            return new String(resultBytes);
        } catch (NoSuchAlgorithmException e) {
            return null;
        } catch (InvalidKeyException e2) {
            return null;
        }
    }

    public final long currentTime() {
        return TimeCorrector.getInstance().currentTimeSeconds();
    }

    public final int secondsToNextChange() {
        return (int) (30 - (currentTime() % 30));
    }
}
