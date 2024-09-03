import 'package:flutter/material.dart';

class CustomCurvedEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0,
        size.height); // 0 lấy từ đầu màn hình, height trong đây sẽ là chiều cao của container

    final firstCurve = Offset(
        0,
        size.height -
            20); //0 là sát màn hình, cái số thứ 2 là cong la từ dưới dáy vẽ lên
    final lastCurve = Offset(30, size.height - 20); //30 là điểm vẽ tới
    path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx,
        lastCurve.dy); //vẽ đường cong

    final secondFirstCurve = Offset(0, size.height - 20);
    final secondLastCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy,
        secondLastCurve.dx, secondLastCurve.dy);

    final thirdFirstCurve = Offset(size.width, size.height - 20);
    final thirdLastCurve = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy,
        thirdLastCurve.dx, thirdLastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
