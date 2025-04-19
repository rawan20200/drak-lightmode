import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:theme/Theme.dart';

class GetTheme extends GetxController {
  var themeData = lightmode.obs;
  var text =
      '''Welcome 
light mode'''.obs;
  var themeicon = Icon(Icons.light_mode_outlined).obs;
  var iconcolor = Colors.black.obs;
  void toggletheme() {
    if (themeData == lightmode) {
      themeData.value = darkmode;
      text.value = '''Welcome 
dark mode''';
      iconcolor.value = Colors.white;
      themeicon.value = Icon(Icons.dark_mode_outlined);
    } else {
      themeData.value = lightmode;
      text.value = '''Welcome 
light mode''';
      iconcolor.value = Colors.black;
      themeicon.value = Icon(Icons.light_mode_outlined);
    }
  }
}
