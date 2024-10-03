import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/Main_Order_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Main_Order_Screen();
  }
}
