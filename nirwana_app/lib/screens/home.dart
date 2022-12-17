import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/screens/dartpage.dart';
import 'package:untitled/widget/widget.dart';


class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var currentIndex = 0;
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
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
            Container(
              margin: EdgeInsets.only( top: 75,left: 50,right: 50),
              height: 40.0,
              width: 350.0,
              child: reusableTextField("Search", Icons.search, false,
                  _emailTextController),
            ),
    Container(
      child: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 200,left: 15,right: 15
          ),

          decoration: BoxDecoration(

            borderRadius:
      BorderRadius.all(Radius.elliptical(15, 15)),

          ),
child: ListView(
  scrollDirection: Axis.horizontal,
  children: [
  _buildCard('බඩේ අමාරුව.', 'Abdominal Pain.', 'image/ji.png',"අසමෝදගම්ල සූදුරු කබලෙන් බැද \nකුඩුකර කලං බාගය බැගින් වතුරෙන් \nතම්බා සූකිරි දමා උදේ හවස බීම හොදයි.\n\nඅමු ඉගුරු උණු අඵ පල්ලේ දමා තම්බා \nසහිඳ ලුණු සමව ගෙන අඹරා, තිබ්බටු \nගෙඩියක් තරම් ගෙන දිනකට තුන් වරක් \nකෑමට පැය 1/2 පෙර උණු වතුරෙන් \nබොන්න.\n\nපොල් හකුරු,අමු ඉගුරු,මුරුංගා පොතු \nසමව ගෙන දෙහි ඇඹුලෙන් අඹරා තිබ්බටු \nගෙඩියක් තරම් ගෙන උණු වතුරෙන් \nකෑමට පැය 1/2 කට පසු බොන්න.",false, false, context),
  _buildCard('දත් කැක්කුම.', 'Toothache.', 'image/ayurvedic-medicine-removebg-preview.png',"'සීනක්කාරං පුඵස්සා කුඩුකර බෝතලයක \nදමා වතුර පුරවා තබාගෙන නිතර \nසොලවා කට සෝදන්න.\n\nකටුකරඞු,සමන්පිච්ච කොළ,කරඳ මුලේ \nපොතු කළං 6 බැගින් ගෙන කයිප්පු,\nසීනක්කාරං,රත් හඳුන් කළං 3 බැගින් දමා \nවතුර පත 16 පත 4 ට සිඳුවා දිනකට 3 \nවරක් වරකට විනාඩි 5 ක් වතුර කටට \nගෙන කකාරාකට සෝදා හරින්න.\n\nවියළි ඉගුරු,ගම්මිරිස්,පිලමුල් පොතු,\nදියලුණු සමව ගෙන දෙහි ඇඹුලෙන් \nඅඹරා දත මුල තබන්න",true, false, context),
      _buildCard('හිසරදය.', 'Headache.',  'image/ayurvedic-1296x728-header-removebg-preview.png',"අමු ඉගුරු, කොත්තමල්ලි,පත්පාඩගම්, \nකටුවැල්බටු,දේවදාර කළං දෙකයි. මදටිය \n8 බැගින් ගෙන වතුර පත 8-1 සිඳ සහිඳ\nලුණු අනුපානය කොට උදේ සවස පත \nභාගය බැගින් බොන්න.(වඩි 3 පමණ).\n\nඅමු ඉගුරු,කටුවැල්,බටු තිප්පිලි,සුවඳ \nකොට්ටන් කළං 3 බැගින් ගෙන වතුර පත \n8-1ට සිඳ උදේ සවස සීනි දමා වඩි කීපයක් \nබොන්න.\n\nතිප්පිලි කළං 1 යි, අමු ඉගුරු කළං 2යි,\nබැදපු කොත්තමල්ලි කළං 3 යි, වතුර පත \n8-4 සිඳුවා වී පොරි කළං 6 ක් දමා පත \nඑකට සිඳුවා සහිඳ ලුණු කළඳක් දමා උදේ \nහිස්බඩ එකවර පතම බොන්න.\n", false, true, context),
    _buildCard('උෂ්ණ රෝග.', 'Synonyms.', 'image/IMG_20220318_200809.png',"ඇත්තෝර දඵ,බේත් එඞරු දඵ,කුකුරුමාං \nදඵ,කොහොඹ දඵ,දෙහි ඇට මද කොටා \nපොට්ටනි බැඳ වණ්ඩුවේ තම්බා උදේ සවස \nහොඳින් තවන්න.\n\nඇත්තෝර කොළ,දෙහි ඇට මද,සුදු ඵෑණු \nසමව ගෙන දෙහි ඇඹුලෙන් අඹරා බඳින්න. \n\nලුනුවිල තැම්බු වතුරෙන් හෝ කොහොඹ \nදඵ,අමුකහ තැම්බු වතුරෙන් හෝ සෝදන්න.\n\nනිදිකුම්බා,සමදරා කොළ තම්බා සෝදා \nහුණු,කපුරු,කහ සමව ගෙන පිරිසිදු තැඹිලි \nතෙලින් අඹරා ගාන්න.',",
        false, false, context),

  ],

  ),),

      ),
    ),
            Center(
              child: Container(
                margin: EdgeInsets.only( top:400,left: 15,right: 15),

                decoration: BoxDecoration(

                  borderRadius:
                  BorderRadius.all(Radius.elliptical(15, 15)),

                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    _buildCard('සර්ප විෂ.', 'Snake Venom.', 'image/Picsart_22-03-18_20-11-24-407.png',"01. සර්ප දෂ්ඨ රෝගියා බියට පත් නොකරන්න.\n02. රෝගියා පොළවට ස්පර්ශ වන සේ තබන්න.\n03. රෝගියාට හොඳින් වාතාශ්‍රය ලබා දෙන්න.\n04. රෝගියාට ඇවිදීමට නො දී ඔසවාගෙන යන්න.\n05. දෂ්ඨ ස්ථානය පිරිසිදුව තබා ගත යුතු අතර අනවශ්‍ය \nලෙස ලේ මිරිකා හැරීම, පැලීම, පිළිස්සීම් ආදිය නො කළ \nයුතුය. සිසිල් ජලයෙන් එම ස්ථානය සේදීම නොකළ යුතු\nය.\n\nඅවුරුදු 12න් පහළ නිරෝගී පිරිමි ළමයෙකුගේ මූත්‍රා \nපතක් පමණක් ගෙන රෝගියාට බීමට දෙන්න.\n\nකරපිංචා කොළ, පොතු, මුල්, කුප්පමේනිය, හීං \nඋඳුපියලිය, සස්සද සම ව ගෙන කොටා මිරිකා දෙහි \nඇඹුල් මිශ්‍ර කර ගිතෙල් තේ හැන්දක් දමා බීමට දෙන්න. \nසියලු සර්ප විෂට අත්දුටු ප්‍රතිකාරයකි.\n\nදෂ්ඨ ස්ථානය දෙහි බෑවකින් හොඳින් පිරිසිදු කර සස්සද \nමුල්, ඒකාවේරිය මුල්, දිවිකදුරු දලු, විෂ නීල කොළ වැනි \nකවර හෝ විෂ උරන ඔසුවක් ගෙන අමු කහ හා දෙහි \nඇඹුල් මිශ්‍ර කර පිරිසිදු ව අඹරා දෂ්ඨ ස්ථානයේ ගල්වා \nඉක්මනින් දක්ෂ වෛද්‍යවරයෙකුගේ සේවය ලබා ගන්න.\n\n",false, false, context),
                    _buildCard('වකුගඩු රෝග.', 'Kidney Desease.', 'image/provisions-for-manufacturing-of-ayurvedic-drugs-removebg-preview.png',"වකුගඩු රෝගය සදහා කැකිරි යුෂ පානය ඉතාමත් වැදගත් \nවේ.  කැකිරි වල ඇට වල සුවිශේෂී හැකියාවක් තිබෙනවා \nමුත්‍රා කාරක ගුණය මෙන්ම අප බොන ජලයේ ඇති \nබයිකාබනේටයන් වකුගඩුවේ රැදීමට ඉඩ නොදීමේ සහ \nබැරලෝහ ඉවත් කිරීමට.\n\nඋයන කැකිරි ග්‍රෑම් 250, රතු කැකුලු සහල් කාල් බාගයයි, \nතැබිලි වතුර මිලිලීටර් 300 ක් පමණ. පිසිය හැකි නැවුම් \nමැටි මුට්ටියක් මුට්ටියේ කට වසා ගැට ගැසිය හැකි පිරිසිදු \nරෙදි කඩක් ඉහත  සදහන් දෑ අතරින් සහල් සහ කැකිරි \nහොදින් සෝදාගන්න (සහල් නිවුඩ්ඩ සහිත වියයුතුය) \nසෝදාගත් සහල් මුට්ටියට දමන්න. \nඉන් පසුව කැකිරි ගෙඩිය අගල් දෙක පමණ කැබලිවලට \nකපා සහල් දැමු මුට්ටියටම දමන්න. ඉන්පසුව තැබිලි වතුර \nමුට්ටියට එක්කරන්න. කිසිදු අයුරකින් ලුනු මේ සදහා\nනොයොදන්න. \n\nසැම දිනකම උදෑසන අවදි වු පසු තේ පිටි කෝපි කිසිවක් \nපානය කිරීමට හා ආහාර අනුබවයට පෙර උදෑසන 7 ට \nකලින් (උදෑසන අවදි වු පසු වතුර වීදුරුවක් පානය කර \nමෙම කැකිරි අනුබවය කරන්න)\n\nමෙම ප්‍රතිකර්මය දින 21 ක් අඛන්ඩව සිදු කල යුතුය." ,  true, false, context),
                    _buildCard('දියවැඩියාව.', 'Diabetes.',     'image/ayurveda-medicine-therapy-panchakarma-health-health-9342e682d4a669a94204e49e76a8a20d.png',"කහ ඔබේ ආහාර වලට එකතු කර ගන්න, \nනැතහොත් ඔබේ උණු කිරි වලට කහ කුඩු \nස්වල්පයක් එක් කර පානය කරන්න.\n\nකෝමාරිකා ජෙල් තේ හැදි 1, තේ කොළ තේ \nහැදි 1/2, සහ කහ තේ හැදි ½ හ් ගෙන මිශ්‍ර \nකර දිනකට දෙවරක් ගන්න (දිවා ආහාරයට \nසහ රාත්‍රී ආහාරයට පෙර)\n\nකරවිල යුෂ දියවැඩියාව සඳහා හොඳම\n පිළියමක් ලෙස සැලකේ.\n\nදිනපතා උදෑසන නෙල්ලි යුෂ මේස හැදි 2\n කට කහ කුඩු ස්වල්පයක් එක් කර පානය \nකරන්න.", false, true, context),
                    _buildCard('හිස්හොරි', 'Dandruff', 'image/hi.png',"මදුරුතලා, වදමල්, අමු නෙල්ලි සම කොටස් \nගෙන ඒ වාගේ 4 ගුනයක් තල තෙලෙන් සහ 8 \nගුනයක් පොල්වතුරෙන් මිශ්‍ර කර මද ගින්නේ,\nජලය වාශ්ප වනතුරු හින්දවන්න. පසුව පිරිසිදු \nපෙරහනකින් පෙරා දවසට දෙවරක් හිස්කබලේ \nආලේප කරන්න.\n\nමුදවපු කිරිවලට වැල්දෙහි යුෂ  මිශ්‍රකර \nහිස්කබලේ අතුල්ලා සෝදාහරින්න.\n\nරත්කල පොල්තෙල් මේසහැඳි 4කට කපුරු තෙල් \nඑක මේසහැන්දක් එක්කරන්න. මද උනුසුමින් \nනින්දට පෙර ඉස්කබලේ ආලේපකර උදෑසන \nසෝදාහරින්න.\n\nසඳුන්තෙල් දෙහි ඇඹුලෙන් මිශ්‍රකර හිස්කබලේ \nගල්වා සෝදාහරින්න.",false, false, context),
                  ],

                ),),

            ),
    ],
    ),




    );
  }

}
Widget _buildCard(String name, String English, String imgPath,String dris, bool added,
    bool isFavorite, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CookieDetail(
                    assetPath: imgPath,
                    cookieprice:English,
                    cookiename: name,
                    name2: dris,
                )));
          },
          child: Center(

              child: Container(
                  height: 250,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.all(Radius.elliptical(15, 15)),
                      border: Border.all(width: 1.0,  color: Colors.white,),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.2),
                            spreadRadius: 3.0,
                            blurRadius: 5.0)
                      ],
                      color: Colors.white.withOpacity(0.2)),

                  child: SingleChildScrollView(
                    child: Column(children: [
                      Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                isFavorite
                                    ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                                    : Icon(Icons.favorite_border,
                                    color: Color(0xFFEF7532))
                              ])),
                      Hero(
                          tag: imgPath,
                          child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imgPath),
                                      fit: BoxFit.contain)))),
                      SizedBox(height: 7.0),
                      Text(English,
                          style: TextStyle(

                              color: const Color(0xcc000000),
                              fontFamily: 'Varela',
                              fontSize: 17.0)),
                      Text(name,
                          style: TextStyle(
                              color: const Color(0xbd000000),
                              fontFamily: 'Varela',
                              fontSize: 15.0)),

                    ]),
                  )),
            ),
          ));
}

