import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V1/Controllers/AuthController.dart';

class SubmitAuth extends StatelessWidget {
  const SubmitAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SubmitAuth")),
      body: Center(
          child: GetBuilder<AuthController>(
        init: AuthController(),
        initState: (_) {},
        builder: (_) {
          return Column(
            children: [
              Text("${_.fullname}"),
              Text("${_.email}"),
              Text("${_.password}"),
            ],
          );
        },
      )),
    );
  }
}
