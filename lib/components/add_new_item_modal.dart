import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todoie/components/item_card.dart';
import 'package:flutter_todoie/components/todoie_button.dart';
import 'package:flutter_todoie/components/todoie_text_field.dart';
import 'package:flutter_todoie/components/todoie_textarea.dart';
import 'package:flutter_todoie/constants/colours.dart';
import 'package:flutter_todoie/constants/margins.dart';
import 'package:flutter_todoie/constants/styles.dart';
import 'package:flutter_todoie/list_view_page.dart';
import 'package:flutter_todoie/state/list.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class AddNewItemModal extends StatefulWidget {
  const AddNewItemModal({Key? key}) : super(key: key);

  @override
  _AddNewItemModalState createState() => _AddNewItemModalState();
}

class _AddNewItemModalState extends State<AddNewItemModal> {

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  bool _fieldsAreValid() {
    if(_titleController.text.length < 2) {
      return false;
    }
    if(_descriptionController.text.length < 2) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppMargins.DEFAULT_MARGIN),
      color: AppColours.BACKGROUND_COLOUR,
      height: MediaQuery.of(context).size.height * 0.85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("New Item", style: AppComStyles.TITLE_TEXT_STYLE),
          SizedBox(height: 20.0),
          TodoieTextField(hintText: "Title",
            textEditingController: _titleController,
          ),
          SizedBox(height: 20.0),
          TodoieTextArea(hintText: "Description", textEditingController: _descriptionController,),
          SizedBox(height: 20.0),
          Row(
            children: [
              TodoieButton("Add", () {
                if(_fieldsAreValid()) {
                  int id = Provider.of<TodoieListState>(context, listen: false).list.length;
                  context.read<TodoieListState>().addItem(
                      ItemCard(id, _titleController.text, _descriptionController.text)
                  );
                  Navigator.pop(context);
                }
              }),
              SizedBox(width: 10.0,),
              TodoieButton("Cancel", () {
                Navigator.pop(context);
              }),
            ],
          ),
        ],
      ),
    );
  }
}