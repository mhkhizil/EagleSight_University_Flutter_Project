class Student {
  String name;
  String email;
  String password;
  int age;
  String school;

  Student(this.name, this.email,this.password,this.age,this.school);
}

List<Student> studentList = [];

void addStudent(String name, String email,String password,int age,String school) {
  Student student = Student(name,email,password,age,school);
  studentList.add(student);
}
