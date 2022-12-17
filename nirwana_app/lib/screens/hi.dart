import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/widget/widget.dart';

class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

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
    margin: EdgeInsets.only(top: 100),

    height: 600,
    width: 400,
    decoration: BoxDecoration(
    color: Colors.white.withOpacity(0.2),
    borderRadius:
    BorderRadius.all(Radius.elliptical(15, 15)),
    ) ,
    ),),
    ),
    Column(
    children: [

    const SizedBox(
    height: 20,
    ),
    reusableTextField("Email Address", Icons.email, false,
    _emailTextController),
    const SizedBox(
    height: 20,
    ),
    reusableTextField(" Password", Icons.lock, true,
    _passwordTextController),
    const SizedBox(
    height: 20,
    ),
    ],
    ),],
    ),
    );

  }
}

