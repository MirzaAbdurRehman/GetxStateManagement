import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Get_Contollers/count_contoller.dart';

class home_screen extends StatelessWidget {

  // Initialize the controller
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Counter"),centerTitle: true,),
      body: Center(
        child: Obx(() => Text(
          'Clicks: ${_counterController.count}',
          style: TextStyle(fontSize: 25),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _counterController.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
