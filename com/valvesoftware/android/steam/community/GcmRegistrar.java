package com.valvesoftware.android.steam.community;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.util.concurrent.atomic.AtomicInteger;

public class GcmRegistrar {
    private static final Handler gcmHandler = new Handler();
    private final Context context = SteamCommunityApplication.GetInstance().getApplicationContext();
    private AtomicInteger numberOfFailedRegistrationAttempts = new AtomicInteger(0);

    public void registerWithGcm() {
        if (LoggedInUserAccountInfo.getLoginSteamID() != null && checkPlayServices()) {
            new AsyncTask() {
                protected String doInBackground(Object... params) {
                    String msg = "";
                    try {
                        String regId = GoogleCloudMessaging.getInstance(GcmRegistrar.this.context).register("963091912489");
                        msg = "Device registered, registration ID=" + regId;
                        GcmRegistrar.this.storeRegistrationIdAndSendToServer(regId);
                        GcmRegistrar.this.numberOfFailedRegistrationAttempts.set(0);
                        return msg;
                    } catch (Exception ex) {
                        int n = GcmRegistrar.this.numberOfFailedRegistrationAttempts.incrementAndGet();
                        if (n < 6) {
                            GcmRegistrar.gcmHandler.postDelayed(new Runnable() {
                                public void run() {
                                    GcmRegistrar.this.registerWithGcm();
                                }
                            }, (long) ((1 << n) * 1000));
                            return msg;
                        }
                        msg = "Error :" + ex.getMessage();
                        Log.e("GCMRegError", ex.toString());
                        return msg;
                    }
                }
            }.execute(new Object[]{null, null, null});
        }
    }

    public String getStoredRegistrationId() {
        return getGcmPreferences(this.context).getString("registration_id", "");
    }

    public void storeRegistrationIdAndSendToServer(String regId) {
        if (regId != null && regId.length() != 0) {
            SharedPreferences prefs = getGcmPreferences(this.context);
            int appVersion = getAppVersion(this.context);
            Editor editor = prefs.edit();
            editor.putString("registration_id", regId);
            editor.putInt("appVersion", appVersion);
            editor.putLong("lastRegTime", System.currentTimeMillis());
            editor.commit();
            UmqCommunicator.getInstance().setServerPushStateBasedOnUserPreference();
        }
    }

    public void clearStoredRegistrationId() {
        Editor editor = getGcmPreferences(this.context).edit();
        editor.remove("registration_id");
        editor.commit();
    }

    private SharedPreferences getGcmPreferences(Context context) {
        return context.getSharedPreferences(GcmRegistrar.class.getSimpleName(), 0);
    }

    private static int getAppVersion(Context context) {
        int i = 0;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (NameNotFoundException e) {
            return i;
        }
    }

    private boolean checkPlayServices() {
        try {
            if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.context) == 0) {
                return true;
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public void unregister() {
        unregister(true);
    }

    private void unregister(final boolean withRetry) {
        if (checkPlayServices()) {
            new AsyncTask() {
                protected Object doInBackground(Object[] params) {
                    String msg = "";
                    try {
                        GoogleCloudMessaging.getInstance(GcmRegistrar.this.context).unregister();
                        GcmRegistrar.this.clearStoredRegistrationId();
                        return msg;
                    } catch (Exception e) {
                        if (!withRetry) {
                            return "Could not unregister with GCM";
                        }
                        GcmRegistrar.gcmHandler.postDelayed(new Runnable() {
                            public void run() {
                                GcmRegistrar.this.unregister(false);
                            }
                        }, 2000);
                        return msg;
                    }
                }
            }.execute(new Object[]{null, null, null});
        }
    }
}
