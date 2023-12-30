import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V2/constant.dart';
import 'package:getx_sample/V2/data/models/api_response.dart';
import 'package:getx_sample/V2/data/models/user.dart';
import 'package:getx_sample/V2/presentation/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController extends GetxController {
  // final userRepository = UserRepository().obs;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  RxString emailText = ''.obs;
  RxString passwordText = ''.obs;

  var token = ''.obs;
  ApiResponse apiResponse = ApiResponse();
  final dio = Dio();
  //login processes
  Future<void> login() async {
    final response = await dio.post(loginUrl,
        data: {
          'email': emailController.text.toString(),
          'password': passwordController.text.toString()
        },
        options: Options(
            headers: {'Accept': 'application/json'},
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
    //Done
    if (response.statusCode == 200) {
      // print('200');
      // print(response.data['user']);
      apiResponse.data = response.data;
    }
    //UnAuthorized
    else if (response.statusCode == 401) {
      // print('401');
      // print(response.data['errors']);
      apiResponse.error = response.data['errors'];
    }
    //Unprossecable Content
    else {
      apiResponse.error = response.data['errors'];
      // print(response.data['errors']);
      // print('422');
    }

    if (apiResponse.error == null) {
      final SharedPreferences _prefs = await SharedPreferences.getInstance();
      var map = Map<String, dynamic>.from(apiResponse.data! as Map);
      //lerada kesham haya
      User user = User.fromJson(map);
      // print(user.token);
      _prefs.setString('token', user.token.toString());
      token.value = _prefs.getString('token') ?? "";

      Get.offAll(Home());
    } else {
      Get.snackbar('error', apiResponse.error.toString());
    }
  }
}
