import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/Appbar.dart';
import 'package:get/get.dart';

class waiting_screen extends StatelessWidget {
  const waiting_screen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: Appbar(
          title: "بانتظار قبول العرض",
          subtitle: "",
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
            width: screenWidth,
            height: screenHeight,
            color: Ksecondcolor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    child: Image.asset(
                      "assets/Animation_waiting.gif",
                    ),
                  ),
                ),
                Container(child: Text("بانتظار العميل"))
              ],
            )));
  }
}
