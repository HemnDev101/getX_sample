import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V1/Screens/Auth/fullname.dart';
import 'package:getx_sample/V1/Screens/Counter.dart';
import 'package:getx_sample/V1/Screens/getxExample.dart';
import 'package:getx_sample/V2/presentation/screens/login.dart';
import 'package:getx_sample/V3/views/homepage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX is best"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Counter()));
                Get.to(Counter());
              },
              child: Text("Counter ")),
          ElevatedButton(
              onPressed: () {
                Get.to(FullnameAuth());
              },
              child: Text("Register")),
          ElevatedButton(
              onPressed: () {
                Get.to(() => getxExample());
              },
              child: Text("some examle on GetX")),
          ElevatedButton(
              onPressed: () {
                Get.to(() => Login());
              },
              child: Text("login with GetX V2")),
          ElevatedButton(
              onPressed: () {
                Get.to(() => HomePage());
              },
              child:
                  Text("New Architecture \n View\nController\nService\nModel")),
          ElevatedButton(
              onPressed: () {
                // signInWithGoogle();
              },
              child: Icon(Icons.email)),
        ],
      )),
    );
  }

  signInWithGoogle() async {
    // Trigger the authentication flow

    GoogleSignInAccount? googleUser = await  GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential user =
        await FirebaseAuth.instance.signInWithCredential(credential);

    print(user.user?.displayName); 

    // print(user.user?.email); 

    // print(user.user?.emailVerified); 

    // print(user.user?.isAnonymous); 

    // print(user.user?.metadata); 

    // print(user.user?.multiFactor); 
    
    // print(user.user?.phoneNumber); 

    // print(user.user?.uid); 

   


  }
}
