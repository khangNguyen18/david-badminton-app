import 'package:david_badminton/common/widgets/function/function_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BranchManagement extends StatelessWidget {
  const BranchManagement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w),
      child: Wrap(
        spacing: 41.w,
        runSpacing: 24.h,
        children: [
          FunctionButton(
            icon: 'assets/icons/branch.svg',
            label: 'Quản lý cơ sở',
            onPressed: () {},
          ),
          FunctionButton(
            icon: 'assets/icons/stadium.svg',
            label: 'Quản lý sân',
            onPressed: () {},
          ),
          FunctionButton(
            icon: 'assets/icons/course.svg',
            label: 'Quản lý khóa học',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
