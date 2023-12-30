import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V1/Controllers/AuthController.dart';
import 'package:getx_sample/V1/Screens/Auth/email.dart';

class FullnameAuth extends StatelessWidget {
  const FullnameAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fullname Auth")),
      body: Center(
          child: GetBuilder<AuthController>(
        init: AuthController(),
      
        builder: (_) {
          return Column(
            children: [
              TextField(
                controller: _.fullnameController,
              ),
              ElevatedButton(
                  onPressed: () {
                    _.saveFullname(); 
                    Get.to(EmailAuth());
                  },
                  child: Text("Next"))
            ],
          );
        },
      )),
    );
  }
}
