import 'package:flutter/cupertino.dart';
import 'package:flutter_todoie/components/item_card.dart';
class ItemsListView extends StatefulWidget {

  final List<Widget> items;

  ItemsListView( this.items );

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<ItemsListView> {

  List<Widget> _items = [];
  List<Widget> _getReturnItems() {
    widget.items.forEach((element) {
      _items.add(element);
    });
    return _items;
  }

  @override
  void initState() {
    _getReturnItems();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      children: _items,
    );
  }
}
