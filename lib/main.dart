import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myelection/view/screen/home.dart';
import 'package:myelection/view/screen/info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name : '/', page : () => Home(), transition: Transition.leftToRight),
        GetPage(name : '/info', page : () => Info(), transition: Transition.leftToRight),
      ],
      home : Home(),
    );
  }
}