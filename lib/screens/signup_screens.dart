import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/home_screens.dart';
import 'package:untitled/screens/sigin_screens.dart';
import 'package:untitled/widget/widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),),
      body: Container(

          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0, -0.979),
              end: Alignment(-0.055, 1.0),
              colors: [const Color(0xb200685e), const Color(0xb2808080)],
              stops:  [0.0, 1.0],
            ),
            border: Border.all(width: 1.0, color: const Color(0xb2707070)),
          ),

          child: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.fromLTRB(
          20, MediaQuery.of(context).size.height * 0.1, 20, 0),
      child: Column(
          children: [
            SizedBox(height: 50,),
            logoWidget("image/user-icon-removebg-preview.png"),
      const SizedBox(
        height: 20,
      ),
            reusableTextField("Name", Icons.person, false,
                _userNameTextController),
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
            firebaseUIButton(context, false, () {
              FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).
              then((value){
                print("create new account");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SigInScreen()));
              }).onError((error, stackTrace){
                print("Error${error.toString()}");
              });

            }),
    ],
    ),
    ),
    ),
      ),
    );
  }
}
