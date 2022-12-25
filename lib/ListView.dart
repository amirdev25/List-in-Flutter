import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ItemModel.dart';

class MyListView extends StatelessWidget {
  List<ItemModel> itemList = [];

  MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    loadData();
    return ListView.separated(
      itemBuilder: (context, index) {
        return Card(
          elevation: 4.0,
          child: ListTile(
            leading: const Icon(Icons.face),
            title: Text(itemList[index].name),
            subtitle: Text(itemList[index].phoneNumber),
            trailing: const Icon(Icons.check),
            onTap: () {
              _showToast();
              alertDialogShow(context);
            },
          ),
        );
      },
      separatorBuilder: (context, index) {
        if (index % 4 == 0 && index != 0) {
          return const Divider(
            thickness: 5.0,
            color: Colors.red,
            height: 32.0,
            indent: 32.0,
            endIndent: 32.0,
          );
        } else {
          return const Divider();
        }
      },
      itemCount: 20,
    );
  }

  void loadData() {
    itemList = List.generate(
      50,
      (index) => ItemModel("name: $index", "Phone: $index,"),
    );
  }

  void alertDialogShow(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          return AlertDialog(
            title: const Text("Text"),
            content: SingleChildScrollView(
              child: Row(
                children: const [
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                  Text("this is content"),
                ],
              ),
            ),
            actions: [
              OutlinedButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.bodyLarge,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Enable"),
                // icon: const Icon(
                //   Icons.check,
                //   color: Colors.green,
                // ),
              ),
              OutlinedButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Disable"),
                // icon: const Icon(
                //   Icons.error_outline,
                //   color: Colors.red,
                // ),
              )
            ],
          );
        });
  }

  void _showToast() {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (context) => ToastNoContext(),
    // ));
    Fluttertoast.showToast(
      msg: "Item Clicked",
      toastLength: Toast.LENGTH_LONG,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 20.0,
      gravity: ToastGravity.TOP,
    );
  }
}
