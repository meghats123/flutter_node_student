import 'package:flutter/material.dart';
import 'package:flutter_node_student/screens/mydrawer.dart';
class StudAdd extends StatelessWidget {
  TextEditingController getStudentname=TextEditingController();
  TextEditingController getRollno=TextEditingController();
  TextEditingController getAdmissionno=TextEditingController();
  TextEditingController getCollege=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Student Entry"),
          backgroundColor: Colors.amber,
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: getStudentname,
                  decoration: InputDecoration(
                    hintText: "Enter Student Name",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getRollno,
                  decoration: InputDecoration(
                      hintText: "Enter Rollno",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getAdmissionno,
                  decoration: InputDecoration(
                      hintText: "Enter Admission No",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: getCollege,
                  decoration: InputDecoration(
                      hintText: "Enter College Name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: (){
                  String getSname=getStudentname.text;
                  String getRoll=getRollno.text;
                  String getAdmno=getAdmissionno.text;
                  String getClg=getCollege.text;
                  print(getSname);
                  print(getRoll);
                  print(getAdmno);
                  print(getClg);
                  

                },
                  child: Text("SUBMIT"),
                  color: Colors.amber,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
