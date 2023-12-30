import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var fullname = "".obs;
  var email = "".obs;
  var password = "".obs;

  TextEditingController fullnameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  saveFullname() {
     fullname = fullnameController.value.text.obs;
    update(); 
  }
 saveEmail() {
     email = emailController.value.text.obs;
    update(); 
  } savePassword() {
     password = passwordController.value.text.obs;
    update(); 
  }

}
