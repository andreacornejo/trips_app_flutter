import 'package:flutter/material.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/review.dart';
import 'package:platzi_trips_app/review_list.dart';
import 'description_place.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
    String descriptionDummy = "Lorem ipsum dolor sit amet consectetur adipiscing elit auctor, sapien leo praesent etiam iaculis metus ut, consequat lacinia taciti ultrices at tellus integer. Nulla ad conubia donec senectus netus ultrices semper, metus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique. \n\nLorem ipsum dolor sit amet consectetur adipiscing elit auctor, sapien leo praesent etiam iaculis metus ut, consequat lacinia taciti ultrices at tellus integer. Nulla ad conubia donec senectus netus ultrices semper, metus malesuada ridiculus mollis varius himenaeos tellus, potenti habitasse natoque phasellus integer tristique.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: [
                DescriptionPlace("Bahamas",4, descriptionDummy),
                ReviewList()
              ],
            ),
            HeaderAppBar()   
          ],
        ), 
        //new DescriptionPlace("Bahamas",4, descriptionDummy),
        
        ),
   );
  }
}
