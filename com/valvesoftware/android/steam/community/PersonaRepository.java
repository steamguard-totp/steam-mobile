package com.valvesoftware.android.steam.community;

import com.valvesoftware.android.steam.community.jsontranslators.PersonaTranslator;
import com.valvesoftware.android.steam.community.model.Persona;
import com.valvesoftware.android.steam.community.webrequests.Endpoints;
import com.valvesoftware.android.steam.community.webrequests.RequestBuilder;
import com.valvesoftware.android.steam.community.webrequests.RequestErrorInfo;
import com.valvesoftware.android.steam.community.webrequests.ResponseListener;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

public class PersonaRepository {
    public static void getDetailedPersonaInfo(Collection<String> steamIds, final RepositoryCallback<List<Persona>> multipleResponseCallback) {
        List<RequestBuilder> requestBuilders = Endpoints.getUserSummariesRequestBuilder(steamIds);
        final AtomicInteger callsRemaining = new AtomicInteger(requestBuilders.size());
        for (RequestBuilder requestBuilder : requestBuilders) {
            requestBuilder.setResponseListener(new ResponseListener() {
                public void onSuccess(JSONObject response) {
                    List<Persona> friendDetails = PersonaTranslator.translateList(response);
                    int remaining = callsRemaining.decrementAndGet();
                    if (multipleResponseCallback != null) {
                        multipleResponseCallback.dataAvailable(friendDetails);
                        if (remaining == 0) {
                            multipleResponseCallback.end();
                        }
                    }
                }

                public void onError(RequestErrorInfo errorInfo) {
                    if (callsRemaining.decrementAndGet() == 0 && multipleResponseCallback != null) {
                        multipleResponseCallback.end();
                    }
                }
            });
            sendRequest(requestBuilder);
        }
    }

    public static void getDetailedPersonaInfo(String steamId, final RepositoryCallback<Persona> callback) {
        getDetailedPersonaInfo(Collections.singletonList(steamId), new RepositoryCallback<List<Persona>>() {
            public void dataAvailable(List<Persona> persona) {
                if (callback != null && persona != null && persona.size() > 0) {
                    callback.dataAvailable(persona.get(0));
                }
            }

            public void end() {
                if (callback != null) {
                    callback.end();
                }
            }
        });
    }

    private static void sendRequest(RequestBuilder requestBuilder) {
        SteamCommunityApplication.GetInstance().sendRequest(requestBuilder);
    }
}
