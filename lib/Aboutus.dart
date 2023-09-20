import 'package:flutter/material.dart';
import 'package:loginproject/student.dart';
import 'package:loginproject/studentAccess.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUs createState() => _AboutUs();
}

class _AboutUs extends State<AboutUs> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' About  EagleSight  '),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
          child:Container(
            padding: EdgeInsets.all(20.0),
    child: Center(

    child: Column(
        children: [
          const Text('About our UNIVERSITY ',style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontSize: 23
          ),),
        Container(
          height: 260.0,
          width: 400.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/abc.png'),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.rectangle,
          ),
        ),
          const Text('EagleSight UNIVERSITY ',style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontFamily: 'Lobster',
              fontSize: 35,
            height: 2
          ),),
          const Text('Situated in Myanmar, in the heart of Western Yangon, EagleSight has been a centre of learning for nearly six centuries. Founded in 1425 by Pope Martin V, KU Leuven bears the double honour of being the oldest existant  university in the Myanmar and the oldest university in the Low Countries. Today, it is Myanmar’s largest university. As a leading Burmese research university and co-founder of the League of SEA Research Universities (LSEARU), EagleSight offers a wide variety of international master’s programmes, all supported by high-quality, innovative, interdisciplinary research. The university also offers degree programmes at campuses in 11 Myanmar cities, including Yangon, Mandalay, Irrawady and Bago.  ',style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontStyle: FontStyle.italic,
              fontFamily: 'GrenzeGotisch',
              fontSize: 15,
              height: 2
          ),),
        ]

    )

    )
          )
      ),
    );
  }
}