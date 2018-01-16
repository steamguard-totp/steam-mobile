package com.valvesoftware.android.steam.community.fragment;

import android.support.v4.app.FragmentActivity;
import android.text.ClipboardManager;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.method.MovementMethod;
import android.text.style.URLSpan;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.volley.toolbox.ImageLoader;
import com.android.volley.toolbox.NetworkImageView;
import com.valvesoftware.android.steam.community.AndroidUtils;
import com.valvesoftware.android.steam.community.R;
import com.valvesoftware.android.steam.community.SteamCommunityApplication;
import com.valvesoftware.android.steam.community.model.UmqMessage;
import com.valvesoftware.android.steam.community.model.UmqMessageType;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

public class ChatViewAdapter extends ArrayAdapter<UmqMessage> {
    private static UmqMessage chatPartnerIsTypingMessage;
    private final FragmentActivity activity;
    private final ChatFragment chatFragment;
    private String chatPartnerAvatarUrl;
    private ImageLoader imageLoader;
    private boolean m_bTyping = false;
    private LayoutInflater m_layoutInflater;
    private List<UmqMessage> m_list;
    private OnLongClickListener m_longClickHandler = null;
    private int m_numSecondsTimestamps = 900;
    private final Comparator<UmqMessage> messageOrderComparator = new Comparator<UmqMessage>() {
        private long maxTimeForSortingPurposes = 2147483647L;

        public int compare(UmqMessage lhs, UmqMessage rhs) {
            return (int) ((lhs.utcTimeStamp == 0 ? this.maxTimeForSortingPurposes : lhs.utcTimeStamp) - (rhs.utcTimeStamp == 0 ? this.maxTimeForSortingPurposes : rhs.utcTimeStamp));
        }
    };

    private static class ChatViewHolder {
        public NetworkImageView chatPartnerAvatar;
        public View chatPartnerLayoutContainer;
        public TextView chatPartnerTextView;
        public TextView chatPartnerTimestampTextView;
        public View extraPaddingView;
        public View loggedInUserLayoutContainer;
        public TextView loggedInUserTextView;
        public TextView loggedInUserTimestampTextView;
        public TextView sendErrorTextView;
        public UmqMessage umqMessage;

        private ChatViewHolder() {
        }
    }

    public void setChatPartnerAvatarUrl(String chatPartnerAvatarUrl) {
        if (this.chatPartnerAvatarUrl == null || !this.chatPartnerAvatarUrl.equals(chatPartnerAvatarUrl)) {
            this.chatPartnerAvatarUrl = chatPartnerAvatarUrl;
            notifyDataSetChanged();
        }
    }

    public ChatViewAdapter(List<UmqMessage> list, LayoutInflater layoutInflater, final FragmentActivity activity, ChatFragment chatFragment, String chatPartnerAvatarUrl) {
        super(activity, -1, list);
        Collections.sort(list, this.messageOrderComparator);
        this.chatFragment = chatFragment;
        this.chatPartnerAvatarUrl = chatPartnerAvatarUrl;
        this.m_list = list;
        this.m_layoutInflater = layoutInflater;
        this.activity = activity;
        this.imageLoader = SteamCommunityApplication.GetInstance().imageLoader;
        this.m_longClickHandler = new OnLongClickListener() {
            public boolean onLongClick(View v) {
                try {
                    ClipboardManager clipBoard = (ClipboardManager) activity.getSystemService("clipboard");
                    if (clipBoard != null && (v instanceof TextView)) {
                        clipBoard.setText(((TextView) v).getText().toString());
                        int[] screenpos = new int[]{0, 0};
                        v.getLocationOnScreen(screenpos);
                        Toast toast = Toast.makeText(activity, R.string.notification_chat_copied, 0);
                        toast.setGravity(49, 0, screenpos[1]);
                        toast.show();
                        return true;
                    }
                } catch (Exception e) {
                }
                return false;
            }
        };
    }

    public void notifyDataSetChanged() {
        Collections.sort(this.m_list, this.messageOrderComparator);
        super.notifyDataSetChanged();
    }

    public void showIsTyping() {
        showIsTyping(true);
    }

    public void hideIsTyping() {
        showIsTyping(false);
    }

    private void showIsTyping(boolean typing) {
        if (this.m_bTyping != typing) {
            this.m_bTyping = typing;
            if (this.m_bTyping) {
                this.m_list.add(getTypingMessage());
            } else {
                this.m_list.remove(getTypingMessage());
            }
            notifyDataSetChanged();
        }
    }

    public void attach(ListView lv) {
        lv.setAdapter(this);
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        ChatViewHolder holder;
        DateFormat fmtTimestamp;
        final UmqMessage message = (UmqMessage) this.m_list.get(position);
        if (convertView == null) {
            convertView = this.m_layoutInflater.inflate(R.layout.chat_simple_entry, null);
            holder = new ChatViewHolder();
            holder.chatPartnerLayoutContainer = convertView.findViewById(R.id.chat_partner_layout);
            holder.loggedInUserLayoutContainer = convertView.findViewById(R.id.chat_logged_in_user_layout);
            holder.chatPartnerAvatar = (NetworkImageView) convertView.findViewById(R.id.avatar_chat_partner);
            holder.chatPartnerTextView = (TextView) convertView.findViewById(R.id.chat_text_chat_partner);
            holder.loggedInUserTextView = (TextView) convertView.findViewById(R.id.chat_text_logged_in_user);
            holder.extraPaddingView = convertView.findViewById(R.id.extra_padding);
            holder.loggedInUserTimestampTextView = (TextView) convertView.findViewById(R.id.chat_text_logged_in_user_timestamp);
            holder.chatPartnerTimestampTextView = (TextView) convertView.findViewById(R.id.chat_text_partner_timestamp);
            holder.chatPartnerTextView.setOnLongClickListener(this.m_longClickHandler);
            holder.sendErrorTextView = (TextView) convertView.findViewById(R.id.chat_text_send_error);
            holder.umqMessage = message;
            convertView.setTag(holder);
        } else {
            holder = (ChatViewHolder) convertView.getTag();
        }
        if (System.currentTimeMillis() / 86400000 == message.getUtcTimeStampInMilliseconds() / 86400000) {
            fmtTimestamp = SimpleDateFormat.getTimeInstance(3);
        } else {
            fmtTimestamp = SimpleDateFormat.getDateTimeInstance(3, 3);
        }
        Date d = new Date(message.getUtcTimeStampInMilliseconds());
        String timestamp = d.getTime() > 0 ? fmtTimestamp.format(d) : "";
        if (message.isIncoming) {
            holder.loggedInUserLayoutContainer.setVisibility(8);
            holder.chatPartnerLayoutContainer.setVisibility(0);
            holder.chatPartnerAvatar.setImageUrl(this.chatPartnerAvatarUrl, this.imageLoader);
            FormatMessageText(message, holder.chatPartnerTextView);
            if (message != getTypingMessage()) {
                holder.chatPartnerTimestampTextView.setText(timestamp);
                holder.chatPartnerTimestampTextView.setVisibility(0);
            } else {
                holder.chatPartnerTimestampTextView.setVisibility(8);
            }
        } else {
            holder.chatPartnerLayoutContainer.setVisibility(8);
            holder.loggedInUserLayoutContainer.setVisibility(0);
            FormatMessageText(message, holder.loggedInUserTextView);
            if (message.hadSendError) {
                OnClickListener onErrorRetryClickListener = new OnClickListener() {
                    public void onClick(View v) {
                        if (ChatViewAdapter.this.chatFragment != null) {
                            ChatViewAdapter.this.chatFragment.resendMessage(message);
                        }
                    }
                };
                holder.loggedInUserLayoutContainer.setOnClickListener(onErrorRetryClickListener);
                holder.loggedInUserTextView.setOnClickListener(onErrorRetryClickListener);
                holder.sendErrorTextView.setOnClickListener(onErrorRetryClickListener);
                holder.sendErrorTextView.setVisibility(0);
                holder.loggedInUserTimestampTextView.setVisibility(8);
            } else {
                holder.loggedInUserTimestampTextView.setText(timestamp);
                holder.loggedInUserTimestampTextView.setVisibility(0);
                holder.sendErrorTextView.setVisibility(8);
                holder.loggedInUserTextView.setOnLongClickListener(this.m_longClickHandler);
            }
        }
        UmqMessage msgPrev = position > 0 ? (UmqMessage) this.m_list.get(position - 1) : null;
        if (msgPrev == null || msgPrev.isIncoming == message.isIncoming) {
            holder.extraPaddingView.setVisibility(8);
        } else {
            holder.extraPaddingView.setVisibility(0);
        }
        return convertView;
    }

    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        return getView(position, convertView, parent);
    }

    private void FormatMessageText(UmqMessage message, TextView text) {
        SpannableString spannedText;
        String sTimestamp = null;
        try {
            if (this.m_numSecondsTimestamps <= 0) {
                sTimestamp = SimpleDateFormat.getTimeInstance(3).format(new Date(message.getUtcTimeStampInMilliseconds())) + " : ";
            }
        } catch (Exception e) {
        }
        if (sTimestamp != null) {
            try {
                spannedText = SpannableString.valueOf(sTimestamp + message.text);
            } catch (Exception e2) {
                if (sTimestamp != null) {
                    AndroidUtils.setTextViewText(text, sTimestamp + message.text);
                    return;
                } else {
                    AndroidUtils.setTextViewText(text, message.text);
                    return;
                }
            }
        }
        spannedText = SpannableString.valueOf(message.text);
        Linkify.addLinks(spannedText, 15);
        Object[] urls = spannedText.getSpans(0, spannedText.length(), Object.class);
        if (urls != null && urls.length > 0) {
            boolean bAlertUnsafeLinks = SteamCommunityApplication.GetInstance().GetSettingInfoDB().m_settingChatsAlertLinks.getBooleanValue(SteamCommunityApplication.GetInstance().getApplicationContext());
            for (Object xUrl : urls) {
                int nStart = spannedText.getSpanStart(xUrl);
                int nEnd = spannedText.getSpanEnd(xUrl);
                int flags = spannedText.getSpanFlags(xUrl);
                if (xUrl instanceof URLSpan) {
                    spannedText.removeSpan(xUrl);
                    if (sTimestamp != null && nStart < sTimestamp.length()) {
                        nStart = sTimestamp.length();
                    }
                    if (nEnd > nStart) {
                        URLSpan uRLSpan = (URLSpan) xUrl;
                        boolean z = bAlertUnsafeLinks && UrlChecker.isUrlUnsafe((URLSpan) xUrl);
                        spannedText.setSpan(new UnsafeClickableURL(uRLSpan, z, this.activity), nStart, nEnd, flags);
                    }
                } else if (sTimestamp != null && nStart < sTimestamp.length()) {
                    nStart = sTimestamp.length();
                    spannedText.removeSpan(xUrl);
                    if (nEnd > nStart) {
                        spannedText.setSpan(xUrl, nStart, nEnd, flags);
                    }
                }
            }
        }
        try {
            text.setText(spannedText);
            MovementMethod mm = text.getMovementMethod();
            if (mm == null || !(mm instanceof LinkMovementMethod)) {
                text.setMovementMethod(LinkMovementMethod.getInstance());
            }
        } catch (Exception e3) {
            text.setText("");
        }
    }

    private static UmqMessage getTypingMessage() {
        if (chatPartnerIsTypingMessage == null) {
            chatPartnerIsTypingMessage = new UmqMessage();
            chatPartnerIsTypingMessage.isIncoming = true;
            chatPartnerIsTypingMessage.text = "...";
            chatPartnerIsTypingMessage.type = UmqMessageType.TYPING;
            chatPartnerIsTypingMessage.utcTimeStamp = 2147483647L;
        }
        return chatPartnerIsTypingMessage;
    }
}
