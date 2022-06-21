import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:task_todo_app/app/core/utils/extensions.dart';

import '../../home/controller.dart';

class DoingList extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  DoingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () =>  homeCtrl.doingTodos.isEmpty && homeCtrl.doneTodos.isEmpty
      ? Column(
        children: [
          Image.asset('assets/images/task.jpg',
          fit: BoxFit.cover,
          width: 55.0.wp,),
          Text('Ajouter une tâche',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0.sp,
          ),)
        ],
      ) 
     : Text('Chose à faire'));
    
  }
}