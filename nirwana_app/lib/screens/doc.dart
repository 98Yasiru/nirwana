import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled/googlemap.dart';
import 'package:untitled/screens/google4.dart';
import 'package:untitled/screens/googlemap10.dart';
import 'package:untitled/screens/googlemap5.dart';
import 'package:untitled/screens/googlemap6.dart';
import 'package:untitled/screens/googlemap7.dart';
import 'package:untitled/screens/googlemap8.dart';
import 'package:untitled/screens/googlemap9.dart';
import 'package:untitled/screens/test.dart';
import 'package:untitled/widget/widget.dart';
class doc extends StatefulWidget {
  const doc({Key? key}) : super(key: key);

  @override
  _docState createState() => _docState();
}

class _docState extends State<doc> {
  TextEditingController _emailTextController = TextEditingController();
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
            height: 50.0,
            width: 350.0,
            child: reusableTextField("Search", Icons.search, false,
                _emailTextController),
          ),
          Container(
            child: Center(

              child: Container(
                margin: EdgeInsets.only(bottom: 200,left: 15,right: 15),

                decoration: BoxDecoration(

                  borderRadius:
                  BorderRadius.all(Radius.elliptical(15, 15)),


                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCard('Dr. P.C. මුකම්බර්.', 'Gastroenterologist.', 'image/409-4091274_doctors-and-nurses-transparent-png-image-indian-doctor-removebg-preview.png',"ආයුර්වේද වෛද්‍ය P.C. මුකම්බර් මහතා අමාශයේ සියලුම රෝගයන් සදහා ප්‍රතිකාර සපයනු ලබයි. අමාශ රෝගීන් විශාල සංඛ්‍යාවක් සුවකර ඇති වෛද්‍ය P.C.මුකම්බර් මහතා මොණරාගල  Ayurveda Medical Centre  සහ  Ayurvedic Medical Center - SLPA  යන ආයතන වල සේවාව සපයයි.",true, "Book now","Chat Now","View On Map","Appointment",googlemap3(),context),
                    _buildCard('Dr. E.A. රාවන්.', 'Kidneylogist.', 'image/455-4554869_doctor-with-stethoscope-png-png-download-doctor-images-removebg-preview.png',"ප්‍රවීණ ආයුර්වේද වෛද්‍ය E.A. රාවන් මහතා වකුගඩු ආශ්‍රිත රෝගයන් සදහා හසල දැනුමක් ඇති වෛද්‍යවරයෙකි. වසර 25 ක විශාල කාලයක අත්දැකීම් තුලින් රෝගීන් සුවපත් කරයි.අනුරාධපුර  National Ayurvedic Teaching Hospital  සහ කුරුණෑගල  Ayurveda Hospital  හි ප්‍රතිකාර කරනු ලබයි.",true, "Book now","Chat Now","View On Map","Appointment",googlemap4(), context),
                    _buildCard('Dr. F.M. නෆ්රායි.', 'Urologist.',  'image/69d9e08e72f79c858d140e89f235cdd4-removebg-preview.png',"ප්‍රවීණ ආයුර්වේද වෛද්‍ය F.M. නෆ්රායි මහත්මිය මුත්‍රාශ්‍රිත රෝගයන් සදහා හසල දැනුමක් ඇති වෛද්‍යවරියෙකි. වසර 12 ක වැනි විශාල කාලයක අත්දැකීම් තුලින් රෝගීන් සුවපත් කරයි. කතරගම  SAMA International Ayurvedic Hospital  සහ ත්‍රිකුණාමලය  Tamil Ayurveda Hospital  හි ප්‍රතිකාර කරනු ලබයි.", false, "Book now","Chat Now","View On Map","Apponitment" ,googlemap5(),context),
                    _buildCard('Dr.P.B.සමරනායක.', 'Cardiologist.', 'image/doctor-removebg-preview.png',"හෘද රෝග පිලිබද සුවිශේෂී දැනුමක් මෙන්ම වසර 15 ක අත්දැකීම් ඇති වෛද්‍ය P.B. සමරනායක මහත්මිය ආයුර්වේද ප්‍රතිකාර තුලින් ලංකාව පුරාම හෘද රෝගින් විශාල ප්‍රමාණයක් සුව කිරීමට ඇයගේ සේවාව ලබාදී තිබේ. ඇය සේවා සපයනු ලබන්නේ, මහරගම  Ayurveda Research Institute  සහ හෝමාගම Saaraartha Ayurvedic Medical Center හිදීය.",
                        false, "Book now","Chat Now","View On Map","Appointment",googlemap6(),context),

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

                  _buildCard('Dr. B.H. තුෂාර.', 'Dentist.', 'image/istockphoto-1342708859-170667a-removebg-preview.png',"ආයුර්වේද උපදේශක වෛද්‍ය R.E. ප්‍රනාන්දු මහතා සුප්‍රකට වෛද්‍යවරයෙක් වන අතර විශාල රෝගීන් ප්‍රමානයක් සදහා තම සේවාව සපයනු ලබයි ,දැනට වසර 18 ක සේවා කාලයක් සපුරා ඇති වෛද්‍ය R.E. ප්‍රනාන්දු මහතා, මාතර  Damsiri Ayurveda Hospital  සහ ගාල්ලේ  Panchakarma Ayurveda  මධ්‍යස්ථාන වලදී තම සේවාව සපයයි.",false, "Book now","Chat Now","View On Map ","Appointment",googlemap7(), context),
                  _buildCard('Dr. S.W. නතාෂා.', 'Dermatologist.', 'image/medical-student-girl-1024x683-removebg-preview.png',"චර්ම රෝග පිලිබද හසල දැනුමක් ඇති ආයුර්වේද චර්ම රෝග පිලිබද වෛද්‍ය S.W. නතාෂා මහත්මිය, සියලුම චර්ම රෝග වලට තම ඖෂධ ලබාදෙයි, දේශීය ක්‍රම මගින් සියලු චර්ම රෝග සුව කරනු ලබයි. කොළඹ  Mangalapathy Ayurveda  මධ්‍යස්ථානයේදී ඔබට වෛද්‍ය S.W. Nathasha මහත්මියගෙන් ප්‍රතිකාර ලබාගත හැකිය." ,  true, "Book now","Chat Now","View On Map","Appointment",googlemap8(),context),
                  _buildCard('Dr. C.P. නුවන්ති.', 'Surgeon.',     'image/national-doctors-day-1-removebg-preview.png',"ආයුර්වේද ශල්‍ය වෛද්‍ය C.P. නුවන්ති මහත්මිය, Bachelor of Ayurveda Medicine & Surgery B.A.M.S. උපාධිය හදාරා ඇති අතර, ශ්‍රී ලංකාව තුල අයුර්වේද ශල්‍යකර්ම විශාල සංඛ්‍යාවක් සිදුකර ඇත, වසර 10ක් පුරාවට තම සේවාව දක්ශ ලෙස සිදුකරන වෛද්‍ය C.P. නුවන්ති මහත්මිය හෝමාගම  Siddhadi Ayurveda සහ බදුල්ල  Jeeva Ayurveda Wellness Center  හීදී සේවාව සපයයි.", false, "Book now","Chat Now","View On Map", "Appointment",googlemap9(),context),
                  _buildCard('Dr. R.E. ප්‍රනාන්දු.', 'Consultant Physician.', 'image/portrait-smiling-handsome-male-doctor-man_171337-5055-removebg-preview.png',"ආයුර්වේද උපදේශක වෛද්‍ය R.E. ප්‍රනාන්දු මහතා සුප්‍රකට වෛද්‍යවරයෙක් වන අතර විශාල රෝගීන් ප්‍රමානයක් සදහා තම සේවාව සපයනු ලබයි ,දැනට වසර 18 ක සේවා කාලයක් සපුරා ඇති වෛද්‍ය R.E. ප්‍රනාන්දු මහතා, මාතර Damsiri Ayurveda Hospital සහ ගාල්ලේ Panchakarma Ayurveda මධ්‍යස්ථාන වලදී තම සේවාව සපයයි.",false, "Book now","Chat Now","View On Map","Appointment",googlemap10() ,context),
                ],

              ),),

          ),
        ],
      ),




    );
  }

}
Widget _buildCard(String name, String English, String imgPath,String dris, bool added,
    String isFavorite,String chatnow,String googlemap,String appiontment,Widget googlemap1, context) {
  return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CookieDetails(
                assetPath: imgPath,
                cookieprice:English,
                cookiename: name,
                name2: dris,
                ismis: chatnow,
                pop:googlemap,
                lop:appiontment,
                opo:googlemap1

              )));
        },
        child: Center(
          child: Container(
              height: 270,
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
                 SizedBox(height: 10,),
                  Center(
                    child: Hero(
                        tag: imgPath,
                        child: Container(
                            height: 115,
                            width: 115,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imgPath),
                                    fit: BoxFit.contain)))),
                  ),
                  SizedBox(height: 7.0),
                  Text(English,
                      style: TextStyle(

                          color: const Color(0xcc000000),
                          fontFamily: 'Varela',
                          fontSize: 16.0)),
                  Text(name,
                      style: TextStyle(
                          color: const Color(0xbd000000),
                          fontFamily: 'Varela',
                          fontSize: 15.0)),
                  SizedBox(height: 5,),
                  Wrap(
                    children: List.generate(5, (index)  {
                      return Icon(Icons.star,color: Colors.black,size: 15,);
                    }),
                  ),
                  SizedBox(height:5 ,),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(30, 30)),
                        border: Border.all(width: 1.0,  color: Colors.white,),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white.withOpacity(0.2)),
                    child: TextButton(
                        onPressed: (){}, child: Text(isFavorite,),),
                  ),


                ],),
              )),
        ),
      ));
}
