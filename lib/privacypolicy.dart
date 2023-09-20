import 'package:flutter/material.dart';
import 'package:loginproject/student.dart';
import 'package:loginproject/studentAccess.dart';
class privacypolicy extends StatefulWidget {
  @override
  _privacypolicy createState() => _privacypolicy();
}

class _privacypolicy extends State<privacypolicy> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Our Privacy and policy  '),
        backgroundColor: Colors.deepOrange,
      ),
        body: SingleChildScrollView(
    child:Container(
      padding: EdgeInsets.all(20.0),
    child: Center(

    child: Column(
        children: [
          Center(
         child:Text('Privacy & policy ', 
          style: TextStyle(
            fontFamily: "Lobster",

            color: Colors.deepOrange,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
            fontSize: 35,
        ),)),
          Text('Summary ',
            style: TextStyle(

              color: Colors.deepOrange,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontSize: 20,
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
          child: Text('We minimise the use of your data to the bare minimum. We collect your Personal Data only in case you want to sign up for our newsletter and if you use one of our forms. We use cookies to analyse customer behaviour, administer the website, track users’ movements, and to collect information about users. ',style: TextStyle(
              color: Colors.black,

              fontSize: 18
          ),),
          ),
          Text('Definitions ',
            style: TextStyle(

              color: Colors.deepOrange,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontSize: 20,
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
            child: Text('We promise to follow the following data protection principles:Processing is lawful, fair, transparent. Our Processing activities have lawful grounds. We always consider your rights before Processing Personal Data. We will provide you information regarding Processing upon request.Processing is limited to the purpose. Our Processing activities fit the purpose for which Personal Data was gathered.Processing is done with minimal data. We only gather and Process the minimal amount of Personal Data required for any purpose.Processing is limited with a time period. We will not store your personal data for longer than needed.We will do our best to ensure the accuracy of data.We will do our best to ensure the integrity and confidentiality of data. ',style: TextStyle(
                color: Colors.black,

                fontSize: 18
            ),),
          ),
          Text('Data Subject’s Rights ',
            style: TextStyle(

              color: Colors.deepOrange,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontSize: 20,
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
            child: Text('The Data Subject has the following rights:Right to information – meaning you have to right to know whether your Personal Data is being processed; what data is gathered, from where it is obtained and why and by whom it is processed.Right to access – meaning you have the right to access the data collected from/about you. This includes your right to request and obtain a copy of your Personal Data gathered.Right to rectification – meaning you have the right to request rectification or erasure of your Personal Data that is inaccurate or incomplete.Right to erasure – meaning in certain circumstances you can request for your Personal Data to be erased from our records.Right to restrict processing – meaning where certain conditions apply, you have the right to restrict the Processing of your Personal Data.Right to object to processing – meaning in certain cases you have the right to object to Processing of your Personal Data, for example in the case of direct marketing.Right to object to automated Processing – meaning you have the right to object to automated Processing, including profiling; and not to be subject to a decision based solely on automated Processing. This right you can exercise whenever there is an outcome of the profiling that produces legal effects concerning or significantly affecting you.Right to data portability – you have the right to obtain your Personal Data in a machine-readable format or if it is feasible, as a direct transfer from one Processor to another.Right to lodge a complaint – in the event that we refuse your request under the Rights of Access, we will provide you with a reason as to why. If you are not satisfied with the way your request has been handled please contact us.Right for the help of supervisory authority – meaning you have the right for the help of a supervisory authority and the right for other legal remedies such as claiming damages.Right to withdraw consent – you have the right withdraw any given consent for Processing of your Personal Data. ',style: TextStyle(
                color: Colors.black,

                fontSize: 18
            ),),
          ),


        ]
    )
    )

    )
    )
    );
  }
}

