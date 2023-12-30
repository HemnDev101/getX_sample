import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V1/Controllers/AuthController.dart';
import 'package:getx_sample/V1/Screens/Auth/password.dart';

class EmailAuth extends StatelessWidget {
  const EmailAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EmailAuth")),
      body: Center(
          child: GetBuilder<AuthController>(
   
        
        builder: (_) {
          return Column(
            children: [
              Text("Fullname : ${_.fullname}") , 

              TextField(controller: _.emailController,) , 

                 ElevatedButton(
                  onPressed: () {
                    _.saveEmail(); 
                    Get.to(PasswordAuth());
                  },
                  child: Text("Next"))
            ],
          );
        },
      )),
    );
  }
}
