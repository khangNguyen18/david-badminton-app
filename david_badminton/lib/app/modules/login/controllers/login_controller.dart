import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final hidePassword = true.obs;

  final userName = TextEditingController();
  final passwordController = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
}
