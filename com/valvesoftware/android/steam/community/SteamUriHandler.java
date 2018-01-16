package com.valvesoftware.android.steam.community;

import android.net.Uri;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Properties;
import org.json.JSONArray;
import org.json.JSONObject;

public class SteamUriHandler {

    public enum Command {
        openurl,
        settitle,
        login,
        closethis,
        notfound,
        opencategoryurl,
        errorrecovery,
        reloadpage,
        chat,
        openexternalurl,
        mobileloginsucceeded,
        application_internal,
        twofactorcode(true),
        steamguardset(true),
        steamguardvalidate(true),
        steamguardsendemail,
        getjsresult,
        steamguardgetgid,
        steamguardsuppresstwofactorgid(true),
        steamguardgetrevocation,
        steamguardconfrefresh(true),
        steamguardconfcount,
        currentuser,
        logout(true),
        livetokens,
        steamguard(true),
        lostauth;
        
        public boolean bHasArgs;

        private Command(boolean bHasArgs) {
            this.bHasArgs = false;
            this.bHasArgs = bHasArgs;
        }
    }

    public enum CommandProperty {
        url,
        call,
        title,
        steamid,
        oauth_token,
        wgtoken,
        wgtoken_secure,
        webcookie,
        gid,
        scheme,
        code,
        acct,
        refresh,
        ph,
        op,
        arg1,
        arg2
    }

    public static class Result {
        public Command command;
        public boolean handled = false;
        public Properties props;

        public String getProperty(CommandProperty eProperty) {
            return this.props.getProperty(eProperty.toString());
        }

        public String getProperty(CommandProperty eProperty, String sDefaultValue) {
            return this.props.getProperty(eProperty.toString(), sDefaultValue);
        }
    }

    public static Result HandleSteamURI(Uri uri) {
        String uriString = uri.toString();
        String params = uri.getEncodedQuery();
        Result result = new Result();
        if (uriString.startsWith("steammobile://")) {
            try {
                uriString = uriString.substring("steammobile://".length());
                int nPosQ = uriString.indexOf("?");
                if (nPosQ > 0) {
                    uriString = uriString.substring(0, nPosQ);
                }
                result.command = Command.valueOf(uriString);
                result.handled = true;
            } catch (RuntimeException e) {
            }
        }
        if (result.handled) {
            try {
                result.props = new Properties();
                if (params != null) {
                    if (result.command == Command.mobileloginsucceeded) {
                        try {
                            JSONObject jsonDoc = new JSONObject(Uri.decode(params));
                            JSONArray arrChildren = jsonDoc.names();
                            for (int jj = 0; jj < arrChildren.length(); jj++) {
                                try {
                                    String key = (String) arrChildren.opt(jj);
                                    result.props.put(key, jsonDoc.get(key).toString());
                                } catch (Exception e2) {
                                }
                            }
                        } catch (Exception e3) {
                        }
                    } else if (result.command.bHasArgs) {
                        for (String arg : params.split("&")) {
                            String[] pair = arg.split("=", 2);
                            if (pair.length > 1) {
                                result.props.put(URLDecoder.decode(pair[0], "UTF-8"), URLDecoder.decode(pair[1], "UTF-8"));
                            }
                        }
                    } else {
                        result.props.load(new ByteArrayInputStream(params.getBytes()));
                    }
                }
            } catch (IOException e4) {
            }
        }
        return result;
    }
}
