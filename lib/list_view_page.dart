import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todoie/components/item_card.dart';
import 'package:flutter_todoie/components/items_list.dart';
import 'package:flutter_todoie/components/todoie_button.dart';
import 'package:flutter_todoie/components/todoie_text_field.dart';
import 'package:flutter_todoie/constants/colours.dart';
import 'package:flutter_todoie/constants/margins.dart';
import 'package:flutter_todoie/constants/styles.dart';
import 'package:flutter_todoie/state/list.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

class TodoieListView extends StatefulWidget {

  static List<Widget> items = [];

  @override
  _TodoieListViewState createState() => _TodoieListViewState();
}

class _TodoieListViewState extends State<TodoieListView> {

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
                TodoieButton("Add", () {
                  showCupertinoModalBottomSheet(context: context, builder: (context) {
                    return AddNewItemModal();
                  });
                }),
                SizedBox(height: 20.0),
                TodoieTextField("Search..."),
                SizedBox(height: 20.0),
                ItemsListView(),
                SizedBox(height: 20.0),
                Text("Schedule", style: AppComStyles.TITLE_TEXT_STYLE),
                Column(
                  children: [

                  ],
                ),
              ],
            ),
          )
      ),
    );
  }
}

class AddNewItemModal extends StatelessWidget {
  const AddNewItemModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppMargins.DEFAULT_MARGIN),
      color: AppColours.BACKGROUND_COLOUR,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TodoieTextField("Lmao"),
          TodoieButton("Add", () {
            context.read<TodoieListState>().addItem(
                ItemCard("testitem", "descirption");
            );
          }),
        ],
      ),
    );
  }
}
