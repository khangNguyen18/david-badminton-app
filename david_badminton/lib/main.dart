import 'package:david_badminton/app/modules/welcome/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 843), //360,800    411,843 man hinh
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return GetMaterialApp(
            //initialRoute: AppPages.INITIAL,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              useMaterial3: true,
            ),
            builder: (context, child) {
              final mediaQueryData = MediaQuery.of(context);
              // ignore: deprecated_member_use
              final scale = mediaQueryData.textScaleFactor.clamp(0.8, 1.0);
              // ignore: deprecated_member_use
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
                  child: child!);
            },
            home: WelcomeScreen(),
          );
        });
  }
}
