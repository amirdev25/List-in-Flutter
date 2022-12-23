import 'package:flutter/material.dart';
import 'package:list_widget/ItemModel.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List Application",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      body: const BodyPage(),
    );
  }
}

class BodyPage extends StatefulWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  List<ItemModel> itemList = [];

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
