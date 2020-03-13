import 'package:flutter/material.dart';
import 'package:launch_review/launch_review.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:starterkit/utils/constants.dart';
import 'package:starterkit/utils/styles.dart';
import 'package:starterkit/views/partials/custom_form_fields.dart';

class RateApp extends StatefulWidget {
  @override
  _RateAppState createState() => _RateAppState();
}

class _RateAppState extends State<RateApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate App"),
      ),
      body: Container(
//        color: Styles.appPrimaryColor,
        padding: EdgeInsets.all(Constants.commonPadding),
        child: ListView(
          children: <Widget>[
            Container(
              child: Card(
                color: Styles.commonDarkCardBackground,
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(Constants.appName,
                          style: Styles.title.copyWith(
                            fontSize: 45,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      SizedBox(height: 20.0,),

                      Container(
                        height: 70,
                        child: Image.asset(Constants.logoKey),
                      ),

                      SizedBox(height: 20.0,),

                      RatingBar(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          // print(rating);
                        },
                      ),

                      SizedBox(height: 10.0,),

                      Divider(),

                      SizedBox(height: 10.0,),

                      MySubmitIconedButton(
                        "Give The App 5 Stars",
                        Icon(Icons.star),
                        false,
                        () {
                        LaunchReview.launch(
                            androidAppId: Constants.appId,
                            iOSAppId: Constants.iosAppId
                        );
                      })
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }

}