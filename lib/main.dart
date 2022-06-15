import 'package:flutter/material.dart';
import 'package:task_todo_app/app/data/services/storage/services.dart';
import 'package:task_todo_app/app/modules/home/binding.dart';
import 'package:task_todo_app/app/modules/home/view.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init()); // retourn une instance de StorageService
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ToDo List using Getx',
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
    );
  }
}

