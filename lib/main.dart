import 'package:flutter/material.dart';
import 'package:flutter_routes_and_navigations/screens/second_screen.dart';
import 'package:flutter_routes_and_navigations/screens/third_screen.dart';

import 'screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routes and Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SecondScreen.routeName: (context) =>
            const SecondScreen(data: "Hey, I'm second screen"),
        ThirdScreen.routeName: (context) =>
            const ThirdScreen(data: "Hey, I'm third screen"),
      },
    );
  }
}
