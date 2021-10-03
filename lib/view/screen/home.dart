import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myelection/view/screen/home_controller.dart';


class Home extends StatelessWidget{

  HomeController c = Get.put(HomeController());
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          
          title : Text('My Election App'),
        ),
        body : _buildHome(context),
      ),
    );
  }

  Widget _buildHome(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height : MediaQuery.of(context).size.height * 0.3),
        
          Text(
              "우리동네 김반장",
              style : const TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
          ),
          Text(
            "내 주변의 선거를 검색합니다.",
          ),
          Obx((){
              return _buildHomeSearchBar();
            }
          ),
        ],
      ),
    );
  }

  Widget _buildHomeSearchBar() {
    return Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
              child: Container(
                height : 50.0,
                child: TextFormField(
                  onChanged: c.regionChanged,
                  style : TextStyle(fontWeight: FontWeight.normal, fontSize : 18.0), 
                  decoration : InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    labelText: "지역을 검색하세요".obs(),
                    suffix: IconButton(
                      icon: Icon(Icons.search).obs(),
                      onPressed: c.submit,
                    ),
                  ),
                ),
              ),
            );
  }
}

