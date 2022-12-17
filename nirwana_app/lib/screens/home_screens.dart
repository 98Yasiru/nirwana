import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/screens/sigin_screens.dart';

class Homesceens extends StatefulWidget {
  const Homesceens({Key? key}) : super(key: key);

  @override
  _HomesceensState createState() => _HomesceensState();
}

class _HomesceensState extends State<Homesceens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("logout"),
          onPressed: (){
            FirebaseAuth.instance.signOut().then((value){
              print("signout");
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SigInScreen()));
            });

          },
        ),
      ),
    );
  }
}
