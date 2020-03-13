import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Not Found!'),
      ),
      body: Center(
        child: Text('You seem to have been lost!'),
      ),
    );
  }
}
