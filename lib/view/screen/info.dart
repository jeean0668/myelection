// 여기는 지역을 기준으로 걸러낸 선거 정보들을 선택할 수 있는 페이지다.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myelection/view/screen/home_controller.dart';
import 'package:get/get.dart';

class Info extends StatefulWidget{
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info>{
  @override
  HomeController c = Get.put(HomeController());
  Widget build(BuildContext context){
    return Scaffold(
      body : CustomScrollView(
        slivers : [
          SliverAppBar(
            backgroundColor: Colors.black,
            pinned : true,
            floating : true,
            centerTitle: false,
            title : Text('${c.keyword.value}'),
          )
        ],
      ),
    );
  }
}
