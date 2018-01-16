package com.valvesoftware.android.steam.community;

import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.Calendar;

public class CrashHandler implements UncaughtExceptionHandler {
    private UncaughtExceptionHandler m_defaultUEH = null;

    public void register() {
        CrashHandler defaultUEH = Thread.getDefaultUncaughtExceptionHandler();
        if (this != defaultUEH) {
            this.m_defaultUEH = defaultUEH;
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public void uncaughtException(Thread thread, Throwable ex) {
        Writer exWriter = new StringWriter();
        ex.printStackTrace(new PrintWriter(exWriter));
        Calendar cal = Calendar.getInstance();
        String exStackTraceString = "VERSION: " + Config.APP_VERSION_ID + "\nAPPNAME: com.valvesoftware.android.steam.community\nAPPVERSION: " + Config.APP_VERSION + "\nTIMESTAMP: " + (cal.getTimeInMillis() / 1000) + "\nDATETIME: " + cal.getTime().toGMTString() + "\nUSERID: " + VERSION.CODENAME + VERSION.INCREMENTAL + " (" + Build.DEVICE + "/" + Build.PRODUCT + ") " + Build.BRAND + " - " + Build.MANUFACTURER + " - " + Build.DISPLAY + "\nCONTACT: " + LoggedInUserAccountInfo.getLoginSteamID() + "\nSYSTEMVER: " + VERSION.RELEASE + " : " + VERSION.SDK + "\nSYSTEMOS: " + Build.MODEL + "\nSTACKTRACE: \n" + exWriter.toString() + "\n//ENDOFSTACKTRACE//";
        Log.e("crash", exStackTraceString);
        DebugUtilRecord marker = SteamDebugUtil.newDebugUtilRecord(SteamDebugUtil.newDebugUtilRecord(null, null, exStackTraceString), null, (String) null);
        long lStartTime = System.currentTimeMillis();
        while (marker.getId() == 0 && System.currentTimeMillis() - lStartTime < 5000) {
            try {
                Thread.sleep(450);
            } catch (InterruptedException e) {
            }
        }
        if (this.m_defaultUEH != null) {
            this.m_defaultUEH.uncaughtException(thread, ex);
        }
    }
}
