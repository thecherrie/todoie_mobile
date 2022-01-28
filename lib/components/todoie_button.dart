import 'package:flutter/cupertino.dart';
import 'package:flutter_todoie/constants/colours.dart';
import 'package:flutter_todoie/constants/margins.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
class TodoieButton extends StatelessWidget {

  String btnText;
  void Function() onPressed;

  TodoieButton( this.btnText, this.onPressed );

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 15.0),
        child: Text(btnText),
        borderRadius: BorderRadius.circular(AppMargins.DEFAULT_BORDER_RADIUS),
        color: AppColours.ORANGE_COLOUR,
        onPressed: onPressed,
    );
  }
}