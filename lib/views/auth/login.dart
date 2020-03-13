import 'package:flutter/material.dart';
import 'package:starterkit/views/partials/custom_form_fields.dart';
import 'background.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        // main background
        Background(),

        // main login form
        Column(
          children: <Widget>[
            Padding(
              padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.3),
            ),
            Column(
              children: <Widget>[
                ///holds email header and inputField
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 40, bottom: 10),
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 16, color: Color(0xFF999A9A)),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: <Widget>[
                        InputWidget(30.0, 0.0),
                        Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 40),
                                      child: Text(
                                        'Enter your email id to continue...',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(color: Color(0xFFA0A0A0),
                                            fontSize: 12),
                                      ),
                                    )),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: ShapeDecoration(
                                    shape: CircleBorder(),
                                    gradient: LinearGradient(
                                        colors: signInGradients,
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                  ),
                                  child: ImageIcon(
                                    AssetImage("assets/images/ic_forward.png"),
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                ),
                roundedRectButton("Let's get Started", signInGradients, false),
                roundedRectButton("Create an Account", signUpGradients, false),
              ],
            )
          ],
        ),
      ],
    );
  }

}

Widget roundedRectButton(
    String title, List<Color> gradient, bool isEndIconVisible) {
  return Builder(builder: (BuildContext mContext) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Stack(
        alignment: Alignment(1.0, 0.0),
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(mContext).size.width / 1.7,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: EdgeInsets.only(top: 16, bottom: 16),
          ),
          Visibility(
            visible: isEndIconVisible,
            child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: ImageIcon(
                  AssetImage("assets/images/ic_forward.png"),
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  });
}

const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signUpGradients = [
  Color(0xFFFF9945),
  Color(0xFFFc6076),
];
