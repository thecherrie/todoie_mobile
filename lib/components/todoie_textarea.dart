
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_todoie/constants/colours.dart';
import 'package:flutter_todoie/constants/margins.dart';

class TodoieTextArea extends StatelessWidget {

  final TextEditingController? textEditingController;
  final String hintText;

  const TodoieTextArea({ required this.hintText, this.textEditingController });

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      maxLines: 10,
      controller: textEditingController,
      maxLength: 30,
      placeholder: hintText,
      placeholderStyle: TextStyle(color: Colors.white.withOpacity(0.3)),
      decoration: BoxDecoration(
          color: AppColours.ACCENT_PURPLE_COLOUR,
          borderRadius: BorderRadius.circular(AppMargins.DEFAULT_MARGIN)
      ),
      padding: EdgeInsets.all(16.0),
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
