import 'package:flutter/material.dart';
import 'package:flutter_todoie/components/todoie_button.dart';
import 'package:flutter_todoie/constants/colours.dart';
import 'package:flutter_todoie/constants/margins.dart';
import 'package:flutter_todoie/constants/styles.dart';
import 'package:flutter_todoie/state/list.dart';
import 'package:provider/src/provider.dart';
class ItemCard extends StatelessWidget {

  final int id;
  final String itemTitle;
  final String itemDescription;

  ItemCard( this.id, this.itemTitle, this.itemDescription );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(20.0),
      height: 200.0,
      decoration: BoxDecoration(
          color: AppColours.LIGHTER_PURPLE_COLOUR.withOpacity(0.6),
          borderRadius: BorderRadius.circular(AppMargins.DEFAULT_BORDER_RADIUS)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(itemTitle,
              style: AppComStyles.ITEM_TITLE_TEXT_STYLE
          ),
          SizedBox(height:12.0),
          Text(itemDescription,
              style: AppComStyles.ITEM_DESCRIPTION_TEXT_STYLE
          ),
          Spacer(),
          TodoieButton("Complete", () => context.read<TodoieListState>().removeItem(id))
        ],
      ),
    );
  }
}
