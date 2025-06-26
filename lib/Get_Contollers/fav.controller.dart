

import 'package:get/get.dart';

class FavController extends GetxController{

  RxList<String> color_list = ['black','blue','green','red','yellow'].obs;
  RxList temp_list = [].obs;

  addToFavourite(String value){
    temp_list.add(value);
  }

  removeToFavourite(String value){
    temp_list.remove(value);
  }
}