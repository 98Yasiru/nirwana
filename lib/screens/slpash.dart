import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:untitled/screens/sigin_screens.dart';
class Slpash extends StatefulWidget {
  const Slpash({Key? key}) : super(key: key);

  @override
  State<Slpash> createState() => _SlpashState();
}

class _SlpashState extends State<Slpash> {

  void initState() {
    super.initState();
//Navigates to new screen after 5 seconds.
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => SigInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
    body: Center(

      child: Container(
        height: 700,
        width: 420,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-1.0, -0.979),
            end: Alignment(-0.055, 1.0),
            colors: [const Color(0xb200685e), const Color(0xb2808080)],
            stops:  [0.0, 1.0],
          ),
          border: Border.all(width: 1.0, color: const Color(0xb2707070)),
        ),
    child: Wrap(
      children: [

        Column(

          children: <Widget>[
            Transform.rotate(
              angle: -1.5708,


            ),
            Container(
              height: 500,
              width: 700,
              decoration: BoxDecoration(
                image: DecorationImage(

                  image: const AssetImage('image/Picsart_22-03-12_15-22-19-589 (1).png') ,

                  fit: BoxFit.cover,
                ),
              ),
              margin: EdgeInsets.only(left:45 ,right: 45,top: 150,bottom: 200 ),
              child: Center(
                child:AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText("WELCOME TO THE",textStyle:TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 30,
                        color: const Color(0xfff8f8f8),
                        letterSpacing: -2.15,
                      ),
                      ),
                      RotateAnimatedText("නිර්වාණ",textStyle:TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 30,
                        color: const Color(0xfff8f8f8),
                        letterSpacing: -2.15,
                      ),
                      ),

                    ]
                ),
              ),


            ),
SizedBox(
  height: 100,
  width: 100,
  child: Center(
    child: CircularProgressIndicator(backgroundColor: Colors.white,
      valueColor:
      AlwaysStoppedAnimation<Color>(Colors.grey),),
  ),
)
          ],

        ),

      ],

    ),

    ),

    ),

    );
  }
}
