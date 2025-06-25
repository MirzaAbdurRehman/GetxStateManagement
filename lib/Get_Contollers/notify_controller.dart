import 'package:get/get.dart';

class NotificationChange extends GetxController{

  RxBool notify = false.obs;

  setNotify(bool value){
    notify.value = value;
  }
}