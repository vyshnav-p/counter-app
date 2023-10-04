import 'package:get/get.dart';

class CounterController extends GetxController {
  final count = RxInt(0);
  // RxDart Library
  // final name = RxString('');
  // final isLoading = RxBool(false);
  // final balance = RxDouble(0.0);
  // final items = RxList<String>([]);

  // Getx Package
  // var count = 0.obs;

  void increment() {
    count.value++;
    update();
  }

  void decrement() {
    count.value--;
    update();
  }
}

// Simple State Management

// class CounterController extends GetxController {
//   var count = 0;
//   void increment() {
//     count++;
//     update();
//   }

//   void decrement() {
//     count--;
//     update();
//   }
// }
