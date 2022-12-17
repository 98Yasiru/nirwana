import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class googlemap9 extends StatefulWidget {
  const googlemap9({Key? key}) : super(key: key);

  @override
  _googlemapState createState() => _googlemapState();
}

class _googlemapState extends State<googlemap9> {
  Completer<GoogleMapController>_controller=Completer();
  List<Marker> _marker=[];
  final List<Marker> _list=const[


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
