import 'package:get/get.dart';
import 'package:task_todo_app/app/data/services/storage/repository.dart';

class HomeController extends GetxController {
  TaskRepository taskRepository;
  HomeController({required this.taskRepository});
}