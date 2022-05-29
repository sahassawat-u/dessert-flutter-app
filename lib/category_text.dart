// import 'package

import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  CategoryText({required this.onPressed_});

  final VoidCallback? onPressed_;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: 1 == 1 ? Colors.grey[500] : Color(0xfff5cc82),
                    textStyle: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  onPressed: onPressed_,
                  child: const Text("Cakes"),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 7),
                  width: 7.0,
                  height: 7.0,
                  // child: ,
                  decoration: const BoxDecoration(
                    color: 2 == 1 ? Color(0xfff5cc82) : null,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20),
            // height: 50,
            child: Column(
              children: [
                Text(
                  "Cookies",
                  style: TextStyle(
                    fontSize: 14,
                    color: 2 == 1 ? Colors.grey[500] : Color(0xfff5cc82),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 7),
                  width: 7.0,
                  height: 7.0,
                  // child: ,
                  decoration: const BoxDecoration(
                    color: 2 == 1 ? Color(0xfff5cc82) : null,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Text(
                  "Ice Cream",
                  style: TextStyle(
                    fontSize: 14,
                    color: 2 == 1 ? Colors.grey[500] : Color(0xfff5cc82),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 7),
                  width: 7.0,
                  height: 7.0,
                  // child: ,
                  decoration: const BoxDecoration(
                    color: 1 == 1 ? Color(0xfff5cc82) : null,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Text(
                  "Pudding",
                  style: TextStyle(
                    fontSize: 14,
                    color: 2 == 1 ? Colors.grey[500] : Color(0xfff5cc82),
                  ),
                ),
                Container(
                  // margin: EdgeInsets.only(top: 7),
                  width: 7.0,
                  height: 7.0,
                  // child: ,
                  decoration: const BoxDecoration(
                    color: 2 == 1 ? Color(0xfff5cc82) : null,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
