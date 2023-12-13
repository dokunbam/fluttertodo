import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Repository/authentication_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final firstname = TextEditingController();
  final lastname = TextEditingController();
  final password = TextEditingController();

  void signupUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  void signInUser(String email, String password) {
    AuthenticationRepository.instance
        .signinUserWithEmailAndPassword(email, password);
  }

  void logOutUser() {
    AuthenticationRepository.instance.logout();
  }
}
