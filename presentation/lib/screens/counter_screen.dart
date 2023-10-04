
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation/controller/counter_controller.dart';


class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(CounterController());
    return Scaffold(
      body: Center(
        child:
                 Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    counterController.count.value.toString(),
                    style: TextStyle(fontSize: 60),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                              onPressed: () {
                                counterController.increment();
                              },
                              icon: const Icon(Icons.add))),
                      const SizedBox(width: 100),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20)),
                          child: IconButton(
                              onPressed: () {
                                counterController.decrement();
                              },
                              icon: const Icon(Icons.remove)))
                    ],
                  )
                ],
              ),
            )

            // Simple State Management
            // GetBuilder<CounterController>(
            //     init: CounterController(),
            //     builder: (controller) {
            //       return Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text(
            //             controller.count.toString(),
            //             style: TextStyle(fontSize: 60),
            //           ),
            //          const SizedBox(height: 30),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Container(
            //                   decoration: BoxDecoration(
            //                       color: Colors.red,
            //                       borderRadius: BorderRadius.circular(20)),
            //                   child: IconButton(
            //                       onPressed: () {
            //                         controller.increment();
            //                       },
            //                       icon: const Icon(Icons.add))),
            //               const SizedBox(width: 100),
            //               Container(
            //                   decoration: BoxDecoration(
            //                       color: Colors.green,
            //                       borderRadius: BorderRadius.circular(20)),
            //                   child: IconButton(
            //                       onPressed: () {
            //                         controller.decrement();
            //                       },
            //                       icon: const Icon(Icons.remove)))
            //             ],
            //           )
            //         ],
            //       );
            //     }),
      ),
    );
  }
}
