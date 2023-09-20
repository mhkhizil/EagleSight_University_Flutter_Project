import 'package:flutter/material.dart';
import 'package:loginproject/main.dart';

class ForgotPassword extends StatefulWidget {
  static String id = 'forgot-password';

  @override
  _ForgotPassword createState() => _ForgotPassword();
}
class _ForgotPassword extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height:200,
              ),
              Text(
                'Reset Password',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(
                height:5,
              ),
              Text(
                'Please type your email address!', style:TextStyle(fontSize:20,color:Colors.white),
              ),
              TextFormField(

                style: TextStyle(color: Colors.white),

                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  errorStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(color: Colors.white),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Send Email'),

                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Background color
                ),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // Background color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}