import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todoie/list_view_page.dart';
import 'package:flutter_todoie/components/item_card.dart';
import 'package:flutter_todoie/state/list.dart';
import 'package:provider/provider.dart';
class ItemsListView extends StatefulWidget {

  // final List<Widget> items;
  //
  // ItemsListView( this.items );

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<ItemsListView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      key: UniqueKey(),
      shrinkWrap: true,
      crossAxisCount: 2,
      children: context.watch<TodoieListState>().list,
    );
  }
}
