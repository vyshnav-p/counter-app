import 'package:flutter/material.dart';
import 'package:get/get.dart';


class RoutesScreen extends StatelessWidget {
  const RoutesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routes"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/home");
                  // Go to home screen but no option to return to previous screen
                  // Get.offNamed("/home");
                  // Go to home screen and cancel all previous screens/routes
                  // Get.offAllNamed("/home");
                 
                },
                child: Text("Go to Home")),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back")),
            // Text("${Get.arguments}")
          ],
        ),
      ),
    );
  }
}
