import 'package:flutter/cupertino.dart';
import 'package:task_todo_app/app/core/values/colors.dart';
import 'package:task_todo_app/app/core/values/icons.dart';

List<Icon> getIcon(){
  return const [
    Icon(IconData(personIcon, fontFamily: 'MaterialIcons'), color: purple),
    Icon(IconData(workIcon, fontFamily: 'MaterialIcons'), color: pink),
    Icon(IconData(movieIcon, fontFamily: 'MaterialIcons'), color: green),
    Icon(IconData(sportIcon, fontFamily: 'MaterialIcons'), color: yellow),
    Icon(IconData(travelIcon, fontFamily: 'MaterialIcons'), color: deepPink),
    Icon(IconData(shopIcon, fontFamily: 'MaterialIcons'), color: lightBlue),
    Icon(IconData(bookIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(colorIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(constructIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(laptopIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(euroIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(favoriteIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(foodIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(restaurentIcon, fontFamily: 'MaterialIcons')),
    Icon(IconData(mailIcon, fontFamily: 'MaterialIcons')),

  ];
}