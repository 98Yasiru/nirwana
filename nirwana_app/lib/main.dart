import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled/googlemap.dart';
import 'package:untitled/screens/Appointment.dart';
import 'package:untitled/screens/about_us.dart';
import 'package:untitled/screens/backgroud.dart';
import 'package:untitled/screens/chat.dart';
import 'package:untitled/screens/convert_latlung_to%20address.dart';
import 'package:untitled/screens/doc.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/ji.dart';
import 'package:untitled/screens/maindashboard.dart';
import 'package:untitled/screens/sigin_screens.dart';
import 'package:untitled/screens/signup_screens.dart';
import 'package:untitled/screens/slpash.dart';
import 'package:untitled/screens/test.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}