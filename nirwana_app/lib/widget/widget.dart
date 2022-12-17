import 'package:flutter/material.dart';
import 'package:untitled/screens/signup_screens.dart';
Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.cover,
    width: 200,
    height: 200,

  );
}

Container reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return Container(
    width: 350,
    height: 50,
    child: TextField(

      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black,fontSize: 15),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
        ),

        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        hintText: text,
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.9),fontSize: 15,fontFamily: 'Segoe UI',),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
      ),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    ),
  );
}

Container firebaseUIButton(BuildContext context, bool title, Function onTap) {
  return Container(
    width: 200,
    height: 50,

    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title?"Login":"Signup",
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black26;
            }
            return Colors.white.withOpacity(0.3);
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
    ),
  );
}

Row signUpOption( BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have account?",
          style: TextStyle(color: Colors.white70,fontSize: 18,)),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignUpScreen ()));
        },
        child: const Text(
          " Sign Up",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20,),
        ),
      )
    ],
  );
}