
import 'package:get/get.dart';

class CounterController extends GetxController{

  var count = 0.obs;    // 'obs' makes it observable

  void increment(){
    count++;
  }
}




// 🔹 obs – Observable Variable
// 🔸 Matlab:
// obs ka matlab hota hai observable. Jab kisi variable ke sath .obs lagate ho, toh wo GetX ko kehta hai:
//
// "Agar is variable ka value change ho, toh us change ko notice karo aur UI ko update kar do."


// 🔹 Obx() – Reactive Widget
// 🔸 Matlab:
// Obx ek widget hai jo sirf un variables ko dekh raha hota hai jo .obs hain. Agar unka value change hota hai, toh Obx apne aap UI ko rebuild karta hai.

// 🔹 Get.put() – Dependency Injection
// 🔸 Matlab:
// Get.put() se tum ek controller ko memory me register karte ho, taake GetX usko manage kar sake aur kisi bhi jagah se access kiya ja sake.