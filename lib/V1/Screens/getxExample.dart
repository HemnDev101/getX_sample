import 'package:flutter/material.dart';
import 'package:get/get.dart';

class getxExample extends StatelessWidget {
  const getxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Some Example on GetX")),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar("title", "message");
              },
              child: Text("Get.snackbar")),
          ElevatedButton(
              onPressed: () {
                Get.rawSnackbar(title: "title", message: 'meessage');
              },
              child: Text("Get.rawSnackbar()")),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back")),
          ElevatedButton(
              onPressed: () {
                // Get.isDarkMode ? ThemeData.light() : ThemeData.dark();
                Get.isDarkMode ? print('dark') : print('light');
                Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                );
              },
              child: Text("Chang Theme")),
        ],
      )),
    );
  }
}
