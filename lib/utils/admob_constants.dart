// import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';

class AdmobConstants {
  static bool testing = true;

  static String appId = 'ca-app-pub-';

  static String realAdsBannerUnitId = 'ca-app-pub-';
  static String realAdsInterstitialUnitId = 'ca-app-pub-';
  static String realAdsNativeUnitId = 'ca-app-pub-';
  static String realAdsRewardVideoUnitId = 'ca-app-pub-';


  static String bannerAdUnitId =
      testing ? 'ca-app-pub-3940256099942544/6300978111' : realAdsBannerUnitId;

  static String interstitialAdUnitId =
      testing ? 'ca-app-pub-3940256099942544/1033173712' : realAdsInterstitialUnitId;

  static String nativeAdUnitId =
      testing ? 'ca-app-pub-3940256099942544/2247696110' : realAdsNativeUnitId;

  static String rewardVideoAdUnitId =
      testing ? 'ca-app-pub-3940256099942544/5224354917' : realAdsRewardVideoUnitId;

  // uncomment if using Google Ads
  // static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  //   testDevices: <String>[],
  //   nonPersonalizedAds: true,
  //   keywords: <String>['gaming', 'flutter'],
  // );
}

/*

Google Sample ad unit ID
Banner	ca-app-pub-3940256099942544/6300978111
Interstitial	ca-app-pub-3940256099942544/1033173712
Interstitial Video	ca-app-pub-3940256099942544/8691691433
Rewarded Video	ca-app-pub-3940256099942544/5224354917
Native Advanced	ca-app-pub-3940256099942544/2247696110
Native Advanced Video	ca-app-pub-3940256099942544/1044960115


OR ALSO
BannerAd.testAdUnitId;
InterstitialAd.testAdUnitId;

 */


Widget buildNativeAd() {
  return Container(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: NativeAdmobBannerView(
      adUnitID: AdmobConstants.nativeAdUnitId,
      options: const BannerOptions(
        backgroundColor: Color.fromRGBO(30, 45, 59, 1),
        indicatorColor: Colors.white,
        ratingColor: Colors.yellow,
        adLabelOptions: const TextOptions(
          fontSize: 12,
          color: Colors.white,
          backgroundColor: Color(0xFFFFCC66),
        ),
        headlineTextOptions: const TextOptions(
          fontSize: 16,
          color: Colors.white,
        ),
        advertiserTextOptions: const TextOptions(
          fontSize: 14,
          color: Colors.white,
        ),
        bodyTextOptions: const TextOptions(
          fontSize: 12,
          color: Colors.grey,
        ),
        storeTextOptions: const TextOptions(
          fontSize: 12,
          color: Colors.white,
        ),
        priceTextOptions: const TextOptions(
          fontSize: 12,
          color: Colors.white,
        ),
        callToActionOptions: const TextOptions(
          fontSize: 15,
          color: Colors.black,
          backgroundColor: Color(0xFF4CBE99),
        ),
      ),

      // Whether to show media or not
      showMedia: true,

      // Content paddings
      contentPadding: EdgeInsets.all(0),

      onCreate: (controller) {
//       controller.setOptions(BannerOptions()); // change view styling options described above
      },

    ),
  );
}
