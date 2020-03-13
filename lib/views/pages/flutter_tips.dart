import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:starterkit/utils/constants.dart';
import 'package:starterkit/utils/styles.dart';

class FlutterTipsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Hints"),
      ),
      body: Container(
        padding: EdgeInsets.all(Constants.commonPadding),
        child: ListView(
          children: <Widget>[

            AutoSizeText("Declaring Variables: var, final, and dynamic",
              style: Styles.h1,
              maxLines: 2,
            ),

            SizedBox(height: 20,),

            Text("dynamic", style: Styles.h1,),
            Text("can change TYPE of the variable, & can change VALUE of the variable later in code.", style: Styles.p,),
            SizedBox(height: 10,),

            Text("var", style: Styles.h1,),
            Text("can't change TYPE of the variable, but can change VALUE of the variable later in code.", style: Styles.p,),
            SizedBox(height: 10,),

            Text("final", style: Styles.h1,),
            Text("can't change TYPE of the variable, & can't change VALUE of the variable later in code.", style: Styles.p,),
            SizedBox(height: 20,),

            Card(
              elevation: 3,
              color: Styles.commonDarkCardBackground,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Text('''
                    dynamic v = 123;   // v is of type int.
                    v = 456;           // changing value of v from 123 to 456.
                    v = 'abc';         // changing type of v from int to String.

                    var v = 123;       // v is of type int.
                    v = 456;           // changing value of v from 123 to 456.
                    v = 'abc';         // ERROR: can't change type of v from int to String.

                    final v = 123;       // v is of type int.
                    v = 456;           // ERROR: can't change value of v from 123 to 456.
                    v = 'abc';         // ERROR: can't change type of v from int to String.
                    ''',
                  style: Styles.p,
                  textAlign: TextAlign.left,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}

/*
dynamic: can change TYPE of the variable, & can change VALUE of the variable later in code.

var: can't change TYPE of the variable, but can change VALUE of the variable later in code.

final: can't change TYPE of the variable, & can't change VALUE of the variable later in code.

dynamic v = 123;   // v is of type int.
v = 456;           // changing value of v from 123 to 456.
v = 'abc';         // changing type of v from int to String.

var v = 123;       // v is of type int.
v = 456;           // changing value of v from 123 to 456.
v = 'abc';         // ERROR: can't change type of v from int to String.

final v = 123;       // v is of type int.
v = 456;           // ERROR: can't change value of v from 123 to 456.
v = 'abc';         // ERROR: can't change type of v from int to String.

 */