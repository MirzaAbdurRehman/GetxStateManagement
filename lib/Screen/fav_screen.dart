import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller_practice/Get_Contollers/fav.controller.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {

  FavController controller = Get.put(FavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fav Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue
      ),
      body: ListView.builder(
        itemCount: controller.color_list.length,
          itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: (){
                if(controller.temp_list.contains(controller.color_list[index].toString())){
                  controller.removeToFavourite(controller.color_list[index].toString());
                }else{
                  controller.addToFavourite(controller.color_list[index].toString());
                }
              },
              title: Text(controller.color_list[index].toString()),
              trailing: Obx(() => Icon(Icons.favorite,
                  color: controller.temp_list.contains(controller.color_list[index].toString())
                      ? Colors.red : Colors.grey
              ),),
            ),
          );
          }),
    );
  }
}
