import 'package:get/get.dart';

class MyController extends GetxController{
  var count = 0;

  void increment()  {
   // await Future<int>.delayed(const Duration(seconds: 5));
    count++;
    update();

  }

  void cleanUpTask(){
    print("Clean up task");
  }

  //Better Approach
  @override
  void onInit(){
    print("Init Called");
    increment();
    super.onInit();
  }

  @override
  void onClose(){
    super.onClose();
  }

}