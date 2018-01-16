package com.valvesoftware.android.steam.community;

import android.widget.TextView;

public class AndroidUtils {
    public static void setTextViewText(TextView v, String txt) {
        if (txt == null) {
            txt = "";
        }
        try {
            v.setText(txt);
        } catch (Exception e) {
            int len = txt.length();
            if (len > 0) {
                try {
                    char[] arr = new char[len];
                    for (int k = 0; k < len; k++) {
                        char x = txt.charAt(k);
                        if (x < '\u0000' || x > '') {
                            x = '?';
                        }
                        arr[k] = x;
                    }
                    v.setText(arr, 0, len);
                } catch (Exception e2) {
                    try {
                        v.setText(" ");
                    } catch (Exception e3) {
                    }
                }
            }
        }
    }
}
