import 'package:loginproject/student.dart';
class StudentAccess {

  StudentAccess();

  static List<Student> ls = List.empty(growable: true);


  static List<Student> getall() {
    return ls;
  }


  int saveObject(Student pro) {
    ls.add(pro);
    return ls.length;
  }
}