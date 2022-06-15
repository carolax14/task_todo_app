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
  final task = Rx<Task?>(null);
  
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

  void changeTask(Task? select) {
    task.value = select;
  }

  bool addTask(Task task) {
    if (tasks.contains(task)){
      return false;
    }
    tasks.add(task);
    return true;
  }

  void deleteTask(Task task) {
    tasks.remove(task);
  }

  updateTask(Task task, String title) {
    var todos = task.todos ?? [];
    if (containeTodo(todos, title)) {
      return false;
    }
    var todo = {'title': title, 'done': false};
    todos.add(todo);
    var newTask = task.copyWith(todos: todos);
    int oldIdX = tasks.indexOf(task);
    tasks[oldIdX] = newTask;
    tasks.refresh();
    return true;
  }
  
  bool containeTodo(List todos, String title) {
    return todos.any((element) => element['title'] == title);
  }

  
}