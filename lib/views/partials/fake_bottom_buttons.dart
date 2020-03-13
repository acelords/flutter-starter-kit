import 'package:flutter/material.dart';

List<Widget> FakeBottomButtons({double height = 65}) {
  List<Widget> fakeBottomButtons = new List<Widget>();
  fakeBottomButtons.add(new Container(
    height: height,
    color: Colors.transparent,
  ));
  return fakeBottomButtons;
}

Widget FakeBottom({double height = 65}) {
  return SizedBox(height: height,);
}
