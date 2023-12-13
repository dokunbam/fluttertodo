import 'package:flutter/material.dart';
import 'package:todo/Widgets/todoviewprogressive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var queryData = MediaQuery.of(context);
    return TodoViewProgressive(queryData: queryData);
    //return const TodoListScreen();
  }
}
