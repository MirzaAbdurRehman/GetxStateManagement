import 'dart:ui';

import 'package:get/get.dart';

class LanguageController extends GetxController {
  var userName = 'Ali'.obs; // Example dynamic data

  void changeLanguage(String languageCode, String countryCode) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}