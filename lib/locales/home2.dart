import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_controller_practice/Get_Contollers/language_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final LanguageController languageController = Get.put(LanguageController());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ai_title'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Card for AI Information
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ai_title'.tr,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                      textDirection: Get.locale?.languageCode == 'ur' ||
                          Get.locale?.languageCode == 'ar'
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'ai_description'.tr,
                      style: const TextStyle(fontSize: 16),
                      textDirection: Get.locale?.languageCode == 'ur' ||
                          Get.locale?.languageCode == 'ar'
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'ai_author'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                      textDirection: Get.locale?.languageCode == 'ur' ||
                          Get.locale?.languageCode == 'ar'
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'ai_publish_date'.tr,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                      textDirection: Get.locale?.languageCode == 'ur' ||
                          Get.locale?.languageCode == 'ar'
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Language switcher dropdown
            DropdownButton<String>(
              value: Get.locale?.languageCode ?? 'en',
              isExpanded: true,
              items: [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('English'.tr),
                ),
                DropdownMenuItem(
                  value: 'ur',
                  child: Text('Urdu'.tr),
                ),
                DropdownMenuItem(
                  value: 'tr',
                  child: Text('Turkish'.tr),
                ),
                DropdownMenuItem(
                  value: 'ar',
                  child: Text('Arabic'.tr),
                ),
              ],
              onChanged: (value) {
                if (value == 'en') {
                  languageController.changeLanguage('en', 'US');
                } else if (value == 'ur') {
                  languageController.changeLanguage('ur', 'PK');
                } else if (value == 'tr') {
                  languageController.changeLanguage('tr', 'TR');
                } else if (value == 'ar') {
                  languageController.changeLanguage('ar', 'SA');
                }
              },
            ),
            const SizedBox(height: 20),
            // Navigation buttons with translated text
            ElevatedButton(
              onPressed: () {
                Get.snackbar('home'.tr, 'You are on the home page!'.tr);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'home'.tr,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.snackbar('settings'.tr, 'Settings page not implemented!'.tr);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'settings'.tr,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}