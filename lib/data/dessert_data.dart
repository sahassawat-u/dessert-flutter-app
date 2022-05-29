import 'package:dessert_app/models/dessert.dart';
import 'package:flutter/material.dart';

final allDesserts = <Dessert>[
  Dessert(
    name: "Red velvet \nCake",
    type: "cake",
    imgUrl:
        "https://images.squarespace-cdn.com/content/v1/538500e4e4b0fa9e95efc7b9/1627658152435-R34HRB6M1CLOH2ZXZMGJ/Red+Velvet+Baby+Cake+slice+isolated.png?format=1000w",
    time: "45 mins",
    serving: 2,
    lvl: "easy",
    color: const Color(0xffff629a),
  ),
  Dessert(
    name: "Belgian \nwaffle",
    type: "waffle",
    imgUrl:
        "https://www.lifepng.com/wp-content/uploads/2020/12/Belgian-Waffle-With-Berries-and-Syrup-png-hd.png",
    time: "20 mins",
    serving: 2,
    lvl: "medium",
    color: const Color(0xffc9a093),
  ),
  Dessert(
    name: "Honey \nPancake",
    type: "pancake",
    imgUrl:
        "https://www.pngall.com/wp-content/uploads/5/Honey-Pancake-PNG-Free-Download.png",
    time: "45 mins",
    serving: 2,
    lvl: "easy",
    color: const Color(0xffffdb99),
  ),
];
