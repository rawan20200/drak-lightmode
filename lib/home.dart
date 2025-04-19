import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theme/gettheme.dart';

class Home extends StatelessWidget {
  Home({super.key});
  GetTheme getTheme = Get.put(GetTheme());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Theme.of(context).colorScheme.primary,
            ),
            Container(
              alignment: Alignment.center,
              width: 150,
              height: 150,
              color: Theme.of(context).colorScheme.secondary,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        getTheme.toggletheme();
                      },
                      icon: Icon(
                        getTheme.themeicon.value.icon,
                        // color: getTheme.iconcolor.value,
                        size: 35,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      getTheme.text.value,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context).textTheme.displayLarge!.color,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
