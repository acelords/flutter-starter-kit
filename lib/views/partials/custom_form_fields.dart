import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:starterkit/utils/styles.dart';

class MyTextFormField extends StatelessWidget {
  final String initialValue;
  final String label;
  final String placeholder;
  final Function validator;
  final Function onSaved;
  final Function onChanged;
  final bool isPassword;
  final bool isEmail;
  final bool isPhone;
  final bool isNumber;
  final bool isWhite;
  final bool isBlack;

  TextInputType type;

  MyTextFormField({
    this.initialValue = "",
    this.placeholder = "",
    this.label,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
    this.isPhone = false,
    this.isNumber = false,
    this.isWhite = false,
    this.isBlack = false,
    this.onChanged,
  });

  TextInputType _getType() {
    if(this.isEmail)
      return TextInputType.emailAddress;

    else if(this.isPhone)
      return TextInputType.phone;

    else if(this.isNumber)
      return TextInputType.number;

    return TextInputType.multiline;
  }

  Color _getColor(context) {
    if(this.isWhite)
      return Colors.white;

    if(this.isBlack)
      return Colors.grey[700];

    return Theme.of(context).primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: initialValue,
        style: TextStyle(
          color: _getColor(context),
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: _getColor(context),
            ),
          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(
//              color: _getColor(context),
//            ),
//          ),
          labelText: label,
          labelStyle: Styles.p.copyWith(
            color: _getColor(context),
          ),
          hintText: placeholder,
          hintStyle: Styles.p.copyWith(
            color: _getColor(context),
          ),
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
        keyboardType: _getType(),
        maxLines: null,
      ),
    );
  }
}

class MyTextFormField2 extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;
  final bool isPhone;
  final bool isNumber;

  TextInputType type;

  MyTextFormField2({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
    this.isPhone = false,
    this.isNumber = false,
  });

  TextInputType _getType() {
    if(this.isEmail)
      return TextInputType.emailAddress;

    else if(this.isPhone)
      return TextInputType.phone;

    else if(this.isNumber)
      return TextInputType.number;

    return TextInputType.text;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: _getType(),
      ),
    );
  }
}

Widget MySubmitButton(String text, Function action) {
  return MaterialButton(
    onPressed: action,
    child: Text(text,
      style: Styles.p_button.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    ),
    color: Color(Styles.redColor),
    elevation: 0,
    minWidth: 350,
    height: 50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );
}

Widget MySubmitThemedButton(context, String text, Function action) {
  return MaterialButton(
    onPressed: action,
    child: Text(text,
      style: Styles.p_button.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    ),
    color: Theme.of(context).primaryColor,
    elevation: 0,
    minWidth: 350,
    height: 50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );
}


Widget MySubmitIconedButton(String text, Icon icon, bool isFilled, Function action) {
  return MaterialButton(
    onPressed: action,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        icon,
        Expanded(
          child: Text(text,
            style: Styles.p_button.copyWith(
              fontWeight: FontWeight.bold,
              color: isFilled ? Colors.white : Color(Styles.redColor),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
    color: isFilled ? Color(Styles.redColor) : Colors.transparent,
    textColor: isFilled ? Colors.white : Color(Styles.redColor),
    elevation: 0,
    minWidth: 350,
    height: 50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
      side: BorderSide(color: Color(Styles.redColor)),
    ),
  );
}


Widget MySubmitIconedThemedButton(context, String text, Icon icon, bool isFilled, Function action) {
  return MaterialButton(
    onPressed: action,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        icon,
        Expanded(
          child: Text(text,
            style: Styles.p_button.copyWith(
              fontWeight: FontWeight.bold,
              color: isFilled ? Colors.white : Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
    color: isFilled ? Theme.of(context).primaryColor : Colors.transparent,
    textColor: isFilled ? Colors.white : Theme.of(context).primaryColor,
    elevation: 0,
    minWidth: 350,
    height: 50,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
      side: BorderSide(color: Theme.of(context).primaryColor),
    ),
  );
}

Widget MyLoadingButton(context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
    child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(
            Radius.circular(35.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SpinKitRipple(
              color: Colors.white,
            ),
          ),
        )
    ),
  );
}

Widget MyLoadingButton2(context) {
  return Center(
    child: SpinKitRipple(
      color: Theme.of(context).primaryColor,
    ),
  );
}

Widget MyLoadingButton2WithText(context, {String text: 'Loading...'}) {
  return Column(
    children: <Widget>[
      Center(
        child: Text(text, style: Styles.p.copyWith(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
          ),
        ),
      ),

      Center(
        child: SpinKitRipple(
          size: 50,
          color: Theme.of(context).primaryColor,
        ),
      ),
    ],
  );
}


Widget MyCardButton(String text, Function action) {
  return MaterialButton(
    onPressed: action,
    child: Text(text,
      style: Styles.p_button.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    ),
    color: Color(Styles.redColor),
    height: 40,
    minWidth: 170,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );
}


Widget MyCardThemedButton(context, String text, Function action) {
  return MaterialButton(
    onPressed: action,
    child: Text(text,
      style: Styles.p_button.copyWith(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    color: Theme.of(context).primaryColor,
    height: 40,
    minWidth: 170,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
      side: BorderSide(color: Colors.white),
    ),
  );
}


Widget MyCardIconThemedButton(context, String text, Icon icon, Function action) {
  return MaterialButton(
    onPressed: action,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        icon,
        Text(text,
          style: Styles.p_button.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
      ],
    ),
    color: Theme.of(context).primaryColor,
    height: 40,
    minWidth: 170,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
      side: BorderSide(color: Colors.white),
    ),
  );
}


Widget MyOutlinedButton(String text, Function action) {
  return OutlineButton(
    child: Text(text,
      style: Styles.p_button.copyWith(
        fontWeight: FontWeight.bold,
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    onPressed: action,
  );
}

Widget MyOutlinedThemedButton(context, String text, Function action) {
  return OutlineButton(
    child: Text(text,
      style: Styles.p_button.copyWith(
        fontWeight: FontWeight.bold,
        color: Theme.of(context).primaryColor,
      ),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    borderSide: BorderSide(
      color: Theme.of(context).primaryColor,
    ),
    onPressed: action,
  );
}

class InputWidget extends StatelessWidget {
  final double topRight;
  final double bottomRight;

  InputWidget(this.topRight, this.bottomRight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40, bottom: 30),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        child: Material(
          elevation: 10,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(bottomRight),
                  topRight: Radius.circular(topRight))),
          child: Padding(
            padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "JohnDoe@example.com",
                  hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14)),
            ),
          ),
        ),
      ),
    );
  }
}