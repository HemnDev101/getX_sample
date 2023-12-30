import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V1/Screens/myHomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
 void main()  async {

   runApp(const MyApp());
     await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
          title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.red),

      home: const MyHomePage(),
    );
  }
}

 