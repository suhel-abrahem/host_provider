import 'package:flutter/material.dart';

class BottomEndBackgroundClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width * 0.3, size.height);
    path.arcToPoint(
      Offset(size.width * 0.7, size.height * 0.25),
      radius: Radius.circular(size.height),
      clockwise: true,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
