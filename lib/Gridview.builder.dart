import 'package:flutter/material.dart';
import 'package:flutter_project11/Gridview.custom.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GRIDVIEW.BUILDER"),backgroundColor: Color.fromARGB(255, 211, 164, 150),
      ),
        body: SafeArea(
            child: Column(
              children:[ Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5, crossAxisSpacing: 7, mainAxisSpacing: 5),
                    itemCount: 200,
                    itemBuilder: (context, index) {
                      return Text("${index+1}");
                    },
                  ),
              ),ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdPage(),));
                }, child:Text("GRIDVIEW.CUSTOM  > ")),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text(" < GRIDVIEW"))
            ])));
  }
}
