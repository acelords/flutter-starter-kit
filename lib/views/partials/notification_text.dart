import 'package:flutter/material.dart';
import 'package:starterkit/utils/styles.dart';

class NotificationText extends StatelessWidget {
  final String text;
  final String type;

  NotificationText(this.text, {this.type, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color color = Colors.red;

    if ('info' == type) {
      color = Colors.blue;
    }

    return text.isNotEmpty
        ? Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Styles.p_white,
            ),
          )
        : Container();
  }
}
