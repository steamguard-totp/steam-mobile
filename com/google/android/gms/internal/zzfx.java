package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.zzv;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

@zzmb
public final class zzfx {
    public static final zzft<String> zzAQ = zzft.zza(0, "gads:sdk_core_experiment_id");
    public static final zzft<String> zzAR = zzft.zza(0, "gads:sdk_core_location", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40.html");
    public static final zzft<Boolean> zzAS = zzft.zza(0, "gads:request_builder:singleton_webview", Boolean.valueOf(false));
    public static final zzft<String> zzAT = zzft.zza(0, "gads:request_builder:singleton_webview_experiment_id");
    public static final zzft<Boolean> zzAU = zzft.zza(0, "gads:sdk_use_dynamic_module", Boolean.valueOf(true));
    public static final zzft<String> zzAV = zzft.zza(0, "gads:sdk_use_dynamic_module_experiment_id");
    public static final zzft<Boolean> zzAW = zzft.zza(0, "gads:sdk_crash_report_enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzAX = zzft.zza(0, "gads:sdk_crash_report_full_stacktrace", Boolean.valueOf(false));
    public static final zzft<String> zzAY = zzft.zza(0, "gads:sdk_crash_report_class_prefix", "com.google.");
    public static final zzft<Boolean> zzAZ = zzft.zza(0, "gads:block_autoclicks", Boolean.valueOf(false));
    public static final zzft<Boolean> zzBA = zzft.zza(0, "gads:ad_id_app_context:enabled", Boolean.valueOf(false));
    public static final zzft<Float> zzBB = zzft.zza(0, "gads:ad_id_app_context:ping_ratio", 0.0f);
    public static final zzft<String> zzBC = zzft.zza(0, "gads:ad_id_app_context:experiment_id");
    public static final zzft<String> zzBD = zzft.zzb(0, "gads:looper_for_gms_client:experiment_id");
    public static final zzft<Boolean> zzBE = zzft.zza(0, "gads:looper_for_gms_client:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzBF = zzft.zza(0, "gads:sw_ad_request_service:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzBG = zzft.zza(0, "gads:sw_dynamite:enabled", Boolean.valueOf(true));
    public static final zzft<String> zzBH = zzft.zza(1, "gad:mraid:url_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_banner.js");
    public static final zzft<String> zzBI = zzft.zza(1, "gad:mraid:url_expanded_banner", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_expanded_banner.js");
    public static final zzft<String> zzBJ = zzft.zza(1, "gad:mraid:url_interstitial", "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/mraid/v2/mraid_app_interstitial.js");
    public static final zzft<Boolean> zzBK = zzft.zza(0, "gads:enabled_sdk_csi", Boolean.valueOf(false));
    public static final zzft<String> zzBL = zzft.zza(0, "gads:sdk_csi_server", "https://csi.gstatic.com/csi");
    public static final zzft<Boolean> zzBM = zzft.zza(0, "gads:sdk_csi_write_to_file", Boolean.valueOf(false));
    public static final zzft<Boolean> zzBN = zzft.zza(1, "gads:use_adx_javascript_adapter", Boolean.valueOf(false));
    public static final zzft<Boolean> zzBO = zzft.zza(0, "gads:enable_content_fetching", Boolean.valueOf(true));
    public static final zzft<Integer> zzBP = zzft.zza(0, "gads:content_length_weight", 1);
    public static final zzft<Integer> zzBQ = zzft.zza(0, "gads:content_age_weight", 1);
    public static final zzft<Integer> zzBR = zzft.zza(0, "gads:min_content_len", 11);
    public static final zzft<Integer> zzBS = zzft.zza(0, "gads:fingerprint_number", 10);
    public static final zzft<Integer> zzBT = zzft.zza(0, "gads:sleep_sec", 10);
    public static final zzft<Boolean> zzBU = zzft.zza(1, "gads:enable_content_url_hash", Boolean.valueOf(true));
    public static final zzft<Integer> zzBV = zzft.zza(1, "gads:content_vertical_fingerprint_number", 100);
    public static final zzft<Boolean> zzBW = zzft.zza(1, "gads:enable_content_vertical_hash", Boolean.valueOf(true));
    public static final zzft<Integer> zzBX = zzft.zza(1, "gads:content_vertical_fingerprint_bits", 23);
    public static final zzft<Integer> zzBY = zzft.zza(1, "gads:content_vertical_fingerprint_ngram", 3);
    public static final zzft<String> zzBZ = zzft.zza(1, "gads:content_fetch_view_tag_id", "googlebot");
    public static final zzft<String> zzBa = zzft.zza(0, "gads:block_autoclicks_experiment_id");
    public static final zzft<String> zzBb = zzft.zzb(0, "gads:prefetch:experiment_id");
    public static final zzft<String> zzBc = zzft.zza(0, "gads:spam_app_context:experiment_id");
    public static final zzft<Boolean> zzBd = zzft.zza(1, "gads:spam_app_context:enabled", Boolean.valueOf(false));
    public static final zzft<Integer> zzBe = zzft.zza(1, "gads:http_url_connection_factory:timeout_millis", 10000);
    public static final zzft<String> zzBf = zzft.zza(1, "gads:video_exo_player:version", "1");
    public static final zzft<String> zzBg = zzft.zza(0, "gads:video_stream_cache:experiment_id");
    public static final zzft<Integer> zzBh = zzft.zza(1, "gads:video_stream_cache:limit_count", 5);
    public static final zzft<Integer> zzBi = zzft.zza(1, "gads:video_stream_cache:limit_space", 8388608);
    public static final zzft<Integer> zzBj = zzft.zza(1, "gads:video_stream_exo_allocator:segment_size", 65536);
    public static final zzft<Integer> zzBk = zzft.zza(1, "gads:video_stream_exo_cache:buffer_size", 8388608);
    public static final zzft<Long> zzBl = zzft.zza(1, "gads:video_stream_cache:limit_time_sec", 300);
    public static final zzft<Long> zzBm = zzft.zza(1, "gads:video_stream_cache:notify_interval_millis", 1000);
    public static final zzft<Integer> zzBn = zzft.zza(1, "gads:video_stream_cache:connect_timeout_millis", 10000);
    public static final zzft<Boolean> zzBo = zzft.zza(0, "gads:video:metric_reporting_enabled", Boolean.valueOf(false));
    public static final zzft<String> zzBp = zzft.zza(1, "gads:video:metric_frame_hash_times", "");
    public static final zzft<Long> zzBq = zzft.zza(1, "gads:video:metric_frame_hash_time_leniency", 500);
    public static final zzft<Boolean> zzBr = zzft.zza(1, "gads:video:force_watermark", Boolean.valueOf(false));
    public static final zzft<Long> zzBs = zzft.zza(1, "gads:video:surface_update_min_spacing_ms", 1000);
    public static final zzft<Boolean> zzBt = zzft.zza(1, "gads:video:spinner:enabled", Boolean.valueOf(false));
    public static final zzft<Integer> zzBu = zzft.zza(1, "gads:video:spinner:scale", 4);
    public static final zzft<Long> zzBv = zzft.zza(1, "gads:video:spinner:jank_threshold_ms", 50);
    public static final zzft<Boolean> zzBw = zzft.zza(1, "gads:memory_bundle:debug_info", Boolean.valueOf(false));
    public static final zzft<Boolean> zzBx = zzft.zza(1, "gads:memory_bundle:runtime_info", Boolean.valueOf(true));
    public static final zzft<String> zzBy = zzft.zzb(0, "gads:spam_ad_id_decorator:experiment_id");
    public static final zzft<Boolean> zzBz = zzft.zza(0, "gads:spam_ad_id_decorator:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzCA = zzft.zza(1, "gads:interstitial_ad_pool:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzCB = zzft.zza(1, "gads:interstitial_ad_pool:enabled_for_rewarded", Boolean.valueOf(false));
    public static final zzft<String> zzCC = zzft.zza(1, "gads:interstitial_ad_pool:schema", "customTargeting");
    public static final zzft<String> zzCD = zzft.zza(1, "gads:interstitial_ad_pool:request_exclusions", "com.google.ads.mediation.admob.AdMobAdapter/_ad");
    public static final zzft<Integer> zzCE = zzft.zza(1, "gads:interstitial_ad_pool:max_pools", 3);
    public static final zzft<Integer> zzCF = zzft.zza(1, "gads:interstitial_ad_pool:max_pool_depth", 2);
    public static final zzft<Integer> zzCG = zzft.zza(1, "gads:interstitial_ad_pool:time_limit_sec", 1200);
    public static final zzft<String> zzCH = zzft.zza(1, "gads:interstitial_ad_pool:ad_unit_exclusions", "(?!)");
    public static final zzft<String> zzCI = zzft.zza(1, "gads:spherical_video:vertex_shader", "");
    public static final zzft<String> zzCJ = zzft.zza(1, "gads:spherical_video:fragment_shader", "");
    public static final zzft<String> zzCK = zzft.zza(1, "gads:spherical_video:experiment_id");
    public static final zzft<Boolean> zzCL = zzft.zza(0, "gads:log:verbose_enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzCM = zzft.zza(1, "gads:include_local_global_rectangles", Boolean.valueOf(false));
    public static final zzft<String> zzCN = zzft.zza(1, "gads:include_local_global_rectangles:experiment_id");
    public static final zzft<Long> zzCO = zzft.zza(1, "gads:position_watcher:throttle_ms", 200);
    public static final zzft<Boolean> zzCP = zzft.zza(0, "gads:device_info_caching:enabled", Boolean.valueOf(true));
    public static final zzft<Long> zzCQ = zzft.zza(0, "gads:device_info_caching_expiry_ms:expiry", 300000);
    public static final zzft<Boolean> zzCR = zzft.zza(0, "gads:gen204_signals:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzCS = zzft.zza(0, "gads:webview:error_reporting_enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzCT = zzft.zza(0, "gads:adid_reporting:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzCU = zzft.zza(0, "gads:ad_settings_page_reporting:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzCV = zzft.zza(0, "gads:adid_info_gmscore_upgrade_reporting:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzCW = zzft.zza(0, "gads:request_pkg:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzCX = zzft.zza(1, "gads:gmsg:disable_back_button:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzCY = zzft.zza(0, "gads:gmsg:video_meta:enabled", Boolean.valueOf(true));
    public static final zzft<String> zzCZ = zzft.zza(0, "gads:gmsg:video_meta:experiment_id");
    public static final zzft<String> zzCa = zzft.zza(1, "gads:content_fetch_exclude_view_tag", "none");
    public static final zzft<Boolean> zzCb = zzft.zza(0, "gad:app_index_enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzCc = zzft.zza(0, "gads:app_index:without_content_info_present:enabled", Boolean.valueOf(true));
    public static final zzft<Long> zzCd = zzft.zza(0, "gads:app_index:timeout_ms", 1000);
    public static final zzft<String> zzCe = zzft.zza(0, "gads:app_index:experiment_id");
    public static final zzft<String> zzCf = zzft.zza(0, "gads:kitkat_interstitial_workaround:experiment_id");
    public static final zzft<Boolean> zzCg = zzft.zza(0, "gads:kitkat_interstitial_workaround:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzCh = zzft.zza(0, "gads:interstitial_follow_url", Boolean.valueOf(true));
    public static final zzft<Boolean> zzCi = zzft.zza(0, "gads:interstitial_follow_url:register_click", Boolean.valueOf(true));
    public static final zzft<String> zzCj = zzft.zza(0, "gads:interstitial_follow_url:experiment_id");
    public static final zzft<Boolean> zzCk = zzft.zza(0, "gads:analytics_enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzCl = zzft.zza(0, "gads:ad_key_enabled", Boolean.valueOf(false));
    public static final zzft<Integer> zzCm = zzft.zza(0, "gads:webview_cache_version", 0);
    public static final zzft<Boolean> zzCn = zzft.zza(1, "gads:webview_recycle:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzCo = zzft.zza(1, "gads:webview_recycle:experiment_id");
    public static final zzft<Boolean> zzCp = zzft.zza(1, "gads:webview:ignore_over_scroll", Boolean.valueOf(true));
    public static final zzft<String> zzCq = zzft.zzb(0, "gads:pan:experiment_id");
    public static final zzft<String> zzCr = zzft.zza(1, "gads:rewarded:experiment_id");
    public static final zzft<Long> zzCs = zzft.zza(1, "gads:rewarded:adapter_timeout_ms", 20000);
    public static final zzft<Boolean> zzCt = zzft.zza(1, "gads:app_activity_tracker:enabled", Boolean.valueOf(true));
    public static final zzft<Long> zzCu = zzft.zza(1, "gads:app_activity_tracker:notify_background_listeners_delay_ms", 500);
    public static final zzft<Long> zzCv = zzft.zza(1, "gads:app_activity_tracker:app_session_timeout_ms", TimeUnit.MINUTES.toMillis(5));
    public static final zzft<Boolean> zzCw = zzft.zza(0, "gads:ad_serving:enabled", Boolean.valueOf(true));
    public static final zzft<String> zzCx = zzft.zza(1, "gads:ad_manager_enforce_arp_invariant:experiment_id");
    public static final zzft<Boolean> zzCy = zzft.zza(1, "gads:ad_manager_enforce_arp_invariant:enabled", Boolean.valueOf(false));
    public static final zzft<Long> zzCz = zzft.zza(1, "gads:ad_overlay:delay_page_close_timeout_ms", 5000);
    public static final zzft<Boolean> zzDA = zzft.zza(1, "gads:gestures:visibility:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzDB = zzft.zza(1, "gads:gestures:check_initialization_thread:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzDC = zzft.zza(1, "gads:gestures:get_query_in_non_ui_thread:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDD = zzft.zza(0, "gass:client:enabled", Boolean.valueOf(true));
    public static final zzft<String> zzDE = zzft.zza(0, "gass:client:experiment_id");
    public static final zzft<Boolean> zzDF = zzft.zza(0, "gass:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDG = zzft.zza(0, "gass:enable_int_signal", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDH = zzft.zza(0, "gads:adid_notification:first_party_check:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDI = zzft.zza(0, "gads:edu_device_helper:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDJ = zzft.zza(0, "gads:support_screen_shot", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDK = zzft.zza(0, "gads:use_get_drawing_cache_for_screenshot:enabled", Boolean.valueOf(true));
    public static final zzft<String> zzDL = zzft.zza(0, "gads:use_get_drawing_cache_for_screenshot:experiment_id");
    public static final zzft<String> zzDM = zzft.zza(1, "gads:sdk_core_constants:experiment_id");
    public static final zzft<String> zzDN = zzft.zza(1, "gads:sdk_core_constants:caps", "");
    public static final zzft<Long> zzDO = zzft.zza(0, "gads:js_flags:update_interval", TimeUnit.HOURS.toMillis(12));
    public static final zzft<Boolean> zzDP = zzft.zza(0, "gads:js_flags:mf", Boolean.valueOf(false));
    public static final zzft<Boolean> zzDQ = zzft.zza(0, "gads:custom_render:ping_on_ad_rendered", Boolean.valueOf(false));
    public static final zzft<String> zzDR = zzft.zza(0, "gads:native:engine_url", "//googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html");
    public static final zzft<String> zzDS = zzft.zza(1, "gads:native:video_url", "//googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_video_ads.html");
    public static final zzft<Boolean> zzDT = zzft.zza(1, "gads:singleton_webview_native", Boolean.valueOf(false));
    public static final zzft<String> zzDU = zzft.zza(1, "gads:singleton_webview_native:experiment_id");
    public static final zzft<Boolean> zzDV = zzft.zza(1, "gads:enable_untrack_view_native", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDW = zzft.zza(1, "gads:ignore_untrack_view_google_native", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDX = zzft.zza(1, "gads:reset_listeners_preparead_native", Boolean.valueOf(true));
    public static final zzft<Integer> zzDY = zzft.zza(1, "gads:native_video_load_timeout", 10);
    public static final zzft<String> zzDZ = zzft.zza(1, "gads:native_video_load_timeout:experiment_id");
    public static final zzft<Long> zzDa = zzft.zza(0, "gads:network:cache_prediction_duration_s", 300);
    public static final zzft<Boolean> zzDb = zzft.zza(0, "gads:mediation:dynamite_first:admobadapter", Boolean.valueOf(true));
    public static final zzft<Boolean> zzDc = zzft.zza(0, "gads:mediation:dynamite_first:adurladapter", Boolean.valueOf(true));
    public static final zzft<Long> zzDd = zzft.zza(0, "gads:ad_loader:timeout_ms", 60000);
    public static final zzft<Long> zzDe = zzft.zza(0, "gads:rendering:timeout_ms", 60000);
    public static final zzft<Boolean> zzDf = zzft.zza(0, "gads:adshield:enable_adshield_instrumentation", Boolean.valueOf(false));
    public static final zzft<Long> zzDg = zzft.zza(1, "gads:gestures:task_timeout", 2000);
    public static final zzft<String> zzDh = zzft.zza(1, "gads:gestures:encrypt_size_limit:experiment_id");
    public static final zzft<Boolean> zzDi = zzft.zza(1, "gads:gestures:encrypt_size_limit:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzDj = zzft.zza(1, "gads:gestures:appid:experiment_id");
    public static final zzft<Boolean> zzDk = zzft.zza(1, "gads:gestures:appid:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzDl = zzft.zza(0, "gads:gestures:v6:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzDm = zzft.zza(1, "gads:gestures:usb_query:experiment_id");
    public static final zzft<Boolean> zzDn = zzft.zza(1, "gads:gestures:usb_query:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzDo = zzft.zza(1, "gads:gestures:usb_click:experiment_id");
    public static final zzft<Boolean> zzDp = zzft.zza(1, "gads:gestures:usb_click:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzDq = zzft.zza(1, "gads:gestures:touchinfo:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzDr = zzft.zza(1, "gads:gestures:touchinfo:experiment_id");
    public static final zzft<Boolean> zzDs = zzft.zza(1, "gads:gestures:clock_query:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzDt = zzft.zza(1, "gads:gestures:clock_query:experiment_id");
    public static final zzft<Boolean> zzDu = zzft.zza(1, "gads:gestures:clock_click:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzDv = zzft.zza(1, "gads:gestures:clock_click:experiment_id");
    public static zzft<Boolean> zzDw = zzft.zza(1, "gads:gestures:btl_click:enabled", Boolean.valueOf(false));
    public static zzft<String> zzDx = zzft.zza(1, "gads:gestures:btl_click:experiment_id");
    public static final zzft<String> zzDy = zzft.zza(1, "gads:gestures:click_stk:experiment_id");
    public static final zzft<Boolean> zzDz = zzft.zza(1, "gads:gestures:click_stk:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzEA = zzft.zza(0, "gads:afs:csa_ad_manager_enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzEB = zzft.zza(1, "gads:parental_controls:send_from_client", Boolean.valueOf(true));
    public static final zzft<Boolean> zzEC = zzft.zza(1, "gads:parental_controls:cache_results", Boolean.valueOf(true));
    public static final zzft<Long> zzED = zzft.zza(1, "gads:parental_controls:timeout", 2000);
    public static final zzft<String> zzEE = zzft.zza(0, "gads:safe_browsing:api_key", "AIzaSyDRKQ9d6kfsoZT2lUnZcZnBYvH69HExNPE");
    public static final zzft<Long> zzEF = zzft.zza(0, "gads:safe_browsing:safety_net:delay_ms", 2000);
    public static final zzft<Boolean> zzEG = zzft.zza(0, "gads:safe_browsing:debug", Boolean.valueOf(false));
    public static final zzft<Boolean> zzEH = zzft.zza(0, "gads:webview_cookie:enabled", Boolean.valueOf(true));
    public static final zzft<Integer> zzEI = zzft.zza(1, "gads:cache:max_concurrent_downloads", 10);
    public static final zzft<Long> zzEJ = zzft.zza(1, "gads:cache:javascript_timeout_millis", 5000);
    public static final zzft<Boolean> zzEK = zzft.zza(1, "gads:cache:bind_on_foreground", Boolean.valueOf(false));
    public static final zzft<Boolean> zzEL = zzft.zza(1, "gads:cache:bind_on_init", Boolean.valueOf(false));
    public static final zzft<Boolean> zzEM = zzft.zza(1, "gads:cache:bind_on_request", Boolean.valueOf(false));
    public static final zzft<Long> zzEN = zzft.zza(1, "gads:cache:bind_on_request_keep_alive", TimeUnit.SECONDS.toMillis(30));
    public static final zzft<Boolean> zzEO = zzft.zza(1, "gads:cache:use_cache_data_source", Boolean.valueOf(false));
    public static final zzft<Boolean> zzEP = zzft.zza(1, "gads:chrome_custom_tabs:enabled", Boolean.valueOf(true));
    public static final zzft<Boolean> zzEQ = zzft.zza(1, "gads:drx_in_app_preview:enabled", Boolean.valueOf(false));
    public static final zzft<Boolean> zzER = zzft.zza(1, "gads:drx_debug_signals:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzES = zzft.zza(1, "gads:drx_debug:debug_device_linking_url", "https://www.google.com/dfp/linkDevice");
    public static final zzft<String> zzET = zzft.zza(1, "gads:drx_debug:in_app_preview_status_url", "https://www.google.com/dfp/inAppPreview");
    public static final zzft<String> zzEU = zzft.zza(1, "gads:drx_debug:debug_signal_status_url", "https://www.google.com/dfp/debugSignals");
    public static final zzft<String> zzEV = zzft.zza(1, "gads:drx_debug:send_debug_data_url", "https://www.google.com/dfp/sendDebugData");
    public static final zzft<Integer> zzEW = zzft.zza(1, "gads:drx_debug:timeout_ms", 5000);
    public static final zzft<Integer> zzEX = zzft.zza(1, "gad:pixel_dp_comparision_multiplier", 1);
    public static final zzft<Boolean> zzEY = zzft.zza(1, "gad:interstitial_for_multi_window", Boolean.valueOf(false));
    public static final zzft<Boolean> zzEZ = zzft.zza(1, "gad:interstitial_ad_stay_active_in_multi_window", Boolean.valueOf(false));
    public static final zzft<String> zzEa = zzft.zza(1, "gads:ad_choices_content_description", "Ad Choices Icon");
    public static final zzft<Boolean> zzEb = zzft.zza(1, "gads:clamp_native_video_player_dimensions", Boolean.valueOf(true));
    public static final zzft<Boolean> zzEc = zzft.zza(1, "gads:enable_tracking_for_native_ad_views", Boolean.valueOf(true));
    public static final zzft<Boolean> zzEd = zzft.zza(1, "gads:use_new_json_for_native_view_tracking", Boolean.valueOf(true));
    public static final zzft<Boolean> zzEe = zzft.zza(1, "gads:fluid_ad:use_wrap_content_height", Boolean.valueOf(false));
    public static final zzft<Boolean> zzEf = zzft.zza(0, "gads:method_tracing:enabled", Boolean.valueOf(false));
    public static final zzft<Long> zzEg = zzft.zza(0, "gads:method_tracing:duration_ms", 30000);
    public static final zzft<Integer> zzEh = zzft.zza(0, "gads:method_tracing:count", 5);
    public static final zzft<Integer> zzEi = zzft.zza(0, "gads:method_tracing:filesize", 134217728);
    public static final zzft<Boolean> zzEj = zzft.zza(1, "gads:auto_location_for_coarse_permission", Boolean.valueOf(false));
    public static final zzft<String> zzEk = zzft.zzb(1, "gads:auto_location_for_coarse_permission:experiment_id");
    public static final zzft<Long> zzEl = zzft.zza(1, "gads:auto_location_timeout", 2000);
    public static final zzft<String> zzEm = zzft.zzb(1, "gads:auto_location_timeout:experiment_id");
    public static final zzft<Long> zzEn = zzft.zza(1, "gads:auto_location_interval", -1);
    public static final zzft<String> zzEo = zzft.zzb(1, "gads:auto_location_interval:experiment_id");
    public static final zzft<Boolean> zzEp = zzft.zza(1, "gads:fetch_app_settings_using_cld:enabled", Boolean.valueOf(false));
    public static final zzft<String> zzEq = zzft.zza(1, "gads:fetch_app_settings_using_cld:enabled:experiment_id");
    public static final zzft<Long> zzEr = zzft.zza(1, "gads:fetch_app_settings_using_cld:refresh_interval_ms", 7200000);
    public static final zzft<String> zzEs = zzft.zza(1, "gads:fetch_app_settings_using_cld:refresh_interval_ms:experiment_id");
    public static final zzft<String> zzEt = zzft.zza(0, "gads:afs:csa:experiment_id");
    public static final zzft<String> zzEu = zzft.zza(0, "gads:afs:csa_webview_gmsg_ad_failed", "gmsg://noAdLoaded");
    public static final zzft<String> zzEv = zzft.zza(0, "gads:afs:csa_webview_gmsg_script_load_failed", "gmsg://scriptLoadFailed");
    public static final zzft<String> zzEw = zzft.zza(0, "gads:afs:csa_webview_gmsg_ad_loaded", "gmsg://adResized");
    public static final zzft<String> zzEx = zzft.zza(0, "gads:afs:csa_webview_static_file_path", "/afs/ads/i/webview.html");
    public static final zzft<String> zzEy = zzft.zza(0, "gads:afs:csa_webview_custom_domain_param_key", "csa_customDomain");
    public static final zzft<Long> zzEz = zzft.zza(0, "gads:afs:csa_webview_adshield_timeout_ms", 1000);

    class AnonymousClass1 implements Callable<Void> {
        final /* synthetic */ Context zztd;

        AnonymousClass1(Context context) {
            this.zztd = context;
        }

        public /* synthetic */ Object call() throws Exception {
            return zzbl();
        }

        public Void zzbl() {
            zzv.zzcV().initialize(this.zztd);
            return null;
        }
    }

    public static void initialize(Context context) {
        zzpv.zzb(new AnonymousClass1(context));
    }

    public static List<String> zzfn() {
        return zzv.zzcU().zzfn();
    }

    public static List<String> zzfo() {
        return zzv.zzcU().zzfo();
    }
}
