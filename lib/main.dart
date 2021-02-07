import 'package:flutter/material.dart';
import 'package:flutter_node_student/screens/mydrawer.dart';

void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student App"),
          backgroundColor: Colors.amber,
        ),
        drawer: MyDrawer(),
        body: Container(),
      ),
    );
  }
}
