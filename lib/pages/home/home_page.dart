import 'package:default_structure/pages/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class HomePage extends StatelessWidget {
  HomeController HC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(()=> Text("Clicks: ${HC.number}")),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: (){
                        HC.increaseNumber();
                      },
                      child: Text("click")
                  )
                ],
              ),
            )
        )
    );
  }
}
