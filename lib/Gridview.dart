import 'package:flutter/material.dart';
import 'package:flutter_project11/Gridview.builder.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GRIDVIEW"),backgroundColor: const Color.fromARGB(255, 223, 182, 170),
      ),
        body: SafeArea(
      child: Column(children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 4,
            children: [
              Text('RUFAID'),
              Text('RUMAIZ'),
              Text('ADIL'),
              Text('NIYAS'),
              Text('ANFZS'),
              Text('HANI'),
              Text('MINHAJ'),

            ],
          ),
        ),ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Second(),));
        }, child: Text("GRIDVIEW_BUILDER >"))
      ]),
    ));
  }
}
