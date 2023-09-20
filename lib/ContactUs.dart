import 'package:flutter/material.dart';
import 'package:loginproject/student.dart';
import 'package:loginproject/studentAccess.dart';
class ContactUs extends StatefulWidget {
  @override
  _ContactUs createState() => _ContactUs();
}

class _ContactUs extends State<ContactUs> {

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Contact Info  '),
          backgroundColor: Colors.deepOrange,
        ),
          body: SingleChildScrollView(
    child:Container(
    padding: EdgeInsets.all(20.0),
    child: Center(

    child: Column(
        children: [
        Center(
    child:Text('Contact Us  ',
        style: TextStyle(
          fontFamily: "Lobster",
          color: Colors.deepOrange,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          fontSize: 35,
        )

    ),


    ),
          Container(
            height: 330.0,
            width: 380.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/ww.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(
                  // Set border color
                    width: 3.0),   // Set border width
                borderRadius: BorderRadius.all(
                    Radius.circular(10.0)), // Set rounded corner radius
                boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
            ),
            child: RichText(
              text: TextSpan(
                text: 'Contact us from here \n ',

                style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.w900,fontStyle: FontStyle.italic,color: Colors.black),
                children: const <TextSpan>[
                  TextSpan(text: 'Phone contact :0967547585,098726726,09857564637,09987377643 \n', style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                  TextSpan(text: ' Email: EagleSight555#gmail.com\n',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                  TextSpan(text: ' Facebook :https://www.facebook.com/Eaglesight ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                  TextSpan(text: ' Facebook :https://www.facebook.com/Eaglesight ',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                ],
              ),
            )
          ),
        ]
    )
    )
    )
    )
    );
  }
}