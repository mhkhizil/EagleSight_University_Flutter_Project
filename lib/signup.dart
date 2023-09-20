import 'package:flutter/material.dart';
import 'package:loginproject/student.dart';
import 'package:loginproject/studentAccess.dart';
import 'package:flutter/services.dart';


class StudentSignUpPage extends StatefulWidget {
  @override
  _StudentSignUpPageState createState() => _StudentSignUpPageState();
}

class _StudentSignUpPageState extends State<StudentSignUpPage> {
  final _formKey = GlobalKey<FormState>();

  final emailRegex = RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
  final passwordRegex=RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
  String _name = " ";
  String _email = "";
  String _password = "";
  int _age = 0;
  String _school = "";
  int size =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Sign Up to EagleS UNIVERSITY '),backgroundColor: Colors.deepOrange,
      ),
      body:SingleChildScrollView(
      child:Container(

        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                height: 240.0,
                width: 370.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/bd.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),),

              const Text('Please enter your informaions ',style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                  fontSize: 23
              ),),
              TextFormField(
                style: TextStyle(color: Colors.deepOrange),

                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  labelText: 'Name',


                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) => _name = value!,
              ),
              TextFormField(

                style: TextStyle(color: Colors.deepOrange),

                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || !emailRegex.hasMatch(value)){
                    return 'Invalid email !Please try again';
                  }
                  return null;
                },
                onSaved: (value) => _email = value!,
              ),
              TextFormField(
                style: TextStyle(color: Colors.deepOrange),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || !passwordRegex.hasMatch(value) ) {
                    return 'Invalid password!It must not be null ,it must have at least one uppercase letter,one lowercase letter,one number, one special character and length of 8 characters';
                  }
                  return null;
                },
                onSaved: (value) => _password = value!,
                obscureText: true,
              ),
              TextFormField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                style: TextStyle(color: Colors.deepOrange),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  labelText: 'Age',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
                onSaved: (value) => _age = int.parse(value!),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                style: TextStyle(color: Colors.deepOrange),
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  labelText: 'Subject',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your school';
                  }
                  return null;
                },
                onSaved: (value) => _school = value!,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Background color
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                    setState(() {

                      // Save the student data to the database here
                      Student std = new Student(_name,_email,_password,_age,_school);
                      StudentAccess d = new StudentAccess();
                      size = d.saveObject(std);


                    });
                  },
                  child: Text('Sign Up'),
                ),
              ),
              SizedBox(height: 15,),

              Container(

                child: Center(
                  child: Text(
                      '$size Student data Added'
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      )

    );
  }
}



