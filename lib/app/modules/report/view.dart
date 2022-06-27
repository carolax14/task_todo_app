import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:task_todo_app/app/core/utils/extensions.dart';
import 'package:task_todo_app/app/modules/home/binding.dart';
import 'package:task_todo_app/app/modules/home/controller.dart';
import 'package:intl/intl.dart'; 

class ReportPage extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  ReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          var createdTasks = homeCtrl.getTotalTask();
          var completedTasks = homeCtrl.getTotalDoneTask();
          var livetasks = createdTasks - completedTasks;
          var precent = (completedTasks / createdTasks * 100).toStringAsFixed(0);
          return ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(4.0.wp),
                child: Text('Mon Rapport',
            style: TextStyle(
                fontSize: 24.0.sp,
                fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.wp),
                child: Text(
                  DateFormat.yMMMd().format(DateTime.now()),
                  style: TextStyle(
                  fontSize: 14.0.sp,
                  color:Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 3.0.wp,
                  horizontal: 4.0.wp,
                ),
                child: const Divider(thickness: 2),
              ),
            ],
          );
        }),
      )
    );
  }
}