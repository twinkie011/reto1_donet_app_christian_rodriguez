import 'package:flutter/material.dart';
import 'package:reto1_donet_app_christian_rodriguez/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(indicatorColor: Colors.pink),)
    );
  }
}
