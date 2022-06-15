import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_todo_app/app/core/utils/extensions.dart';
import 'package:task_todo_app/app/modules/home/controller.dart';
import 'package:get/get.dart';
import 'package:task_todo_app/app/widgets/icons.dart';

class AddCard extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icons = getIcon();
    var squareWidth = Get.width - 12.0.wp;

    return Container(
      width: squareWidth /2,
      height: squareWidth /2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        onTap: () async {
          await Get.defaultDialog(
            titlePadding: EdgeInsets.symmetric(vertical: 5.0.wp),
            radius: 5,
            title: 'Type de Tâche',
            content: Form(
              key: homeCtrl.formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0.wp),
                    child: TextFormField(
                      controller: homeCtrl.editCtrl,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Titre',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Veuillez entrer un nom de tâche';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0.wp),
                    child: Wrap(
                      spacing: 2.0.wp,
                      children: icons.map((e) => Obx(
                        () {
                          final index = icons.indexOf(e);
                          return ChoiceChip(
                            selectedColor: Colors.grey[200],
                            pressElevation: 0,
                            backgroundColor: Colors.white,
                            label: e, 
                            selected: homeCtrl.chipIndex.value == index,
                            onSelected: (bool selected) {
                              homeCtrl.chipIndex.value = selected ? index : 0;
                            },
                          );
                        }
                      )).toList(),
                      ),
                  )
                ],
              ),
            )
          );
        },
        child: DottedBorder(
          color: Colors.grey[400]!,
          dashPattern: const [8, 4],
          child: Center(
            child: Icon(Icons.add,
            size: 10.0.wp,
            color: Colors.grey,
            ),
          ),
        ),
      ),
    );
    
  }
}