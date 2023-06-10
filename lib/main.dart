import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_getxcontroller_life_cycle/my_controller.dart';

void main() =>runApp(MyApp());


class MyApp extends StatelessWidget {
   MyApp({super.key});
  MyController myController = Get.put(MyController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetxController life cycle  methods',
      theme: ThemeData(primarySwatch: Colors.blue, ),
      home: Scaffold(
        appBar: AppBar(title: const Text("GetxController life cycle methods")),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              //initState: myController.increment(),
              // dispose: myController.cleanUpTask(),
            builder: (controller){
              return Text("The value is ${controller.count}", style: const  TextStyle(fontSize: 25.0));
            })
          ],

        ),)

      )
    );
  }
}
