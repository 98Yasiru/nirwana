import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/payment.dart';

import '../widget/widget.dart';

class Appointment extends StatefulWidget {
  const Appointment({Key? key, this.name,  this.cookiename, }) : super(key: key);
 final name,cookiename;

  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _PhoneTextController=TextEditingController();
  DateTime date=DateTime(2022,12,24);
  @override
  Widget build(BuildContext context) {
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
            Container(
              margin: EdgeInsets.only(top: 200,left: 30),
              child: reusableTextField("Full Name", Icons.person, false,
                  _userNameTextController),
            ),
            Container(
              margin: EdgeInsets.only(top: 275,left: 30),
              child: reusableTextField("Email Address", Icons.email, false,
                _emailTextController),),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(top: 350,left: 30),
              child: reusableTextField(" Phone Number", Icons.phone, false,
                  _PhoneTextController),
            ),
            const SizedBox(
              height: 20,
            ),
Container(
  margin: EdgeInsets.only(top: 425,left: 30),
  width: 350,
  height: 50,
  child:   ElevatedButton(
      onPressed: ()async{
        showDatePicker(context: context, initialDate: date, firstDate: DateTime(1950), lastDate: DateTime(2100));
      },
      child: Text("Select Date"),
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.white;
          }
          return Colors.white.withOpacity(0.3);
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
  ),


),
    Container(
    margin: EdgeInsets.only(top:500 ,left: 30),
    width: 350,
    height: 200,
    child:TextField(

      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black,fontSize: 15),
      decoration: InputDecoration(

        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        hintText: "Notes",
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 15,fontFamily: 'Segoe UI',),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),

    )
    ),
            Container(
              margin: EdgeInsets.only(top: 650,left: 30),
              width: 350,
              height: 50,
              child:   ElevatedButton(
                onPressed: ()async{
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).
                  then((value){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Payment()));
                  }).onError((error, stackTrace){
                    print("Error${error.toString()}");
                  });

                },
                child: Text("Submit and Payment"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.white.withOpacity(0.2);
                      }
                      return Colors.white.withOpacity(0.2);
                    }),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
              ),


            ),


    ],
    ),
    );
  }
}
