import 'package:david_badminton/common/components/text_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NotiCountericon extends StatelessWidget {
   NotiCountericon({
    super.key,
    required this.onPressed,
    required this.iconColor
  });

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.notification,
            color: iconColor,
            size: 24.sp,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18.w,
            height: 18.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.black),
            child: Center(
              child: TextComponent(
                content: '2',
                color: Colors.white,
                size: 12.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
