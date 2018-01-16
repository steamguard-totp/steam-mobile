package com.valvesoftware.android.steam.community;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import com.valvesoftware.android.steam.community.SettingInfo.AccessRight;
import com.valvesoftware.android.steam.community.SettingInfo.DateConverter;
import com.valvesoftware.android.steam.community.SettingInfo.RadioSelectorItem;
import com.valvesoftware.android.steam.community.SettingInfo.SettingType;
import com.valvesoftware.android.steam.community.SettingInfo.Transaction;
import com.valvesoftware.android.steam.community.SettingInfo.UpdateListener;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SettingInfoDB extends BroadcastReceiver {
    public static final String URL_SETTINGS_ONLINE = ("steammobile://opencategoryurl?url=" + Config.URL_COMMUNITY_BASE_INSECURE + "/mobilesettings/GetManifest/v0001");
    public static int ringToneSelectorRequestCode = 800;
    private final String m_className = getClass().getName();
    public SettingInfo m_settingChatsAlertLinks;
    public SettingInfo m_settingDOB;
    public SettingInfo m_settingRing;
    public SettingInfo m_settingSound;
    public SettingInfo m_settingSslUntrustedPrompt;
    public SettingInfo m_settingVibrate;
    private ArrayList<SettingInfo> m_settingsList = new ArrayList();
    public SettingInfo m_startScreen;
    public SettingInfo m_usePushInBackground;

    public enum StartScreen {
        Friends(0),
        Groups(1),
        SteamNews(2),
        Catalog(3),
        SteamGuard(4),
        FriendActivity(5),
        Library(6),
        Unknown(-1);
        
        private static final Map<Integer, StartScreen> intToTypeMap = null;
        public final int value;

        static {
            intToTypeMap = new HashMap();
            StartScreen[] values = values();
            int length = values.length;
            int i;
            while (i < length) {
                StartScreen screen = values[i];
                intToTypeMap.put(Integer.valueOf(screen.value), screen);
                i++;
            }
        }

        private StartScreen(int value) {
            this.value = value;
        }

        public static StartScreen fromInt(int i) {
            StartScreen type = (StartScreen) intToTypeMap.get(Integer.valueOf(i));
            if (type == null) {
                return Unknown;
            }
            return type;
        }
    }

    SettingInfoDB() {
        SteamCommunityApplication.GetInstance().registerReceiver(this, new IntentFilter(this.m_className));
        SettingInfo setting = new SettingInfo();
        setting.m_resid = R.string.settings_chat_links_nonsteam;
        setting.m_resid_detailed = R.string.settings_chat_links_nonsteam_details;
        setting.m_key = "chats_links_nonsteam";
        setting.m_defaultValue = "1";
        setting.m_type = SettingType.CHECK;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        this.m_settingChatsAlertLinks = setting;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.settings_personal;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.settings_start_screen;
        RadioSelectorItem[] radios = new RadioSelectorItem[7];
        radios[0] = new RadioSelectorItem();
        radios[0].value = StartScreen.Friends.value;
        radios[0].resid_text = R.string.Friends;
        radios[1] = new RadioSelectorItem();
        radios[1].value = StartScreen.Groups.value;
        radios[1].resid_text = R.string.Groups;
        radios[2] = new RadioSelectorItem();
        radios[2].value = StartScreen.Catalog.value;
        radios[2].resid_text = R.string.Catalog;
        radios[3] = new RadioSelectorItem();
        radios[3].value = StartScreen.SteamNews.value;
        radios[3].resid_text = R.string.Steam_News;
        radios[4] = new RadioSelectorItem();
        radios[4].value = StartScreen.SteamGuard.value;
        radios[4].resid_text = R.string.Steam_Guard;
        radios[5] = new RadioSelectorItem();
        radios[5].value = StartScreen.FriendActivity.value;
        radios[5].resid_text = R.string.Friend_Activity;
        radios[6] = new RadioSelectorItem();
        radios[6].value = StartScreen.Library.value;
        radios[6].resid_text = R.string.Library;
        setting.m_extraData = radios;
        setting.m_key = "start_screen";
        setting.m_defaultValue = String.valueOf(StartScreen.Friends.value);
        setting.m_type = SettingType.RADIOSELECTOR;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        this.m_startScreen = setting;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.settings_personal_dob;
        setting.m_resid_detailed = R.string.settings_personal_dob_instr;
        setting.m_key = "personal_dob";
        setting.m_defaultValue = "";
        setting.m_type = SettingType.DATE;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        setting.m_pUpdateListener = new UpdateListener() {
            public void OnSettingInfoValueUpdate(SettingInfo si, String value, Transaction tr) {
                LoggedInUserAccountInfo.setCookie2("dob", DateConverter.makeUnixTime(value));
                tr.markCookiesForSync();
            }
        };
        this.m_settingDOB = setting;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.settings_notifications_ring;
        setting.m_key = "notifications_ringtone";
        setting.m_defaultValue = "android.resource://com.valvesoftware.android.steam.community/raw/m";
        setting.m_type = SettingType.RINGTONESELECTOR;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        this.m_settingRing = setting;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.settings_notifications_sound;
        radios = new RadioSelectorItem[3];
        radios[0] = new RadioSelectorItem();
        radios[0].value = -1;
        radios[0].resid_text = R.string.settings_notifications_sound_all;
        radios[1] = new RadioSelectorItem();
        radios[1].value = 0;
        radios[1].resid_text = R.string.settings_notifications_sound_first;
        radios[2] = new RadioSelectorItem();
        radios[2].value = 1;
        radios[2].resid_text = R.string.settings_notifications_sound_never;
        setting.m_extraData = radios;
        setting.m_key = "notifications_sound";
        setting.m_defaultValue = String.valueOf(-1);
        setting.m_type = SettingType.RADIOSELECTOR;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        this.m_settingSound = setting;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.settings_notifications_vibrate;
        radios = new RadioSelectorItem[3];
        radios[0] = new RadioSelectorItem();
        radios[0].value = -1;
        radios[0].resid_text = R.string.settings_notifications_vibrate_all;
        radios[1] = new RadioSelectorItem();
        radios[1].value = 0;
        radios[1].resid_text = R.string.settings_notifications_vibrate_first;
        radios[2] = new RadioSelectorItem();
        radios[2].value = 1;
        radios[2].resid_text = R.string.settings_notifications_vibrate_never;
        setting.m_extraData = radios;
        setting.m_key = "notifications_vibrate";
        setting.m_defaultValue = String.valueOf(-1);
        setting.m_type = SettingType.RADIOSELECTOR;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        this.m_settingVibrate = setting;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.settings_notifications_im2;
        radios = new RadioSelectorItem[2];
        radios[0] = new RadioSelectorItem();
        radios[0].value = 1;
        radios[0].resid_text = R.string.settings_notifications_im_detailed;
        radios[1] = new RadioSelectorItem();
        radios[1].value = 0;
        radios[1].resid_text = R.string.settings_notifications_im_off;
        setting.m_extraData = radios;
        setting.m_key = "notifications_im2";
        setting.m_defaultValue = "1";
        setting.m_type = SettingType.RADIOSELECTOR;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        setting.m_pUpdateListener = new UpdateListener() {
            public void OnSettingInfoValueUpdate(SettingInfo si, String value, Transaction tr) {
                UmqCommunicator.getInstance().setServerPushStateBasedOnUserPreference();
            }
        };
        this.m_usePushInBackground = setting;
        this.m_settingsList.add(this.m_usePushInBackground);
        setting = new SettingInfo();
        setting.m_resid = R.string.settings_personal_steam_preferences;
        setting.m_resid_detailed = R.string.settings_personal_steam_preferences_detailed;
        setting.m_defaultValue = URL_SETTINGS_ONLINE;
        setting.m_type = SettingType.URI;
        setting.m_access = AccessRight.VALID_ACCOUNT;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.webview_ssl_untrusted_prompt;
        radios = new RadioSelectorItem[3];
        radios[0] = new RadioSelectorItem();
        radios[0].value = 1;
        radios[0].resid_text = R.string.webview_ssl_untrusted_prompt_cancel;
        radios[1] = new RadioSelectorItem();
        radios[1].value = 0;
        radios[1].resid_text = R.string.webview_ssl_untrusted_prompt_ok_once;
        radios[2] = new RadioSelectorItem();
        radios[2].value = -1;
        radios[2].resid_text = R.string.webview_ssl_untrusted_prompt_ok_always;
        setting.m_extraData = radios;
        setting.m_key = "ssl_untrusted_prompt";
        setting.m_defaultValue = String.valueOf(1);
        setting.m_type = SettingType.RADIOSELECTOR;
        setting.m_access = VERSION.SDK_INT < 8 ? AccessRight.CODE : AccessRight.NONE;
        this.m_settingSslUntrustedPrompt = setting;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.Settings_About;
        setting.m_access = AccessRight.USER;
        this.m_settingsList.add(setting);
        setting = new SettingInfo();
        setting.m_resid = R.string.Settings_Version;
        setting.m_defaultValue = Config.APP_VERSION + " / " + Config.APP_VERSION_ID;
        setting.m_type = SettingType.MARKET;
        setting.m_access = AccessRight.USER;
        this.m_settingsList.add(setting);
    }

    public ArrayList<SettingInfo> GetSettingsList() {
        return this.m_settingsList;
    }

    public void onReceive(Context context, Intent intent) {
    }

    public boolean usePushInBackground() {
        try {
            return this.m_usePushInBackground.getIntegerValue(SteamCommunityApplication.GetInstance().getApplicationContext()) == 1;
        } catch (RuntimeException e) {
            return true;
        }
    }
}
