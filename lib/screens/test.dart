import 'package:flutter/material.dart';
import 'package:untitled/googlemap.dart';
import 'package:untitled/screens/Appointment.dart';
import 'package:untitled/screens/chat.dart';
import 'package:untitled/screens/ji.dart';
import 'package:webview_flutter/webview_flutter.dart';


class CookieDetails extends StatelessWidget {
  final assetPath, cookieprice, cookiename,name2,ismis,pop,lop,name,opo;
  CookieDetails({this.assetPath, this.cookieprice, this.cookiename,this.name2, this.ismis, this.pop, this.lop, this.name, this.opo});
  DateTime date=DateTime(2022,12,24);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,



      ),

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
              child: ListView(
                children: [
                  SizedBox(height: 15.0),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),

                  ),
                  SizedBox(height: 15.0),
                  Hero(
                      tag: assetPath,
                      child: Image.asset(assetPath,
                          height: 150.0,
                          width: 100.0,
                          fit: BoxFit.contain
                      )

                  ),
                  SizedBox(height: 20.0),
                  Center(
                    child: Text(cookieprice,
                        style: TextStyle(
                            fontFamily: 'Varela',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  SizedBox(height: 10.0),
                  Center(
                    child: Text(cookiename,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Varela',
                            fontSize: 24.0)),
                  ),
                  SizedBox(height: 10.0),
                  Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width - 50.0,
                        child: Text(name2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontSize: 16.0,
                                color: Colors.black.withOpacity(1.0),
                                fontWeight: FontWeight.w600
                            ))
                    ),
                  ),
SizedBox(height: 10,),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(30, 30)),
                        border: Border.all(width: 1.0,  color: Colors.white,),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white.withOpacity(0.2)),
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Chat()));
                      }, child: Text(ismis),),

                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 10,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(30, 30)),
                        border: Border.all(width: 1.0,  color: Colors.white,),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white.withOpacity(0.2)),
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => opo));

                      }, child: Text(pop),),

                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 1.8,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(30, 30)),
                        border: Border.all(width: 1.0,  color: Colors.white,),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white.withOpacity(0.2)),
                    child: TextButton(
                      onPressed: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Appointment(

                              cookiename: name,

                            )));
                      }, child: Text(lop),),

                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
