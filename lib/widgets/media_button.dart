import 'package:flutter/material.dart';

class MediaButton extends StatelessWidget {
  MediaButton(
      {required this.onPressed_, required this.color, required this.icon});

  final VoidCallback? onPressed_;
  final Color color;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed_,
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shadowColor: Colors.transparent,
          shape: CircleBorder(),
          padding: EdgeInsets.all(15),
          primary: color,
        ),
      ),
    );
  }
}
