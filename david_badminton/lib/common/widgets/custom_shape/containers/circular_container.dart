import 'package:flutter/material.dart';


class CircularContainer extends StatelessWidget {
  CircularContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.radius,
      this.padding = 0,
      this.child,
      this.backgroundColor = Colors.white});

  final double height;
  final double width;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
