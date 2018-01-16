package com.valvesoftware.android.steam.community.fragment;

import android.text.style.URLSpan;

public class UrlChecker {
    private static final String[] s_safeURIs = new String[]{"steampowered.com", "steamgames.com", "steamcommunity.com", "valvesoftware.com", "youtube.com", "live.com", "msn.com", "myspace.com", "facebook.com", "hi5.com", "wikipedia.org", "orkut.com", "rapidshare.com", "blogger.com", "megaupload.com", "friendster.com", "fotolog.net", "google.fr", "baidu.com", "microsoft.com", "ebay.com", "shacknews.com", "bbc.co.uk", "cnn.com", "foxsports.com", "pcmag.com", "nytimes.com", "flickr.com", "amazon.com", "veoh.com", "pcgamer.com", "metacritic.com", "fileplanet.com", "gamespot.com", "gametap.com", "ign.com", "kotaku.com", "xfire.com", "pcgames.gwn.com", "gamezone.com", "gamesradar.com", "digg.com", "engadget.com", "gizmodo.com", "gamesforwindows.com", "xbox.com", "cnet.com", "l4d.com", "teamfortress.com", "tf2.com", "half-life2.com", "aperturescience.com", "dayofdefeat.com", "dota2.com", "steamtranslation.ru", "playdota.com"};

    public static boolean isUrlUnsafe(URLSpan other) {
        String surl = other.getURL();
        if (surl.startsWith("tel:") || surl.startsWith("mailto:") || surl.startsWith("geo:")) {
            return false;
        }
        int nPrefixLength;
        if (surl.startsWith("http://") || surl.startsWith("rtsp://")) {
            nPrefixLength = 7;
        } else if (!surl.startsWith("https://")) {
            return true;
        } else {
            nPrefixLength = 8;
        }
        char[] end = new char[]{':', '?', '/'};
        int nEndPos = surl.length();
        for (char anEnd : end) {
            int nFoundPos = surl.indexOf(anEnd, nPrefixLength);
            if (nFoundPos >= 0 && nFoundPos < nEndPos) {
                nEndPos = nFoundPos;
            }
        }
        String sDomain = surl.substring(nPrefixLength, nEndPos);
        for (String s_safeURI : s_safeURIs) {
            if (sDomain.endsWith(s_safeURI) && (sDomain.length() <= s_safeURI.length() || sDomain.charAt((sDomain.length() - s_safeURI.length()) - 1) == '.')) {
                return false;
            }
        }
        return true;
    }
}
