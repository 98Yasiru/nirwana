import 'package:flutter/material.dart';
import 'package:untitled/screens/doc.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/ji.dart';
import 'package:untitled/screens/maindashboard.dart';

class MyHomePage extends StatefulWidget {
@override
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {


  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TabBarView(
        children: <Widget>[
          Container(

          height: 600,
          width: 400,
          child: home1(
          ),),
          Container(

            height: 600,
            width: 400,
            child: homescreen(
            ),
          ),
      Container(

          height: 600,
          width: 400,
          child: googlemap (
          ),

      ),
      Container(

          height: 600,
          width: 400,
          child: doc (
          ),
      ),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
    decoration: BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment(-1.0, -0.979),
    end: Alignment(-0.055, 1.0),
    colors: [const Color(0xb200685e), const Color(0xb2808080)],
    stops:  [0.0, 1.0],
    ),
    ),
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              labelColor: Color(0xFFC41A3B),
              unselectedLabelColor: Colors.yellow,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: <Widget>[
            Tab(
            icon: Icon(
              Icons.home,
              size: 24.0,
            ),),
                Tab(
                  icon: Icon(
                    Icons.medical_services,
                    size: 24.0,
                  ),

                ),
                Tab(
                  icon: Icon(
                    Icons.location_on,
                    size: 24.0,
                  ),

                ),
                Tab(
                  icon: Icon(
                    Icons.local_hospital ,
                    size: 24.0,
                  ),

                ),

              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}