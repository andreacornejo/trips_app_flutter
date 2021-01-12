import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people2.jpg", "Valeria Cossio", "1 review 2 photos", "Excellent place"),
        Review("assets/img/people3.jpg", "Marcela Bieber", "2 review 0 photos", "Regular place"),
        Review("assets/img/people4.jpg", "Tadeo Sallier", "1 review 2 photos", "It's a good place for relax"),
      ],
    );
  }

}