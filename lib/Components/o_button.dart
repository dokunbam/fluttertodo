import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Widgets/home.dart';

class OToHomeButton extends StatelessWidget {
  const OToHomeButton({
    super.key,
    required this.buttonText,
    this.password,
    this.email,
  });
  final String buttonText;
  final String? password;
  final String? email;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => Get.to(
          () => const Home(),
        ),
        child: Text(buttonText),
      ),
    );
  }
}
