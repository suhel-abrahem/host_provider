import 'dart:ui';

import 'package:flutter/material.dart';

class TopBackgroundClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.width * 0.75, 0);
    path.arcToPoint(
      Offset(size.width * 0.3, size.height * 0.75),
      radius: Radius.circular(size.height),
    );
    path.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.75,
      0,
      size.height,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
