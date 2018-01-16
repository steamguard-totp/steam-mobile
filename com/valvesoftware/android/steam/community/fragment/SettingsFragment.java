package com.valvesoftware.android.steam.community.fragment;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DatePickerDialog.OnDateSetListener;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.DatePicker;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.valvesoftware.android.steam.community.LoggedInUserAccountInfo;
import com.valvesoftware.android.steam.community.PersonaRepository;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.RepositoryCallback;
import com.valvesoftware.android.steam.community.SettingInfo;
import com.valvesoftware.android.steam.community.SettingInfo.CustomDatePickerDialog;
import com.valvesoftware.android.steam.community.SettingInfo.DateConverter;
import com.valvesoftware.android.steam.community.SettingInfo.RadioSelectorItem;
import com.valvesoftware.android.steam.community.SettingInfoDB;
import com.valvesoftware.android.steam.community.SteamAppIntents;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.activity.ActivityHelper;
import com.valvesoftware.android.steam.community.model.Persona;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.ImageRequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.ImageResponseListener;
import java.util.ArrayList;
import java.util.Calendar;

public class SettingsFragment extends ListFragment {
    private SettingsListAdapter m_SettingsAdapter = null;
    private boolean m_bLoggedOnPresentation = false;
    private ListView m_listView = null;
    private Activity m_owner = null;
    private ArrayList<SettingInfo> m_settingsInfoArray = new ArrayList();
    private View m_viewProfile = null;

    public static class RadioSelectorItemOnClickListener implements OnClickListener {
        Activity activity;
        AlertDialog alert;
        DialogInterface.OnClickListener m_onRadioButtonSelected = new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int item) {
                RadioSelectorItem[] radios = (RadioSelectorItem[]) RadioSelectorItemOnClickListener.this.settingInfo.m_extraData;
                if (item >= 0 && item < radios.length) {
                    if (RadioSelectorItemOnClickListener.this.valueView != null) {
                        RadioSelectorItemOnClickListener.this.valueView.setText(radios[item].resid_text);
                    }
                    RadioSelectorItemOnClickListener.this.settingInfo.setValueAndCommit(RadioSelectorItemOnClickListener.this.activity.getApplicationContext(), String.valueOf(radios[item].value));
                    RadioSelectorItemOnClickListener.this.alert.dismiss();
                    RadioSelectorItemOnClickListener.this.onSettingChanged(radios[item]);
                }
            }
        };
        SettingInfo settingInfo;
        TextView valueView;

        public RadioSelectorItemOnClickListener(Activity act, SettingInfo si, TextView value) {
            this.activity = act;
            this.settingInfo = si;
            this.valueView = value;
        }

        public void onClick(View btn) {
            Builder builder = new Builder(this.activity);
            builder.setTitle(this.settingInfo.m_resid);
            RadioSelectorItem[] radios = (RadioSelectorItem[]) this.settingInfo.m_extraData;
            CharSequence[] builderItems = new CharSequence[radios.length];
            RadioSelectorItem rsiValue = this.settingInfo.getRadioSelectorItemValue(this.activity.getApplicationContext());
            int iCheckedItem = -1;
            for (int j = 0; j < radios.length; j++) {
                builderItems[j] = this.activity.getString(radios[j].resid_text);
                if (rsiValue == radios[j]) {
                    iCheckedItem = j;
                }
            }
            builder.setSingleChoiceItems(builderItems, iCheckedItem, this.m_onRadioButtonSelected);
            this.alert = builder.create();
            this.alert.show();
        }

        public void onSettingChanged(RadioSelectorItem sel) {
        }
    }

    private class SettingsListAdapter extends ArrayAdapter<SettingInfo> {
        private ArrayList<SettingInfo> items;

        public SettingsListAdapter(Context context, int textViewResourceId, ArrayList<SettingInfo> items) {
            super(context, textViewResourceId, items);
            this.items = items;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            View v = convertView;
            final SettingInfo settingInfo = (SettingInfo) this.items.get(position);
            if (settingInfo == null) {
                return v;
            }
            if (v == null) {
                v = ((LayoutInflater) SettingsFragment.this.m_owner.getSystemService("layout_inflater")).inflate(R.layout.settings_list_item_info, null);
                v.setClickable(true);
            }
            v.setOnClickListener(null);
            TextView titleView = (TextView) v.findViewById(R.id.label);
            titleView.setText(settingInfo.m_resid);
            final TextView valueView = (TextView) v.findViewById(R.id.info);
            valueView.setText("");
            if (settingInfo.m_resid_detailed != 0) {
                valueView.setText(settingInfo.m_resid_detailed);
            }
            final ImageView chevronView = (ImageView) v.findViewById(R.id.imageChevron);
            chevronView.setVisibility(8);
            final CheckBox checkBox = (CheckBox) v.findViewById(R.id.setting_checkbox);
            checkBox.setVisibility(8);
            switch (settingInfo.m_type) {
                case INFO:
                    valueView.setText(settingInfo.m_defaultValue);
                    break;
                case CHECK:
                    boolean bValue = settingInfo.getBooleanValue(SettingsFragment.this.m_owner.getApplicationContext());
                    checkBox.setVisibility(0);
                    checkBox.setChecked(bValue);
                    checkBox.setOnCheckedChangeListener(new OnCheckedChangeListener() {
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                            settingInfo.setValueAndCommit(SettingsFragment.this.m_owner.getApplicationContext(), isChecked ? "1" : "");
                        }
                    });
                    v.setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            checkBox.setChecked(!checkBox.isChecked());
                        }
                    });
                    break;
                case DATE:
                    chevronView.setVisibility(0);
                    String sValue = settingInfo.getValue(SettingsFragment.this.m_owner.getApplicationContext());
                    final Calendar myDOB = DateConverter.makeCalendar(sValue);
                    if (sValue == null || sValue.equals("")) {
                        valueView.setText(R.string.date_not_set);
                    } else {
                        valueView.setText(DateConverter.formatDate(sValue));
                    }
                    v.setOnClickListener(new OnClickListener() {
                        public void onClick(View btn) {
                            Context context = SettingsFragment.this.m_owner;
                            if (VERSION.SDK_INT > 10) {
                                context = new ContextThemeWrapper(context, 16973939);
                            }
                            new CustomDatePickerDialog(context, new OnDateSetListener() {
                                public void onDateSet(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
                                    myDOB.set(year, monthOfYear, dayOfMonth);
                                    String sValue = DateConverter.makeValue(year, monthOfYear, dayOfMonth);
                                    if (!(sValue == null || sValue.equals(""))) {
                                        valueView.setText(DateConverter.formatDate(sValue));
                                    }
                                    settingInfo.setValueAndCommit(SettingsFragment.this.m_owner.getApplicationContext(), sValue);
                                }
                            }, myDOB, R.string.settings_personal_dob_instr).show();
                        }
                    });
                    break;
                case URI:
                    chevronView.setVisibility(0);
                    v.setOnClickListener(new OnClickListener() {
                        public void onClick(View btn) {
                            SettingsFragment.this.startActivity(SteamAppIntents.mainActivityIntent(SettingsFragment.this.getActivity(), Uri.parse(settingInfo.m_defaultValue)));
                        }
                    });
                    break;
                case MARKET:
                    chevronView.setVisibility(0);
                    valueView.setText(settingInfo.m_defaultValue);
                    v.setOnClickListener(new OnClickListener() {
                        public void onClick(View btn) {
                            try {
                                SettingsFragment.this.getActivity().startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse("market://details?id=com.valvesoftware.android.steam.community")));
                            } catch (Exception e) {
                                valueView.setText(settingInfo.m_defaultValue + " / " + SettingsFragment.this.getActivity().getString(R.string.Market_Unavailable));
                                try {
                                    SettingsFragment.this.getActivity().startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse("http://store.steampowered.com/mobile")));
                                } catch (Exception e2) {
                                    chevronView.setVisibility(8);
                                }
                            }
                        }
                    });
                    break;
                case RADIOSELECTOR:
                    chevronView.setVisibility(0);
                    valueView.setText(settingInfo.getRadioSelectorItemValue(SettingsFragment.this.m_owner.getApplicationContext()).resid_text);
                    v.setOnClickListener(new RadioSelectorItemOnClickListener(SettingsFragment.this.getActivity(), settingInfo, valueView));
                    break;
                case RINGTONESELECTOR:
                    chevronView.setVisibility(0);
                    try {
                        String curValue = settingInfo.getValue(SettingsFragment.this.m_owner.getApplicationContext());
                        if (curValue == null || !settingInfo.m_defaultValue.equals(curValue)) {
                            valueView.setText(RingtoneManager.getRingtone(SettingsFragment.this.getActivity(), Uri.parse(curValue)).getTitle(SettingsFragment.this.getActivity()));
                            v.setOnClickListener(new OnClickListener() {
                                public void onClick(View v) {
                                    try {
                                        Intent intent = new Intent("android.intent.action.RINGTONE_PICKER");
                                        intent.putExtra("android.intent.extra.ringtone.TYPE", 2);
                                        intent.putExtra("android.intent.extra.ringtone.TITLE", SettingsFragment.this.getActivity().getString(settingInfo.m_resid));
                                        try {
                                            intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", Uri.parse(settingInfo.getValue(SettingsFragment.this.m_owner.getApplicationContext())));
                                        } catch (Exception e) {
                                            intent.putExtra("android.intent.extra.ringtone.EXISTING_URI", (Uri) null);
                                        }
                                        intent.putExtra("android.intent.extra.ringtone.DEFAULT_URI", Uri.parse(settingInfo.m_defaultValue));
                                        intent.putExtra("android.intent.extra.ringtone.SHOW_DEFAULT", true);
                                        intent.putExtra("android.intent.extra.ringtone.SHOW_SILENT", false);
                                        SettingsFragment.this.getActivity().startActivityForResult(intent, SettingInfoDB.ringToneSelectorRequestCode);
                                    } catch (Exception e2) {
                                    }
                                }
                            });
                            break;
                        }
                        valueView.setText(R.string.settings_notifications_ring_steam);
                        v.setOnClickListener(/* anonymous class already generated */);
                    } catch (Exception e) {
                        valueView.setText(R.string.settings_notifications_ring_default);
                    }
                    break;
                case UNREADMSG:
                    chevronView.setVisibility(0);
                    int numUnreadMsgs = 0;
                    if (LoggedInUserAccountInfo.isLoggedIn()) {
                        numUnreadMsgs = 0;
                    }
                    titleView.setText(SettingsFragment.this.getActivity().getString(settingInfo.m_resid).replace("#", String.valueOf(numUnreadMsgs)));
                    v.setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            SettingsFragment.this.refreshListView();
                        }
                    });
                    break;
            }
            return v;
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.settings_fragment, container, false);
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.m_owner = getActivity();
        if (this.m_SettingsAdapter == null) {
            this.m_SettingsAdapter = new SettingsListAdapter(this.m_owner, R.layout.settings_list_item_info, this.m_settingsInfoArray);
        }
        if (this.m_listView == null) {
            this.m_listView = getListView();
        }
        setListAdapter(this.m_SettingsAdapter);
        if (this.m_owner != null && ActivityHelper.fragmentIsActive(this)) {
            this.m_owner.setTitle(R.string.Settings);
        }
    }

    public void onResume() {
        super.onResume();
        if (getActivity() != null) {
            refreshListView();
        }
    }

    private void setupUserAccountView(View v) {
        v = getView();
        if (v != null) {
            final TextView nameView = (TextView) v.findViewById(R.id.name);
            final ImageView avatarView = (ImageView) v.findViewById(R.id.avatar);
            ImageView avatarViewFrame = (ImageView) v.findViewById(R.id.avatar_frame);
            View avatarNameContainer = v.findViewById(R.id.avatar_name_container);
            avatarView.setImageResource(R.drawable.placeholder_contact);
            avatarNameContainer.setOnClickListener(new OnClickListener() {
                public void onClick(View v) {
                    SettingsFragment.this.getActivity().startActivity(SteamAppIntents.visitProfileIntent(SettingsFragment.this.getActivity(), LoggedInUserAccountInfo.getLoginSteamID()));
                }
            });
            PersonaRepository.getDetailedPersonaInfo(LoggedInUserAccountInfo.getLoginSteamID(), new RepositoryCallback<Persona>() {
                public void dataAvailable(Persona persona) {
                    if (persona != null) {
                        nameView.setText(persona.personaName);
                        SettingsFragment.this.getAvatar(persona, avatarView);
                    }
                }

                public void end() {
                }
            });
            avatarViewFrame.setImageResource(null != null ? R.drawable.avatar_frame_online : R.drawable.avatar_frame_offline);
            nameView.setTextColor(getActivity().getResources().getColor(null != null ? R.color.online : R.color.offline));
        }
    }

    private void getAvatar(Persona loggedInUser, final ImageView avatarView) {
        ImageRequestBuilder requestBuilder = Endpoints.getImageUrlRequestBuilder(loggedInUser.fullAvatarUrl);
        requestBuilder.setResponseListener(new ImageResponseListener() {
            public void onSuccess(Bitmap bitmap) {
                avatarView.setImageBitmap(bitmap);
            }
        });
        SteamCommunityApplication.GetInstance().sendRequest(requestBuilder);
    }

    public void refreshListView() {
        this.m_bLoggedOnPresentation = LoggedInUserAccountInfo.isLoggedIn();
        this.m_settingsInfoArray.clear();
        setupUserAccountView(this.m_viewProfile);
        SettingInfoDB settingInfoDb = SteamCommunityApplication.GetInstance().GetSettingInfoDB();
        this.m_settingsInfoArray.addAll(settingInfoDb.GetSettingsList());
        int j = this.m_settingsInfoArray.size();
        while (true) {
            int j2 = j - 1;
            if (j > 0) {
                boolean bValid = false;
                SettingInfo settingInfo = (SettingInfo) this.m_settingsInfoArray.get(j2);
                switch (settingInfo.m_access) {
                    case USER:
                        bValid = true;
                        break;
                    case VALID_ACCOUNT:
                        bValid = this.m_bLoggedOnPresentation;
                        break;
                    case CODE:
                        if (settingInfo == settingInfoDb.m_settingSslUntrustedPrompt) {
                            bValid = settingInfo.getRadioSelectorItemValue(this.m_owner.getApplicationContext()).value == -1;
                            break;
                        }
                        break;
                }
                if (bValid) {
                    switch (settingInfo.m_type) {
                        case INFO:
                        case CHECK:
                        case DATE:
                        case URI:
                        case MARKET:
                        case RADIOSELECTOR:
                        case RINGTONESELECTOR:
                        case UNREADMSG:
                            break;
                        default:
                            bValid = false;
                            break;
                    }
                }
                if (!bValid) {
                    this.m_settingsInfoArray.remove(j2);
                }
                j = j2;
            } else {
                this.m_SettingsAdapter.notifyDataSetChanged();
                return;
            }
        }
    }
}
