

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/screens/backgroud.dart';
import 'package:untitled/screens/doc.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/ji.dart';
import 'package:untitled/screens/test.dart';


class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<home1> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Stack(
        children: [
          Container(decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, -0.979),
              end: Alignment(-0.055, 1.0),
              colors: [const Color(0xb200685e), const Color(0xb2808080)],
              stops:  [0.0, 1.0],
            ),
            border: Border.all(width: 1.0, color: const Color(0xb2707070)),
          ),),

          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/k.png"),
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 500,),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("image/jil.png"),
                )
            ),
          ),
          Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(),
              child:Container(
                margin: EdgeInsets.only(top: 120),

                height: 580,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius:
                  BorderRadius.all(Radius.elliptical(15, 15)),
                ) ,
              ),),
          ),


          Center(
            child: Container(
              margin: EdgeInsets.only( bottom:150,left: 15,right: 15),

              decoration: BoxDecoration(

                borderRadius:
                BorderRadius.all(Radius.elliptical(15, 15)),

              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  _buildCard('Home',Icon(Icons.home,size: 100,color: Colors.white,),home1(),context ),
                  _buildCard( 'Medical',Icon(Icons.medical_services ,size: 100,color: Colors.white,),homescreen(),context),

                ],

              ),),

          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 400,left: 15,right: 15),

              decoration: BoxDecoration(

                borderRadius:
                BorderRadius.all(Radius.elliptical(15, 15)),

              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  _buildCard( 'Doctors', Icon(Icons.local_hospital,size: 100,color: Colors.white,),doc(),context   ),
                  _buildCard( 'Map', Icon(Icons.location_on ,size: 100,color: Colors.white,),googlemap(),context),
                ],

              ),),

          ),
        ],
      ),




    );
  }

}
Widget _buildCard( String English, Icon icons,Widget path,BuildContext context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context )=>path));
        },
        child: Center(

          child: Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.elliptical(15, 15)),
                  border: Border.all(width: 1.0,  color: Colors.white,),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        spreadRadius: 3.0,
                        blurRadius: 5.0)
                  ],
                  color: Colors.white.withOpacity(0.2)),

                child: Column(children: [

                  Hero(
                      tag: icons,
                      child: Container(
                        margin: EdgeInsets.only(top: 30),
                          height: 120,
                          width: 150,
                        child: SizedBox(
                            child: IconButton(onPressed: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context )=>path));
                            }, icon: icons,)),
                          ),),
                  SizedBox(height: 7.0),
                  Text(English,
                      style: TextStyle(

                          color: Colors.grey,
                          fontFamily: 'Varela',
                          fontSize: 21.0)),


                ]),
              )),
        ),
      );
}