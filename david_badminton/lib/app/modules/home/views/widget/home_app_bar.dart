import 'package:david_badminton/common/components/text_component.dart';
import 'package:david_badminton/common/widgets/appbar/custom_appbar.dart';
import 'package:david_badminton/common/widgets/notification/noti_menu_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 8.w, right: 8.w, top: 16.h),
      child: CustomAppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                // Xử lý khi nhấn vào logo
              },
              child: Image.asset(
                'assets/logos/logo.png',
                width: 60.w,
                height: 60.h,
              ),
            ),
            SizedBox(width: 8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextComponent(
                  content: 'Xin chào Thành Công',
                  color: Colors.white,
                  size: 18.sp,
                  weight: FontWeight.w600,
                ),
                TextComponent(
                  content: 'cong@gmail.com',
                  color: const Color.fromARGB(
                      255, 205, 205, 205),
                ),
              ],
            ),
          ],
        ),
        actions: [
          NotiCountericon(
            onPressed: () {},
            iconColor: Colors.white,
          ),
        ],
      ),
    );
  }
}