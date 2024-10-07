import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/components/home.dart';
import 'package:flutter_application_2/screens/home/components/notification.dart';
import 'package:flutter_application_2/screens/home/components/order.dart';
import 'package:flutter_application_2/screens/home/components/My_Profile.dart';
import 'package:get/get.dart';



void main() {
  runApp(Main_Order_Screen());
}

class Main_Order_Screen extends StatefulWidget {
  Main_Order_Screen({super.key});

  @override
  State<Main_Order_Screen> createState() => _orderState();
}

class _orderState extends State<Main_Order_Screen> {
  int currentIndex = 0;

  List<Widget> tabs = [
    const home(),
    const Order(),
    // const notification(),
    const My_Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: tabs[currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              fixedColor: KTextColorredgreen,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "الرئيسية",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: "الطلبات",
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.notifications),
                //   label: "التنبيهات",
                // ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "صفحتي",
                ),
              ],
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
            )));
  }
}
