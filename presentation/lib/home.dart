import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:presentation/screens/counter_screen.dart';
import 'package:presentation/screens/routes_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showGetBottomSheet();
                },
                child: Text("Bottom Sheet",
                    style: TextStyle(color: Colors.black))),
            ElevatedButton(
                onPressed: () {
                  showGetAlertDialog();
                },
                child: Text("Alert Dialog",
                    style: TextStyle(color: Colors.black))),
            ElevatedButton(
                onPressed: () {
                  showGetSnackBar();
                },
                child: Text("Snackbar", style: TextStyle(color: Colors.black))),
            ElevatedButton(
                onPressed: () {
                  Get.to(const RoutesScreen(),
                      fullscreenDialog: true,
                      transition: Transition.zoom,
                      // duration: const Duration(milliseconds: 2000),
                      curve: Curves.bounceInOut);
                  // Go to routes screen but no option to return to previous screen

                  // Get.off(const RoutesScreen());

                  // Go to routes screen and cancel all previos screens routes

                  // Get.offAll(const RoutesScreen());

                  // Go to routes screen with some data
                  // Get.to(const RoutesScreen(), arguments: "Data form home screen");
                },
                child: const Text("Routes",
                    style: TextStyle(color: Colors.black))),
            ElevatedButton(
                onPressed: () {
                  Get.to(
                    const CounterScreen(),
                  );
                },
                child: const Text("Counter",
                    style: TextStyle(color: Colors.black))),
          ],
        ),
      ),
    );
  }

  void showGetAlertDialog() {
    Get.defaultDialog(
      title: "Dialog title",
      titleStyle: TextStyle(fontSize: 20),
      middleText: "This is the middle text",
      middleTextStyle: TextStyle(fontSize: 17),
      backgroundColor: Colors.white,
      radius: 50,
      //To customize the middle text
      // content: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     CircularProgressIndicator(),
      //     SizedBox(width: 20),
      //     Text("Loading")
      //   ],
      // ),
      //Default Cancel and Confirm options
      // textCancel: "Cancel",
      // cancelTextColor: Colors.red,
      // textConfirm: "Confirm",
      // confirmTextColor: Colors.green,
      // buttonColor: Colors.black,
      // onConfirm: () {},
      // onCancel: () {},
      // //Customize the default cancel and confirm
      // cancel: Text("Cancel", style: TextStyle(color: Colors.red)),
      // confirm: Text("Confirm", style: TextStyle(color: Colors.green)),
      // actions: [
      //   ElevatedButton(
      //       onPressed: () {
      //         Get.back();
      //       },
      //       child: Text("Action 1")),
      //   ElevatedButton(onPressed: () {}, child: Text("Action 2")),
      // ],
      // barrierDismissible: false
    );
  }

  void showGetBottomSheet() {
    Get.bottomSheet(
      Container(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.wb_sunny_outlined),
              title: Text("Light Theme"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text("Dart Theme"),
              onTap: () {},
            )
          ],
        ),
      ),
      // barrierColor: Colors.green[100],
      // // backgroundColor: Colors.green[300],
      // isDismissible: false,
      // shape: RoundedRectangleBorder(
      // borderRadius: BorderRadius.circular(30.0),
      // side: BorderSide(width: 3, color: Colors.black)),
      // enableDrag: false
    );
  }

  void showGetSnackBar() {
    Get.snackbar(
      "Title", "This is the message",
      snackPosition: SnackPosition.BOTTOM,
      titleText: Text("New title"),
      messageText: Text("This is the new Message"),
      // backgroundColor: Colors.red[400],
      // borderRadius: 30,
      // margin: EdgeInsets.all(50),
      // maxWidth: 100,
      // backgroundGradient: LinearGradient(colors: [Colors.red, Colors.yellow]),
      // borderColor: Colors.black,
      // borderWidth: 3,
      // boxShadows: [
      //   BoxShadow(
      //       color: Colors.yellowAccent,
      //       offset: Offset(20, 40),
      //       spreadRadius: 20,
      //       blurRadius: 8)
      // ],
      // isDismissible: true,
      // dismissDirection: DismissDirection.horizontal,
      // forwardAnimationCurve: Curves.bounceInOut,
      // duration: Duration(milliseconds: 3000),
      // animationDuration: Duration(milliseconds: 1000),
      // icon: Icon(Icons.send, color: Colors.white),
      // mainButton: TextButton(
      //   onPressed: () {},
      //   child: Text(
      //     "Retry",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
      // ),
      //  overlayBlur: 5,
      //  overlayColor: Colors.blueGrey,
      //  padding: EdgeInsets.all(50),
      //  showProgressIndicator: true,
      //  progressIndicatorBackgroundColor: Colors.orange,

      //  userInputForm: Form(child:
      //  Row(
      //   children: [
      //     Expanded(child: TextField())
      //   ],
      //  ))
    );
  }
}
