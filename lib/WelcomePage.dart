import 'package:flutter/material.dart';
import 'package:loginproject/Aboutus.dart';
import 'package:loginproject/ContactUs.dart';
import 'package:loginproject/main.dart';
import 'package:loginproject/privacypolicy.dart';



class StudentProfile extends StatefulWidget {
  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
        // code for MyCustomWidget
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
             DrawerHeader(
              child: Text(
                'Side menu',
          textAlign: TextAlign.center,
                style: TextStyle( color: Colors.yellowAccent.withOpacity(0.8), fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,height: 6,),
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/qq.webp'))),
            ),
            ListTile(
              leading: Icon(Icons.info_rounded),
              title: Text('About us'),
              onTap: () => {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => AboutUs(),
              ),
              )
              },
            ),
            ListTile(
              leading: Icon(Icons.security_outlined),
              title: Text(' Privacy & policy'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => privacypolicy(),
                  ),
                )
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Contact us '),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactUs(),
                  ),
                )
              },
            ),

            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ),
                )
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[


        ],

        title: Text('Student Information'),
        backgroundColor: Colors.deepOrange,


      ),
      body:Scrollbar(
        thickness: 5,


        child: ListView(
        children: <Widget>[
        Center(
         child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text( 'EaglesSight UNIVERSITY',
                style: TextStyle(
                    shadows: [
                      Shadow(color: Colors.grey, blurRadius: 8, offset: Offset(2, 2))
                    ],

                    color: Colors.amber,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Lobster',
                    fontSize: 38),


              )),
        ),
          Center(
            child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text( 'Dr Myo Myint Oo student list',
                  style: TextStyle(


                      color: Colors.red,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),


                )),
          ),


          Center(

        child:

        Container(
    width: 300,
    height: 200,
    padding: new EdgeInsets.all(8.0),
    child: Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
    ),
      color: Colors.deepOrange,
      elevation: 13,
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
       ListTile(
      leading:Container(
        height: 280.0,
        width: 80.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/dd.jfif'),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),),
      title:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Name:Thurein Zaw",style: TextStyle(fontSize: 14,height:2,fontWeight: FontWeight.bold)),
          Text("Age:20",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
          Text("Speciality:Backend ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
          Text("Gender:Male ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
          Text("Major:SE ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
        ],
      ),

    ),
         ]
        ),

      )



   ,
      ),
        ),
          Center(

            child: Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.deepOrange,
                elevation: 13,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading:Container(
                          height: 280.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/ee.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),),
                        title:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Name:Moe Thiha  Zaw",style: TextStyle(fontSize: 14,height:2,fontWeight: FontWeight.bold)),
                            Text("Age:19",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Speciality:Fronend ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Gender:Male ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Major:SE ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                          ],
                        ),

                      ),
                    ]
                ),

              )



              ,
            ),
          ),
          Center(

            child: Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.deepOrange,
                elevation: 13,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading:Container(
                          height: 300.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/jj.jfif'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),),
                        title:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Name:Ye Myat Lin ",style: TextStyle(fontSize: 14,height:2,fontWeight: FontWeight.bold)),
                            Text("Age:20",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Speciality:database ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Gender:Male ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Major:SE ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                          ],
                        ),

                      ),
                    ]
                ),

              )



              ,
            ),
          ),
          Center(

            child: Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.deepOrange,
                elevation: 13,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading:Container(
                          height: 280.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/mm.webp'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),),
                        title:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Name:Hla yamin khin",style: TextStyle(fontSize: 14,height:2,fontWeight: FontWeight.bold)),
                            Text("Age:18",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Speciality:frontend ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Gender:Female ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Major:SE ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                          ],
                        ),

                      ),
                    ]
                ),

              )



              ,
            ),
          ),
          Center(

            child: Container(
              width: 300,
              height: 200,
              padding: new EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.deepOrange,
                elevation: 13,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading:Container(
                          height: 280.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/hh.jpg'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                          ),),
                        title:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Name:Hla yoon Myat  ",style: TextStyle(fontSize: 14,height:2,fontWeight: FontWeight.bold)),
                            Text("Age:22",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Speciality:Backend ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Gender:Female ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                            Text("Major:SE ",style: TextStyle(fontSize: 14,height: 2,fontWeight: FontWeight.bold)),
                          ],
                        ),

                      ),
                    ]
                ),

              )



              ,
            ),
          ),




        ]
    ),
      )
    );

  }
}