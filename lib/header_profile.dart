import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image_list.dart';
import 'package:platzi_trips_app/gradient_back.dart';

class HeaderProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        GradientBack("Profile"),
      ],
    );
  }

}