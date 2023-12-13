import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Authentication/Controllers/signup_controller.dart';
import 'package:todo/Widgets/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                              controller: controller.firstname,
                              decoration: const InputDecoration(
                                  labelText: "First Name"),
                            ),
                            TextFormField(
                              controller: controller.lastname,
                              decoration:
                                  const InputDecoration(labelText: "Last Name"),
                            ),
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
                    const Text("Already have account? "),
                    TextButton(
                        onPressed: () => Get.to(
                              () => const LoginScreen(),
                            ),
                        child: const Text("Login"))
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        SignUpController.instance.signupUser(
                            controller.email.text.trim(),
                            controller.password.text.trim());
                      }
                    },
                    child: const Text("Register"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
