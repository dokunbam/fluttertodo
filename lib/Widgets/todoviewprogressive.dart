import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/Authentication/Controllers/signup_controller.dart';
import 'package:todo/Widgets/create_task.dart';

class TodoViewProgressive extends StatelessWidget {
  const TodoViewProgressive({
    super.key,
    required this.queryData,
  });

  final MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          TextButton(
            onPressed: () {
              SignUpController.instance.logOutUser();
            },
            child: const Text(
              "Log Out",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: queryData.size.width,
          height: 140,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(
            children: [
              Container(
                height: 139,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  image: DecorationImage(
                    image:
                        AssetImage("assets/images/todoimages/cross-mark.jpg"),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Flexible(
                // Use Expanded here
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(color: Colors.blueGrey),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align children to the start
                    children: [
                      //const SizedBox(height: 6),
                      const Text(
                        "Title",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "SubTitle",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Flexible(
                            child: Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.access_time_outlined),
                                  Text("13:11"),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 25,
                            width: 80,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.greenAccent,
                              ),
                              onPressed: () {},
                              child: const Text("Edit"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // ;
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () => Get.to(() => const TaskScreen()),
        child: const Icon(Icons.add),
      ),
      //bottomNavigationBar: const NavigationMenu(),
    );
  }
}
