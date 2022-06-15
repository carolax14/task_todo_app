import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_todo_app/app/modules/home/controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}