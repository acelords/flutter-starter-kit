class Constants {
  static bool testing = true;

  /// general setup
  static String appId = "space.acelords.starterkit";
  static String iosAppId = "space.acelords.starterkit";
  static String appName = "Flutter Starter Kit";
  static String appTagLine = "Buiild a FLutter app like a Pro by Using the BLoC Pattern!";
  static String appBio = "The Best Flutter Starter Kit";
  static String contactEmail = "support@acelords.space";
  static String logoKey = "assets/images/logo.png";
  static String appAbout = "Using this app will improve your project deliverability and sharpen your understanding of Flutter"
      "and BLoC pattern in no time. Build Flutter apps like a pro!";

  /// Share message
  static String shareLink = "http://bit.ly/acelords";
  static String shareMessage = "Check out this Amazing App at " + shareLink;
  static String shareSubject = "Best App Ever!";
  static String twitterUrl = "https://twitter.com/acelords";

  /// http headers
  static Object apiHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  Map<String, String> backendHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    'Authorization': 'Bearer val'
  };

  /// FCM notification keys & topics
  static String publicTopicKey = testing ? "testing" : "public";

  /// e.t.c.
  static double commonPadding = 15.0;
  static String commonDateFormat = "dd MMM yyyy, hh:mm a";

  /// storage keys
  static String accessTokenKey = "token";
  static String userNameKey = "name";
  static String userFullNameKey = "full_name";
  static String userAkaKey = "aka";
  static String userEmailKey = "email";
  static String phoneNumberKey = "phone";
  static String appPreviouslyRunKey = "seen";
  static String userUuidKey = "user_uid";
  static String userAuthenticatedKey = "user_authenticated";
  static String fcmTokenKey = "fcm_token";
  static String vipCoinsKey = "vip_coins";
  static String vipCoinsDateKey = "vip_coins_date";

  // api keys
  static String moviesApiKey = "API_KEY"; // e.g. "bff708fnwFwef9832ed927da1d"; or Env.moviesApiKey;

  /// api routes
  static String apiBaseUrl = "http://api.themoviedb.org/3/";
  static String moviesUrl = apiBaseUrl + "movie/popular?api_key=" + moviesApiKey;

}
