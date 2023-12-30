import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/V1/Controllers/counterController.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter with GetX"),
      ),
      body: Center(
          child: Column(
        children: [
          GetBuilder<CounterController>(
              init: CounterController(),
              builder: (value) => Text(
                    "the increment value is ${value.counter}",
                    style: TextStyle(fontSize: 30),
                  )),
          GetBuilder<CounterController>(
              builder: (value) => ElevatedButton(
                  onPressed: () {
                    value.increment();
                  },
                  child: Text("Increment"))),
          GetBuilder<CounterController>(
              builder: (value) => ElevatedButton(
                  onPressed: () {
                    value.decrement();
                  },
                  child: Text("Decrement"))),
          GetBuilder<CounterController>(
              builder: (value) => ElevatedButton(
                  onPressed: () {
                    value.reset(); 
                  },
                  child: Text("Reset"))),
        ],
      )),
    );
  }
}
