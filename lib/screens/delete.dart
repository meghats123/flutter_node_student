import 'package:flutter/material.dart';
import 'package:flutter_node_student/screens/mydrawer.dart';
class StudDelete extends StatelessWidget {
  TextEditingController getAdmissionno=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Delete"),
          backgroundColor: Colors.amber,
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getAdmissionno,
                decoration: InputDecoration(
                    hintText: "Enter Admission No",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0,),
              RaisedButton(onPressed: (){
                String getAdmno=getAdmissionno.text;
                print(getAdmno);

              },
                child: Text("SEARCH"),
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
