import 'package:flutter/material.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GRIDVIEW.EXTEND"),backgroundColor: Color.fromARGB(255, 153, 118, 107),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 70,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [Text("RUMAIZ")],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(" < GRIDVIEW.CUSTOM"))
        ],
      )),
    );
  }
}