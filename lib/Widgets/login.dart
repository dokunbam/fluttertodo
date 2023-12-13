import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Authentication/Controllers/signup_controller.dart';
import 'package:todo/Components/o_button.dart';
//import 'package:todo/Widgets/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();

    return Directionality(
      textDirection: TextDirection
          .ltr, // You can change this to your desired text direction
      child: Scaffold(
        //appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/images/todo-image.jpg"),
                      height: 250,
                    ),
                    Text(
                      "Welcome to PortCall Todo List",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: controller.email,
                              decoration:
                                  const InputDecoration(labelText: "Email"),
                            ),
                            TextFormField(
                              controller: controller.password,
                              decoration:
                                  const InputDecoration(labelText: "Password"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16 / 2,
                ),
                Row(
                  children: [
                    const Text("Dont Forget to Sign up"),
                    TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            SignUpController.instance.signInUser(
                                controller.email.text.trim(),
                                controller.password.text.trim());
                          }
                        },
                        child: const Text("Sign Up"))
                  ],
                ),
                const OToHomeButton(
                  buttonText: "Sign In",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
