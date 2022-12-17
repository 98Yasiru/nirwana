import 'package:flutter/material.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:geocoding/geocoding.dart';

class Converting_latlung_to_address extends StatefulWidget {
  const Converting_latlung_to_address({Key? key}) : super(key: key);

  @override
  _Converting_latlung_to_addressState createState() => _Converting_latlung_to_addressState();
}

class _Converting_latlung_to_addressState extends State<Converting_latlung_to_address> {
  String stAddress='';
  String stAdd='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(stAddress),
          Text(stAdd),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: ()async{

              List<Location> locations = await locationFromAddress("Gronausestraat 710, Enschede");
              List<Placemark> placemarks = await placemarkFromCoordinates(52.2165157, 6.9437819);

              setState(() {
                stAddress=locations.last.longitude.toString()+" "+locations.last.longitude.toString();
                stAdd=placemarks.reversed.last.country.toString();
              });

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green
                ),
                child: Center(
                  child: Text("Convert"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
