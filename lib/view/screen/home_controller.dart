import 'package:flutter/cupertino.dart';
import "package:get/get.dart";
import "package:myelection/view/screen/info.dart";

class HomeController extends GetxController{

  
  RxString keyword = ''.obs;
  @override
  void onInit(){
    super.onInit();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void regionChanged(String val){
    keyword.value = val;
  }

  void submit(){
    print( "검색한 지역 : ${keyword.value}");
    Get.to(Info(), arguments: "next page");
  }
}