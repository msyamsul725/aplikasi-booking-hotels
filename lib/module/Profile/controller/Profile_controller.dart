import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_hyper_ui/core.dart';
import 'package:get/get.dart';
import '../view/Profile_view.dart';

class ProfileController extends GetxController {
  ProfileView? view;

  doLogout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(const LoginView());
    } on Exception catch (_) {
      Get.snackbar("Error", "Your Request Failed");
    }
  }
}
