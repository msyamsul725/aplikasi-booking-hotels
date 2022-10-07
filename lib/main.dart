import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:flutter_hyper_ui/setup.dart';
import 'package:flutter_hyper_ui/shared/util/theme/theme.dart';
import 'package:get/get.dart';

void main() async {
  await initialize();
  Widget mainView = const LoginView();
  if (FirebaseAuth.instance.currentUser != null) {
    mainView = const BasicMainNavigationView();
  }

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: mainView,
    ),
  );
}
