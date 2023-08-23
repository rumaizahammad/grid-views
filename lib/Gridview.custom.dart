import 'package:flutter/material.dart';
import 'package:flutter_project11/Gridview.extend.dart';


class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GRIDVIEW.CUSTOM"),backgroundColor: Color.fromARGB(255, 221, 186, 175),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GridView.custom(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5),
                childrenDelegate: SliverChildBuilderDelegate((context, index) {
                  return Text("${index+1}");
                }, childCount: 30),
              )
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LastPage(),
                      ));
                },
                child: Text("GRIDVIEW _EXTENDÍED > ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(" < GRIDVIEW.BUILDER")),
          ],
        ),
      ),
    );
  }
}

