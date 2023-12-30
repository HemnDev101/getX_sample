import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V2/business_logic/controllers/userController.dart';
import 'package:getx_sample/V2/data/providers/userService.dart';

class Login extends StatelessWidget {
  UserController _UserController = Get.put(UserController());
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: _UserController.emailController,
          ),
          TextField(
            controller: _UserController.passwordController,
          ),
          ElevatedButton(
              onPressed: () {
                _UserController.login(); 
              
              },
              child: Text("Login"))
        ],
      )),
    );
  }
}
