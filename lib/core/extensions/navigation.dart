import 'package:flutter/material.dart';

void pushTo(BuildContext context, Widget newPage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => newPage));
}

void pushReplacementTo(BuildContext context, Widget newPage) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => newPage),
  );
}

void pushAndReplaceUntilTo(BuildContext context, Widget newPage) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => newPage),
    (Route<dynamic> route) => false, // clear everything
  );
}
