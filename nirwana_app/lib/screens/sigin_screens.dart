import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/home_screens.dart';
import 'package:untitled/screens/maindashboard.dart';
import 'package:untitled/screens/signup_screens.dart';
import 'package:untitled/widget/widget.dart';

class SigInScreen extends StatefulWidget {
  const SigInScreen({Key? key}) : super(key: key);

  @override
  _SigInScreenState createState() => _SigInScreenState();
}

class _SigInScreenState extends State<SigInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
               logoWidget("image/k.png"),
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
    firebaseUIButton(context, true, () {
      FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).
      then((value){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => home1()));
      }).onError((error, stackTrace){
        print("Error${error.toString()}");
      });

    }),
                SizedBox(height: 40,),
                signUpOption(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

