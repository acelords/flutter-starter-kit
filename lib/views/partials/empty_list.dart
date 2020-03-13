import 'package:flutter/material.dart';
import 'package:starterkit/utils/styles.dart';

Widget emptyList({String noDataText: "No Data Found!"}) {
  return Column(
    children: <Widget>[
      SizedBox(height: 20.0,),
      Image.asset('assets/images/no-data.png'),
      SizedBox(height: 20.0,),
      Center(
        child: Text(
          noDataText,
          style: Styles.p,
        ),
      ),
    ],
  );
}