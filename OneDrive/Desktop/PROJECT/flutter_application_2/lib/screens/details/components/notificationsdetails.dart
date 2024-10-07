import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/Appbar.dart';

class Notificationsdetails extends StatefulWidget {
  const Notificationsdetails({super.key});

  @override
  State<Notificationsdetails> createState() => _NotificationsdetailsState();
}

class _NotificationsdetailsState extends State<Notificationsdetails> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: Appbar(
        title: 'التنبيهات',
        centerTitle: true,
        subtitle: '',
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Ksecondcolor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset("assets/box-open.png", height: screenHeight * .2),
              Text(
                "لا يوجد تنبهات عمل لدبك",
                style: ktextstylesmale,
              ),
              Text(
                "لم تقم بقبول اى طلب حتى الان ",
                style: ktextstylesmale,
              ),
              Text(
                "وقم بقبول طلبك الاول الان",
                style: ktextstylesmale,
              )
            ],
          ),
        ),
      ),
    );
  }
}
