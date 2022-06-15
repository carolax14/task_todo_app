import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_todo_app/app/data/services/storage/repository.dart';

import '../../data/models/task.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});
  final formKey = GlobalKey<FormState>();
  final tasks = <Task>[].obs;
  final editCtrl = TextEditingController();
  final deleting = false.obs;
  final chipIndex = 0.obs;
  
  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(taskRepository.readTasks());
    ever(tasks, (_) => taskRepository.writeTasks(tasks));
  }

  @override
  void onClose() {
    editCtrl.dispose();
    super.onClose();
  }

  void changeChipIndex(int value) {
    chipIndex.value = value;
  }


  void changeDeleting (bool value){
    deleting.value = value;
  }

  bool addTask(Task task) {
    if (tasks.contains(task)){
      return false;
    }
    tasks.add(task);
    return true;
  }
}