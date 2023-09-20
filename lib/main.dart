import 'package:flutter/material.dart';
import 'package:loginproject/WelcomePage.dart';
import 'package:loginproject/signup.dart';
import 'package:loginproject/ForgotPassword.dart';
void main() => runApp( MyApp());
bool _isObscure = true;
class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}
class _MyApp extends State<MyApp>{


  static const String _title = 'EagleSight Teachers Support app';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        //main color
          primaryColor: const Color(0xffFFC600),
          //main font

          //swatch stretching

          visualDensity: VisualDensity.adaptivePlatformDensity,

          splashColor:  const Color(0xffFFC600),

          //color for scrollbar
          highlightColor: Colors.deepOrange

      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),backgroundColor: Colors.deepOrange,),
        body: const MyStatefulWidget(),

      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {


  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Padding(

        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[

            Container(
              height: 240.0,
              width: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/bd.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text( 'EaglesSight UNIVERSITY',
                  style: TextStyle(
                      shadows: [
                        Shadow(color: Colors.grey, blurRadius: 8, offset: Offset(2, 2))
                      ],

                      color: Colors.amber,
                      fontFamily: 'Lobster',
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,

                      fontSize: 35),


                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20,color: Colors.deepOrange,
                      fontWeight:FontWeight.w900 ,
                      fontStyle: FontStyle.italic),

                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(

                style: TextStyle(color: Colors.deepOrange),
                controller: nameController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  labelText: 'Enter your User Name',

                ),
              ),
            ),
            Container(

              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(

                style: TextStyle(color: Colors.deepOrange),
                obscureText: _isObscure,
                controller: passwordController,
                decoration:  InputDecoration(
                  suffixIcon: IconButton(

                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                    color: Colors.deepOrange,
                    size: 20,),
                    onPressed: () {
                      setState(
                            () {
                          _isObscure = !_isObscure;
                        },
                      );
                    },
                ),
                  prefixIcon: Icon(Icons.lock),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  labelText: 'Enter your Password',
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ForgotPassword();
                }));
              },

              child: const Text('Forgot Password?',

                style: TextStyle(

                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),),

            ),

           Container(

              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red, // Background color
                  ),
                  child: const Text('Login'),

                  onPressed: () {
                    setState(
                            (){

                          String text1 = nameController.text;
                          String text2 = passwordController.text;

                          if(text1== "trz" && text2== "trz123" ){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return StudentProfile();
                            },
                            ),
                            );
                          }
                          else{
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return ErrorPage();
                            },
                            ),
                            );
                          }
                        }
                    );
                  }
              ),
            ),

            Row(
               children: <Widget>[
                const Text('Dont you have an account yet?'
                ,style: TextStyle(fontWeight: FontWeight.w600 ),
                ),
                TextButton(
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 20,color: Colors.deepOrange,fontWeight:FontWeight.w900 ,fontStyle: FontStyle.italic)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentSignUpPage(),
                      ),
                    );
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error Page'),backgroundColor: Colors.deepOrange,
      ),
      body:ListView(
          padding: const EdgeInsets.symmetric(vertical: 180.0),

        children: <Widget>[

        Container(
        height: 240.0,
        width: 200.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/cc.jpg'),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),),
      Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: const Text( ' You entered the wrong credentials',
            style: TextStyle(


                color: Colors.amber,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontSize: 20),


          )),
      ]
    ),
    );


  }
}