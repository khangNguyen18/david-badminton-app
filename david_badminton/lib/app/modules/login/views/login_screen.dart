import 'package:david_badminton/app/modules/login/views/login_form.dart';
import 'package:david_badminton/app/modules/login/views/login_header.dart';
import 'package:david_badminton/utils/constants/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              top: 80.h,
              left: AppSize.defaultSpace.w,
              right: AppSize.defaultSpace.w,
              bottom: AppSize.defaultSpace.h),
          child: Column(
            children: [
              //Logo, header.
              LoginHeader(),

              //Form
              LoginForm(),

              //SizedBox(height: AppSize.spaceBtwSections.h),

              //Divider
              // FormDivider(
              //   dividerText: 'Hoặc',
              // ),

              // SizedBox(
              //   height: AppSize.defaultSpace.h,
              // ),

              // //button
              // const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
