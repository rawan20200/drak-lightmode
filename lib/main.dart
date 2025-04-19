import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme/gettheme.dart';
import 'package:theme/home.dart';


void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  const Test({super.key});
  @override
  Widget build(BuildContext context) {
    GetTheme getTheme = Get.put(GetTheme());
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: getTheme.themeData.value,
        initialRoute: '/',
        getPages: [GetPage(name: '/', page: () => Home())],
      ),
    );
  }
}
