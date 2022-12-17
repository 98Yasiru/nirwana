import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class googlemap extends StatefulWidget {
  const googlemap({Key? key}) : super(key: key);

  @override
  _googlemapState createState() => _googlemapState();
}

class _googlemapState extends State<googlemap> {
Completer<GoogleMapController>_controller=Completer();
List<Marker> _marker=[];
final List<Marker> _list=const[
  Marker(markerId: MarkerId("1"),
    position: LatLng(6.8317753413334295, 79.87770805739206),
    infoWindow: InfoWindow(
      title: "Siddhalepa Ayurveda Hospital"
    )
  ),
  Marker(markerId: MarkerId("2"),
      position: LatLng(7.216265498234385, 80.59861701273839),
      infoWindow: InfoWindow(
          title: "Gelioya Ayurvedic Hospital"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.334362293310916, 80.98464016238358),
      infoWindow: InfoWindow(
          title: "District Ayurvedic Hospital"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(5.942423073681545, 80.50991228203851),
      infoWindow: InfoWindow(
          title: "Agasti Ayuverda Panchakarma Spa Treatments"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(6.171439678722533, 81.12398965369897),
      infoWindow: InfoWindow(
          title: "Chamal Rajapakshe Ayurvedic Hospital"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(6.990331941307252, 81.05752739700249),
      infoWindow: InfoWindow(
          title: "Badulla Ayurvedic Hospital"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.2499096852226605, 80.33485769739215),
      infoWindow: InfoWindow(
          title: "Ayurveda Hospital"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.846653045923512, 80.65422519739587),
      infoWindow: InfoWindow(
          title: "ආයුර්වේද බෙහෙත් ශාලාව, දඹුල්ල"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(8.632033527750707, 81.21614999740127),
      infoWindow: InfoWindow(
          title: "Ayurvedic Dispensary-sampalthivu"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.822600330624903, 81.61000728940044),
      infoWindow: InfoWindow(
          title: "Ayurvedic Base Hospital"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(9.718624159996885, 80.00546369286872),
      infoWindow: InfoWindow(
          title: "Pasupathy ayurvedic clinic ( பசுபதி ஆயுர்வேத வைத்திய சாலை)"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(6.2079430501630775, 80.9472707961778),
      infoWindow: InfoWindow(
          title: "Deniya Ayurveda"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(6.141205081749726, 81.12003730067872),
      infoWindow: InfoWindow(
          title: "Sanhitha Ayurvedic Center"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.008678822008745, 81.08012454423009),
      infoWindow: InfoWindow(
          title: "බදුල්ල ප්‍රාදේශීය සභා අායුර්වේද රෝහල Badulla Pradeshiya Sabah Ayurwedic Dispensery"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.0884367336319745, 81.06456997448201),
      infoWindow: InfoWindow(
          title: "Ayurvedic Dispensery Boliyadda"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.287303212959664, 80.61780298868597),
      infoWindow: InfoWindow(
          title: "Thilaka Ayurveda Treatment Center Kandy"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.289818853474124, 80.62907957603589),
      infoWindow: InfoWindow(
          title: "Ayurvedic medical wellness center"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(6.937572617415247, 79.85088238596339),
      infoWindow: InfoWindow(
          title: "Kudirippuwe Ayurvedic Medical Clinic"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(9.078944455062688, 79.86301593107548),
      infoWindow: InfoWindow(
          title: "Hasmullah Ayurvedic medical"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(8.896890158705695, 79.935865255735),
      infoWindow: InfoWindow(
          title: "District Ayurvedic Hospital, Mannar"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(5.984626154368788, 80.5308555911684),
      infoWindow: InfoWindow(
          title: "Gampaha Siddhayurveda Dispensary Matara"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(6.035194371968704, 80.25345138451443),
      infoWindow: InfoWindow(
          title: "Ayurveda Piyasa"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(7.443007683953911, 79.83295161865952),
      infoWindow: InfoWindow(
          title: "Gurukula Ayurvedic Medical Center"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(6.885922620417353, 81.8233928202037),
      infoWindow: InfoWindow(
          title: "Arham Medi Clinic"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(8.33192694356471, 80.41044537041883),
      infoWindow: InfoWindow(
          title: "Ayurveda corporation"
      )
  ),
  Marker(markerId: MarkerId("3"),
      position: LatLng(8.760936262882197, 80.50557222323482),
      infoWindow: InfoWindow(
          title: "Madukanda ayurveda"
      )
  ),
];

Future <Position> getUserCurrentLocation()async{
  await Geolocator.requestPermission().then((value){

  }).onError((error, stackTrace) {
    print(""+error.toString());
  });
  return await Geolocator.getCurrentPosition();
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(


        body: SafeArea(
          child: Stack(
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
      child: Container(


      height: 700,
      width: 400,
      decoration: BoxDecoration(
      color: Colors.white.withOpacity(.2),
      borderRadius:
      BorderRadius.all(Radius.elliptical(15, 15)),
      ) ,
        child: Stack(
          children: [GoogleMap(initialCameraPosition: CameraPosition(
            target: LatLng(6.9271,79.8612),
            zoom: 10,
          ),

            myLocationEnabled: true,
            mapType: MapType.normal,
            compassEnabled: true,
            onMapCreated: (GoogleMapController contoller){
              _controller.complete(contoller);
            },
            markers: Set<Marker>.of(_marker),
          ),

      ],
        ),

      ),
      ),


      ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          getUserCurrentLocation().then((value){
            print("my crunnet location");
            print(value.longitude.toString()+""+value.latitude.toString());
          });
          setState(() {

          });
        },
        child: Icon(Icons.location_disabled_outlined),
      ),
    );
  }

}
