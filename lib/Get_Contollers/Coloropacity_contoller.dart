import 'package:get/get.dart';

class OpacityChange extends GetxController{

  RxDouble  opacity = .4.obs;

  setOpacity(double value){
    opacity.value = value;
  }
}