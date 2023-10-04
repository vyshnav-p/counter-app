import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:presentation/home.dart';
import 'package:presentation/screens/routes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
        // initialRoute: "/home",
        // defaultTransition: Transition.zoom,
        // getPages: [
        //   GetPage(name: "/", page: () => const MyApp()),
        //   GetPage(name: "/home", page: () => const HomeScreen()),
        //   GetPage(
        //       name: "/routes",
        //       page: () => const RoutesScreen(),
        //       transition: Transition.leftToRight)
        // ]
        
        );
  }
}
