/// _id : "601ee70b422dd52b1c10cdf6"
/// studentname : "Meenu"
/// rollno : 14
/// admissionno : 120
/// college : "MZC"

class Students {
  String _id;
  String _studentname;
  int _rollno;
  int _admissionno;
  String _college;

  String get id => _id;
  String get studentname => _studentname;
  int get rollno => _rollno;
  int get admissionno => _admissionno;
  String get college => _college;

  Students({
      String id, 
      String studentname, 
      int rollno, 
      int admissionno, 
      String college}){
    _id = id;
    _studentname = studentname;
    _rollno = rollno;
    _admissionno = admissionno;
    _college = college;
}

  Students.fromJson(dynamic json) {
    _id = json["_id"];
    _studentname = json["studentname"];
    _rollno = json["rollno"];
    _admissionno = json["admissionno"];
    _college = json["college"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["_id"] = _id;
    map["studentname"] = _studentname;
    map["rollno"] = _rollno;
    map["admissionno"] = _admissionno;
    map["college"] = _college;
    return map;
  }

}