import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_controller_practice/Get_Contollers/notify_controller.dart';
import 'package:getx_controller_practice/Get_Contollers/Coloropacity_contoller.dart';

class SlideScreen extends StatefulWidget {
  const SlideScreen({super.key});

  @override
  State<SlideScreen> createState() => _SlideScreenState();
}

class _SlideScreenState extends State<SlideScreen> {

  OpacityChange opacity_change_contoller = Get.put(OpacityChange()); // Dependency Injection

  NotificationChange notify_controller = Get.put(NotificationChange());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Chnage',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
            height: 200,
            width: 200,
            color: Colors.black.withOpacity(opacity_change_contoller.opacity.value),
          )),
          Obx(() =>  Slider(
              value: opacity_change_contoller.opacity.value,
              onChanged: (value) {
                opacity_change_contoller.setOpacity(value);
              })),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Notification',style: TextStyle(color: Colors.black),),
              Obx(() => Switch(
                  value: notify_controller.notify.value,
                  onChanged: (value){
                    notify_controller.setNotify(value);
                  }
              ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
