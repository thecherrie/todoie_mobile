import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todoie/components/item_card.dart';
import 'package:flutter_todoie/components/items_list.dart';
import 'package:flutter_todoie/components/todoie_text_field.dart';
import 'package:flutter_todoie/constants/colours.dart';
import 'package:flutter_todoie/constants/margins.dart';
import 'package:flutter_todoie/constants/styles.dart';

class TodoieListView extends StatefulWidget {

  @override
  _TodoieListViewState createState() => _TodoieListViewState();
}

class _TodoieListViewState extends State<TodoieListView> {

  List<ItemCard> _items = [];
  List<Widget> _addItem(ItemCard newItem) {
    List<Widget> newList = [];
    setState(() {
      newList.add(newItem);
    });
    return newList;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColours.BACKGROUND_COLOUR,
        leading: Icon(Icons.menu),
      ),
      backgroundColor: AppColours.BACKGROUND_COLOUR,
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(AppMargins.DEFAULT_MARGIN),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoButton(
                  child: Text("Add"),
                  borderRadius: BorderRadius.circular(AppMargins.DEFAULT_BORDER_RADIUS),
                  color: AppColours.ORANGE_COLOUR,
                  onPressed: () => _addItem(
                    ItemCard("ss", "sdfsdf")
                  ),
                ),
                SizedBox(height: 20.0),
                TodoieTextField("Search..."),
                ItemsListView(_items),
                SizedBox(height: 20.0),
                Text("Schedule", style: AppComStyles.TITLE_TEXT_STYLE)
              ],
            ),
          )
      ),
    );
  }
}