import 'package:flutter/material.dart';
import 'package:flutter_todoie/components/item_card.dart';

class TodoieListState extends ChangeNotifier {

  List<Widget> _list = [];

  List<Widget> get list => _list;

  void addItem(ItemCard newItem) {
    _list.add(newItem);
    notifyListeners();
  }

  void removeItem(int id) {

  }

}