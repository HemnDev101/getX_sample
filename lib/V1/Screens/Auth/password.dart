import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V1/Controllers/AuthController.dart';
import 'package:getx_sample/V1/Screens/Auth/submit.dart';

class PasswordAuth extends StatelessWidget {
  const PasswordAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("PasswordAuth")),
        body: Center(
          child: GetBuilder<AuthController>(
            builder: (_) {
              return Column(
                children: [
                  Text("Fullname : ${_.fullname}"),
                  Text("Email : ${_.email}"),
                  
                  TextField(
                    controller: _.passwordController,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _.savePassword();
                        Get.to(SubmitAuth());
                      },
                      child: Text("Next"))
                ],
              );
            },
          ),
        ));
  }
}
