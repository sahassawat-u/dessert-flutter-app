import 'package:dessert_app/data/dessert_data.dart';
import 'package:flutter/material.dart';

import '../models/dessert.dart';

class Ingredient extends StatelessWidget {
  Ingredient({Key? key}) : super(key: key);
  final Dessert dessert = allDesserts[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2, left: 15),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: Container(
        // color: Colors.red,
        height: 20,
        width: 20,
        child: Image.network(
          dessert.imgUrl,
          // height: 50,
          // width: 50,
          fit: BoxFit.contain,
          // scale: 0.8,
        ),
      ),
    );
  }
}
