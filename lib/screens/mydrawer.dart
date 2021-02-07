import 'package:flutter/material.dart';
import 'package:flutter_node_student/screens/delete.dart';
import 'package:flutter_node_student/screens/studentadd.dart';
import 'package:flutter_node_student/screens/studentsearch.dart';
import 'package:flutter_node_student/screens/update.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.amber,
            ),
              accountName: null,
              accountEmail: null),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StudAdd()));
            },
            trailing: Icon(Icons.add),
            title: Text("Student Entry"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StudSearch()));
            },
            trailing: Icon(Icons.add),
            title: Text("Student Search"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StudUpdate()));
            },
            trailing: Icon(Icons.add),
            title: Text("Update"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StudDelete()));
            },
            trailing: Icon(Icons.add),
            title: Text("Delete"),
          ),
        ],
      ),
    );
  }
}
