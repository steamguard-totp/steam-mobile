package android.support.v4.media;

import android.annotation.TargetApi;
import android.media.Rating;

@TargetApi(19)
class RatingCompatKitkat {
    public static boolean isRated(Object ratingObj) {
        return ((Rating) ratingObj).isRated();
    }

    public static int getRatingStyle(Object ratingObj) {
        return ((Rating) ratingObj).getRatingStyle();
    }

    public static boolean hasHeart(Object ratingObj) {
        return ((Rating) ratingObj).hasHeart();
    }

    public static boolean isThumbUp(Object ratingObj) {
        return ((Rating) ratingObj).isThumbUp();
    }

    public static float getStarRating(Object ratingObj) {
        return ((Rating) ratingObj).getStarRating();
    }

    public static float getPercentRating(Object ratingObj) {
        return ((Rating) ratingObj).getPercentRating();
    }
}
