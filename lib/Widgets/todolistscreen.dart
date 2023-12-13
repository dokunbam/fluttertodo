import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  TodoListScreenState createState() => TodoListScreenState();
}

class TodoListScreenState extends State<TodoListScreen> {
  List<String> items = ['Item 1', 'Item 2', 'Item 3']; // Example items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Checkbox(
              value: false, // You will need to manage this state properly
              onChanged: (bool? value) {
                // Handle change
              },
            ),
            title: Text(items[index]),
            trailing: IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                // Handle edit
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle add new item
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
