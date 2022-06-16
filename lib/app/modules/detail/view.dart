import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:task_todo_app/app/core/utils/extensions.dart';
import 'package:task_todo_app/app/modules/home/controller.dart';

class DetailPage extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>;
  DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retourne sur la page précedente lorsqu'on clique sur la flêche retour
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(3.0.wp),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon:  const Icon(Icons.arrow_back),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}