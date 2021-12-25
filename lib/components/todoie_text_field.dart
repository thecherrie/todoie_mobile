import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todoie/constants/colours.dart';
import 'package:flutter_todoie/constants/margins.dart';

class TodoieTextField extends StatelessWidget {
  final String hintText;

  TodoieTextField( this.hintText );

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      maxLength: 30,
      placeholder: hintText,
      decoration: BoxDecoration(
          color: AppColours.ACCENT_PURPLE_COLOUR,
          borderRadius: BorderRadius.circular(AppMargins.DEFAULT_BORDER_RADIUS)
      ),
      padding: EdgeInsets.all(16.0),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
