import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  increment() {
    counter++;
    update();
  }

  decrement() {
    counter--;
    update();
  }

  reset(){
    counter = 0.obs ; 
    update() ; 
  }
}
