import 'package:david_badminton/common/widgets/function/function_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TuitionFee extends StatelessWidget {
  const TuitionFee({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w),
      child: Wrap(
        spacing: 41.w,
        runSpacing: 24.h, //khoảng cách các hàng
        children: [
          FunctionButton(
            icon: 'assets/icons/payment.svg',
            label: 'Phương thức thanh toán',
            onPressed: () {},
          ),
          FunctionButton(
            icon: 'assets/icons/bill.svg',
            label: 'Danh sách hóa đơn',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
