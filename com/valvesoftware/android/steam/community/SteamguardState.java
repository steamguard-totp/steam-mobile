package com.valvesoftware.android.steam.community;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

public class SteamguardState {
    private static Context sContext;
    private static ArrayList<SteamguardState> sSteamGuardStates = new ArrayList();
    private static boolean sbLoadedSteamguardStates = false;
    private boolean mCommitted;
    private JSONObject mInfo;
    private JSONObject mTwoFactorStatus;
    private TwoFactorToken mTwoFactorToken;

    public static abstract class Completion {
        public abstract void failure(int i, String str);

        public abstract void success();
    }

    private enum ETwoFactorEmailType {
        k_ETwoFactorEmailType_None,
        k_ETwoFactorEmailType_Signup,
        k_ETwoFactorEmailType_Added,
        k_ETwoFactorEmailType_Removed
    }

    private enum ETwoFactorTokenType {
        k_ETwoFactorTokenType_None,
        k_ETwoFactorTokenType_ValveMobileApp,
        k_ETwoFactorTokenType_ThirdParty
    }

    class FinalizeTwoFactorState {
        public String activationCode;
        public boolean bSentActivationCode = false;
        public int nSentAuthCodeCount = 0;
        public Scheme oldScheme;
        public int retriesRemaining = 10;
        public long timeOffset = -40;

        public FinalizeTwoFactorState(String activationCode) {
            this.activationCode = activationCode;
            this.oldScheme = SteamguardState.this.getScheme();
        }
    }

    public enum Scheme {
        None,
        Email,
        TwoFactor
    }

    public static void initializeSteamguardState(Context context) {
        sContext = context;
        getSteamGuardStates();
    }

    public static ArrayList<SteamguardState> getSteamGuardStates() {
        if (!sbLoadedSteamguardStates) {
            sbLoadedSteamguardStates = true;
            sSteamGuardStates = loadExistingSteamguardStates();
        }
        return sSteamGuardStates;
    }

    public static boolean hasLiveSteamguardStates() {
        Iterator it = getSteamGuardStates().iterator();
        while (it.hasNext()) {
            if (((SteamguardState) it.next()).getTwoFactorToken() != null) {
                return true;
            }
        }
        return false;
    }

    public static ArrayList<SteamguardState> getTwoFactorSteamGuardStates() {
        ArrayList<SteamguardState> result = new ArrayList();
        Iterator it = getSteamGuardStates().iterator();
        while (it.hasNext()) {
            SteamguardState sgState = (SteamguardState) it.next();
            if (sgState.getTwoFactorToken() != null) {
                result.add(sgState);
            }
        }
        return result;
    }

    public static ArrayList<SteamguardState> getSortedTwoFactorSteamGuardStates() {
        ArrayList<SteamguardState> sgStates = getTwoFactorSteamGuardStates();
        Collections.sort(sgStates, new Comparator<SteamguardState>() {
            public int compare(SteamguardState sg1, SteamguardState sg2) {
                return sg1.getAccountName().compareToIgnoreCase(sg2.getAccountName());
            }
        });
        return sgStates;
    }

    public static SteamguardState steamguardStateForLoggedInUser() {
        return steamguardStateForSteamID(LoggedInUserAccountInfo.getLoginSteamID());
    }

    public static SteamguardState steamguardStateForSteamID(String steamID) {
        if (steamID == null) {
            return null;
        }
        Iterator it = sSteamGuardStates.iterator();
        while (it.hasNext()) {
            SteamguardState steamguardState = (SteamguardState) it.next();
            if (steamguardState.getSteamId().equals(steamID)) {
                return steamguardState;
            }
        }
        SteamguardState sgState = new SteamguardState(steamID);
        sSteamGuardStates.add(sgState);
        return sgState;
    }

    public static SteamguardState steamguardStateForGID(String gidString) {
        if (gidString == null) {
            return null;
        }
        Iterator it = sSteamGuardStates.iterator();
        while (it.hasNext()) {
            SteamguardState steamguardState = (SteamguardState) it.next();
            if (steamguardState.getTokenGID().equals(gidString)) {
                return steamguardState;
            }
        }
        return null;
    }

    public static Scheme stringToScheme(String schemeName) {
        if (schemeName == null) {
            return null;
        }
        for (Scheme scheme : Scheme.values()) {
            if (schemeName.equalsIgnoreCase(scheme.toString())) {
                return scheme;
            }
        }
        return null;
    }

    static Scheme schemeNumberStringToScheme(String s) {
        if (s == null) {
            return null;
        }
        int n = Integer.parseInt(s);
        for (Scheme sch : Scheme.values()) {
            if (sch.ordinal() == n) {
                return sch;
            }
        }
        return null;
    }

    public static int installSecret(String base64String) {
        String jsonString = null;
        try {
            jsonString = new String(Base64.decode(base64String.getBytes(), 0), "UTF-8");
        } catch (Exception e) {
        }
        if (jsonString == null) {
            return -1;
        }
        JSONObject json = null;
        try {
            json = new JSONObject(jsonString);
        } catch (Exception e2) {
        }
        if (json == null) {
            return -1;
        }
        String steamID = json.optString("steamid");
        if (steamID == null) {
            return -1;
        }
        SteamguardState sgState = steamguardStateForSteamID(steamID);
        if (sgState == null) {
            return -1;
        }
        sgState.updateFromJSON(json);
        return 0;
    }

    public static void broadcastSteamguardStateAdded(String gid) {
        Intent intent = new Intent();
        intent.setAction("TWOFACTORCODES_CHANGED");
        intent.putExtra("com.valve.community.added", gid);
        sContext.sendBroadcast(intent);
    }

    public static void broadcastSteamguardStateRemoved(String gid) {
        Intent intent = new Intent();
        intent.setAction("TWOFACTORCODES_CHANGED");
        intent.putExtra("com.valve.community.removed", gid);
        sContext.sendBroadcast(intent);
    }

    public SteamguardState(String steamId) {
        this.mInfo = new JSONObject();
        try {
            this.mInfo.put("steamid", steamId);
        } catch (JSONException e) {
        }
        this.mCommitted = true;
    }

    public SteamguardState(JSONObject properties) {
        this.mInfo = properties;
        this.mCommitted = true;
    }

    public String getSteamId() {
        return this.mInfo.optString("steamid");
    }

    public String getAccountName() {
        return this.mInfo.optString("account_name");
    }

    public TwoFactorToken getTwoFactorToken() {
        if (getScheme() != Scheme.TwoFactor) {
            return null;
        }
        if (this.mTwoFactorToken == null) {
            this.mTwoFactorToken = new TwoFactorToken(this.mInfo);
        }
        return this.mTwoFactorToken;
    }

    public String getTokenGID() {
        return this.mInfo.optString("token_gid");
    }

    public String getRevocationCode() {
        return this.mInfo.optString("revocation_code");
    }

    public Scheme getScheme() {
        return schemeNumberStringToScheme(this.mInfo.optString("steamguard_scheme", "0"));
    }

    public boolean saveToFile() {
        OutputStream outputStream = null;
        try {
            outputStream = sContext.openFileOutput(stateFileForSteamId(getSteamId()), 0);
            outputStream.write(this.mInfo.toString().getBytes());
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                }
            }
            return true;
        } catch (FileNotFoundException e2) {
            if (outputStream == null) {
                return false;
            }
            try {
                outputStream.close();
                return false;
            } catch (IOException e3) {
                return false;
            }
        } catch (IOException e4) {
            if (outputStream == null) {
                return false;
            }
            try {
                outputStream.close();
                return false;
            } catch (IOException e5) {
                return false;
            }
        } catch (Throwable th) {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e6) {
                }
            }
        }
    }

    private static SteamguardState loadFromFile(Context context, String filename) {
        InputStream inputStream = null;
        try {
            inputStream = context.openFileInput(filename);
            byte[] buffer = new byte[inputStream.available()];
            inputStream.read(buffer, 0, inputStream.available());
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                }
            }
            JSONObject jsonObject = null;
            try {
                jsonObject = new JSONObject(new String(buffer));
            } catch (JSONException e2) {
            }
            if (jsonObject != null) {
                return new SteamguardState(jsonObject);
            }
            return null;
        } catch (IOException e3) {
            if (inputStream == null) {
                return null;
            }
            try {
                inputStream.close();
                return null;
            } catch (IOException e4) {
                return null;
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e5) {
                }
            }
        }
    }

    private static ArrayList<SteamguardState> loadExistingSteamguardStates() {
        ArrayList<SteamguardState> ar = new ArrayList();
        for (File file : sContext.getFilesDir().listFiles()) {
            if (file.getName() != null && file.getName().startsWith("Steamguard-")) {
                SteamguardState steamguardState = loadFromFile(sContext, file.getName());
                if (steamguardState != null) {
                    ar.add(steamguardState);
                }
            }
        }
        return ar;
    }

    public void updateFromJSON(JSONObject properties) {
        this.mInfo = properties;
        this.mCommitted = true;
        this.mTwoFactorToken = null;
        saveToFile();
        if (getTokenGID() != null) {
            broadcastSteamguardStateAdded(getTokenGID());
        }
    }

    private static String stateFileForSteamId(String steamId) {
        return String.format(Locale.US, "%s%s", new Object[]{"Steamguard-", steamId});
    }

    public void sanitize() {
        int i = 0;
        String[] saveProperties = new String[]{"steamguard_scheme", "steamid", "account_name"};
        JSONObject newInfo = new JSONObject();
        int length = saveProperties.length;
        while (i < length) {
            String property = saveProperties[i];
            if (this.mInfo.has(property)) {
                try {
                    newInfo.put(property, this.mInfo.optString(property));
                } catch (JSONException e) {
                }
            }
            i++;
        }
        this.mInfo = newInfo;
    }

    public void startGetTwoFactorStatus() {
        RequestBuilder requestBuilder = Endpoints.getTwoFactorQueryStatusRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID());
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject json) {
                SteamguardState.this.handleTwoFactorStatus(json);
            }

            public void onError(RequestErrorInfo errorInfo) {
            }
        });
        sendRequest(requestBuilder);
    }

    public void startSetScheme(Scheme newScheme, String smsPhoneId, Completion completion) {
        if (newScheme == Scheme.TwoFactor && getScheme() == Scheme.TwoFactor) {
            String tokenGID = getTokenGID();
            internalSetScheme(Scheme.None);
            sanitize();
            saveToFile();
            broadcastSteamguardStateRemoved(tokenGID);
            startAddTwoFactor(smsPhoneId, completion);
        } else if (newScheme == Scheme.TwoFactor) {
            startAddTwoFactor(smsPhoneId, completion);
        } else {
            internalStartSetScheme(newScheme, completion);
        }
    }

    private void sendRequest(RequestBuilder requestBuilder) {
        SteamCommunityApplication.GetInstance().sendRequest(requestBuilder);
    }

    private void finalizeHelperErrorCleanup(FinalizeTwoFactorState finalizeTwoFactorState) {
        if (finalizeTwoFactorState.nSentAuthCodeCount > 0) {
            internalSetScheme(finalizeTwoFactorState.oldScheme);
            sanitize();
            saveToFile();
            this.mCommitted = false;
        }
    }

    private void finalizeAddTwoFactorHelper(final FinalizeTwoFactorState finalizeTwoFactorState, final Completion completion) {
        RequestBuilder requestBuilder;
        long authenticator_time = this.mTwoFactorToken.currentTime() + finalizeTwoFactorState.timeOffset;
        if (finalizeTwoFactorState.bSentActivationCode) {
            requestBuilder = Endpoints.getTwoFactorFinalizeAddAuthenticatorRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID(), null, this.mTwoFactorToken.generateSteamGuardCodeForTime(authenticator_time), authenticator_time);
            if (finalizeTwoFactorState.nSentAuthCodeCount == 0) {
                this.mCommitted = true;
                internalSetScheme(Scheme.TwoFactor);
                saveToFile();
            }
            finalizeTwoFactorState.nSentAuthCodeCount++;
        } else {
            requestBuilder = Endpoints.getTwoFactorFinalizeAddAuthenticatorRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID(), finalizeTwoFactorState.activationCode, null, authenticator_time);
        }
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject json) {
                if (!json.optBoolean("success")) {
                    SteamguardState.this.finalizeHelperErrorCleanup(finalizeTwoFactorState);
                    if (json.optInt("status") == 89) {
                        completion.failure(json.optInt("status"), SteamguardState.sContext.getResources().getString(R.string.SteamMobile_Steamguard_BadCode));
                        return;
                    }
                    completion.failure(json.optInt("status"), null);
                } else if (!json.optBoolean("want_more")) {
                    SteamguardState.broadcastSteamguardStateAdded(SteamguardState.this.getTokenGID());
                    completion.success();
                } else if (finalizeTwoFactorState.retriesRemaining <= 0) {
                    SteamguardState.this.finalizeHelperErrorCleanup(finalizeTwoFactorState);
                    completion.failure(-1, null);
                } else {
                    if (finalizeTwoFactorState.bSentActivationCode) {
                        FinalizeTwoFactorState finalizeTwoFactorState = finalizeTwoFactorState;
                        finalizeTwoFactorState.timeOffset += 30;
                        finalizeTwoFactorState = finalizeTwoFactorState;
                        finalizeTwoFactorState.retriesRemaining--;
                    } else {
                        finalizeTwoFactorState.bSentActivationCode = true;
                    }
                    SteamguardState.this.finalizeAddTwoFactorHelper(finalizeTwoFactorState, completion);
                }
            }

            public void onError(RequestErrorInfo errorInfo) {
                if (finalizeTwoFactorState.retriesRemaining > 0) {
                    FinalizeTwoFactorState finalizeTwoFactorState = finalizeTwoFactorState;
                    finalizeTwoFactorState.timeOffset += 30;
                    finalizeTwoFactorState = finalizeTwoFactorState;
                    finalizeTwoFactorState.retriesRemaining--;
                    SteamguardState.this.finalizeAddTwoFactorHelper(finalizeTwoFactorState, completion);
                } else if (finalizeTwoFactorState.nSentAuthCodeCount > 0) {
                    SteamguardState.broadcastSteamguardStateAdded(SteamguardState.this.getTokenGID());
                    completion.success();
                } else {
                    completion.failure(-1, null);
                }
            }
        });
        sendRequest(requestBuilder);
    }

    public void finalizeAddTwoFactor(String activationCode, Completion completion) {
        finalizeAddTwoFactorHelper(new FinalizeTwoFactorState(activationCode), completion);
    }

    private static void mergeJson(JSONObject dest, JSONObject obj) {
        Iterator<String> iter = obj.keys();
        while (iter.hasNext()) {
            String key = (String) iter.next();
            try {
                dest.put(key, obj.get(key));
            } catch (JSONException e) {
            }
        }
    }

    private void startAddTwoFactor(String smsPhoneId, final Completion completion) {
        RequestBuilder requestBuilder = Endpoints.getAddAuthenticatorRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID(), Integer.toString(ETwoFactorTokenType.k_ETwoFactorTokenType_ValveMobileApp.ordinal()), getUniqueIdForPhone());
        if (smsPhoneId != null) {
            requestBuilder.appendKeyValue("sms_phone_id", smsPhoneId);
        }
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject json) {
                SteamguardState.mergeJson(SteamguardState.this.mInfo, json);
                SteamguardState.this.mTwoFactorToken = new TwoFactorToken(SteamguardState.this.mInfo);
                if (json.has("shared_secret")) {
                    SteamguardState.this.sendActivationCodeEmail();
                    completion.success();
                    return;
                }
                completion.failure(-1, null);
            }

            public void onError(RequestErrorInfo errorInfo) {
                completion.failure(-1, null);
            }
        });
        sendRequest(requestBuilder);
    }

    public static String getUniqueIdForPhone() {
        SharedPreferences sharedPreferences = sContext.getSharedPreferences("steam.uuid", 0);
        String savedId = sharedPreferences.getString("uuidKey", "");
        if (savedId.length() > 0) {
            return savedId;
        }
        String generatedId = null;
        try {
            generatedId = UUID.randomUUID().toString();
        } catch (Exception ex) {
            Log.e("RandomUUID", ex.toString());
        }
        if (generatedId == null) {
            GregorianCalendar cal = new GregorianCalendar();
            generatedId = String.format(Locale.US, "%d", new Object[]{Long.valueOf(cal.getTimeInMillis())});
        }
        String result = String.format(Locale.US, "android:%s", new Object[]{generatedId});
        sharedPreferences.edit().putString("uuidKey", result).commit();
        return result;
    }

    public void sendActivationCodeEmail() {
        sendEmailOfType(ETwoFactorEmailType.k_ETwoFactorEmailType_Signup, "include_activation_code", "1");
    }

    private void sendRemovalEmail() {
        sendEmailOfType(ETwoFactorEmailType.k_ETwoFactorEmailType_Removed, new String[0]);
    }

    private void sendEmailOfType(ETwoFactorEmailType emailType, String... arguments) {
        RequestBuilder requestBuilder = Endpoints.getTwoFactorSendEmailRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID(), emailType.ordinal());
        for (int i = 0; i + 1 < arguments.length; i += 2) {
            requestBuilder.appendKeyValue(arguments[i], arguments[i + 1]);
        }
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject response) {
                response.toString();
                response.toString();
            }

            public void onError(RequestErrorInfo errorInfo) {
                errorInfo.toString();
                errorInfo.toString();
            }
        });
        sendRequest(requestBuilder);
    }

    public void removeTwoFactorForScheme(Scheme newScheme) {
        if (newScheme != null && newScheme != Scheme.TwoFactor) {
            String gid = getTokenGID();
            internalSetScheme(newScheme);
            sanitize();
            saveToFile();
            broadcastSteamguardStateRemoved(gid);
        }
    }

    private void handleTwoFactorStatus(JSONObject json) {
        this.mTwoFactorStatus = json;
        if (getScheme() == Scheme.TwoFactor) {
            Scheme serverScheme = schemeNumberStringToScheme(json.optString("steamguard_scheme"));
            String serverGid = json.optString("token_gid");
            if (serverScheme == null) {
                return;
            }
            if (serverScheme != Scheme.TwoFactor || serverGid != null) {
                if (getScheme() == Scheme.TwoFactor) {
                    removeTwoFactorForScheme(serverScheme);
                } else if (getTokenGID() != null && serverGid.compareTo(getTokenGID()) != 0) {
                    removeTwoFactorForScheme(Scheme.Email);
                }
            }
        }
    }

    private void internalStartSetScheme(final Scheme newScheme, final Completion completion) {
        final String oldScheme = this.mInfo.optString("steamguard_scheme");
        RequestBuilder requestBuilder = Endpoints.getRemoveAuthenticatorRequestBuilder(LoggedInUserAccountInfo.getLoginSteamID(), Integer.toString(newScheme.ordinal()), this.mInfo.optString("revocation_code", null));
        requestBuilder.setResponseListener(new ResponseListener() {
            public void onSuccess(JSONObject json) {
                if (json.optBoolean("success")) {
                    if (oldScheme.equals(Integer.toString(Scheme.TwoFactor.ordinal()))) {
                        SteamguardState.this.sendRemovalEmail();
                    }
                    String gid = SteamguardState.this.getTokenGID();
                    SteamguardState.this.sanitize();
                    SteamguardState.this.internalSetScheme(newScheme);
                    SteamguardState.this.saveToFile();
                    SteamguardState.broadcastSteamguardStateRemoved(gid);
                    completion.success();
                    return;
                }
                completion.failure(-1, null);
            }

            public void onError(RequestErrorInfo errorInfo) {
                errorInfo.toString();
                completion.failure(-1, null);
            }
        });
        sendRequest(requestBuilder);
    }

    private void internalSetScheme(Scheme newScheme) {
        try {
            this.mInfo.put("steamguard_scheme", Integer.toString(newScheme.ordinal()));
        } catch (JSONException e) {
        }
    }

    static String percentEncodeUrlUnsafeChars(String s) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '+' || c == '/' || c == '=') {
                sb.append(String.format(Locale.US, "%%%02x", new Object[]{Integer.valueOf(c)}));
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    private String base64encryptedConfirmationHash(long time, String tag) {
        String sSecret = this.mInfo.optString("identity_secret");
        if (sSecret == null) {
            return "";
        }
        byte[] secretBytes = Base64.decode(sSecret.getBytes(), 0);
        int dataLen = 8;
        if (tag != null) {
            if (tag.length() > 32) {
                dataLen = 8 + 32;
            } else {
                dataLen = 8 + tag.length();
            }
        }
        byte[] dataBytes = new byte[dataLen];
        int i = 8;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                break;
            }
            dataBytes[i2] = (byte) ((int) time);
            time >>>= 8;
            i = i2;
        }
        if (tag != null) {
            System.arraycopy(tag.getBytes(), 0, dataBytes, 8, dataLen - 8);
        }
        SecretKeySpec signKey = new SecretKeySpec(secretBytes, "HmacSHA1");
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(signKey);
            return percentEncodeUrlUnsafeChars(Base64.encodeToString(mac.doFinal(dataBytes), 2));
        } catch (NoSuchAlgorithmException e) {
            return null;
        } catch (InvalidKeyException e2) {
            return null;
        }
    }

    public String getConfirmationUrl() {
        if (base64encryptedConfirmationHash(TimeCorrector.getInstance().currentTimeSeconds(), "conf") == null) {
            return "";
        }
        return String.format(Locale.US, "%s?p=%s&a=%s&k=%s&t=%d&m=android&tag=%s", new Object[]{SteamAppUri.CONFIRMATION_WEB, getUniqueIdForPhone(), getSteamId(), base64encryptedConfirmationHash(TimeCorrector.getInstance().currentTimeSeconds(), "conf"), Long.valueOf(TimeCorrector.getInstance().currentTimeSeconds()), "conf"});
    }

    public String getTaggedConfirmationUrlParams(String tag) {
        if (base64encryptedConfirmationHash(TimeCorrector.getInstance().currentTimeSeconds(), tag) == null) {
            return "";
        }
        return String.format(Locale.US, "p=%s&a=%s&k=%s&t=%d&m=android&tag=%s", new Object[]{getUniqueIdForPhone(), getSteamId(), base64encryptedConfirmationHash(TimeCorrector.getInstance().currentTimeSeconds(), tag), Long.valueOf(TimeCorrector.getInstance().currentTimeSeconds()), tag});
    }

    public static void handleTwoFactorRemovalNotification(String gidString, String newSchemeString) {
        if (gidString != null && newSchemeString != null) {
            SteamguardState sgState = steamguardStateForGID(gidString);
            if (sgState != null) {
                Scheme newScheme = stringToScheme(newSchemeString);
                if (newScheme != null) {
                    sgState.removeTwoFactorForScheme(newScheme);
                }
            }
        }
    }
}
