import 'package:flutter/material.dart';


class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename,name2;

  CookieDetail({this.assetPath, this.cookieprice, this.cookiename,this.name2});
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
                          color: Color(0xFFF17532))),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(cookiename,
                      style: TextStyle(
                          color: Color(0xFF575E67),
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

                ],
                    ),
                ),
              ]
          ),
    );
  }
}

