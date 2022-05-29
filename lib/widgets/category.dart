import 'dart:ffi';

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    required this.onPressed_,
    required this.text_,
    required this.color_,
    required this.ballColor,
  });

  final String text_;
  final Color color_;
  final Color ballColor;
  final VoidCallback? onPressed_;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent.withOpacity(0.8),
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: onPressed_,
            child: Text(
              text_,
              style: TextStyle(
                fontSize: 14,
                color: color_,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: 7.0,
            height: 7.0,
            decoration: BoxDecoration(
              color: ballColor,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
