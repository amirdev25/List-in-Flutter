import 'package:flutter/material.dart';

class MyGridViewBuilder extends StatelessWidget {
  const MyGridViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: 100,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: Colors.red[100 * ((index + 1) % 8)],
          alignment: Alignment.center,
          child: Text("Container $index"),
        );
      },
    );
  }
}
