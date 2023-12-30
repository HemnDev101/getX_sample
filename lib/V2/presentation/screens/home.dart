import 'package:flutter/material.dart';
import 'package:get/get.dart';
 
import 'package:getx_sample/V2/business_logic/controllers/userController.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Center(
          child: GetBuilder<UserController>(
        init: UserController(),
        initState: (_) async {
          final SharedPreferences _prefs =
              await SharedPreferences.getInstance();
          String? token = _prefs.getString('token') ?? '';
          print(token); 
        },
        builder: (_) {
          return Column(
            children: [
              Text(_.token.value  )
            ],
          );
        },
      )),
    );
  }
}
