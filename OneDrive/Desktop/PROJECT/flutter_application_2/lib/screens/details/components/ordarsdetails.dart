import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/Appbar.dart';

class Ordarsdetails extends StatefulWidget {
  const Ordarsdetails({super.key});

  @override
  State<Ordarsdetails> createState() => _OrdarsdetailsState();
}

class _OrdarsdetailsState extends State<Ordarsdetails> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: Appbar(
        title: 'الطلبات',
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
              Image.asset("assets/box-open.png", height: screenHeight * .2),
              Text("لا يوجد طلبات عمل لدبك",style: ktextstylesmale,),
              Text("لم تقم بقبول اى طلب حتى الان ",style: ktextstylesmale,),
              Text("وقم بقبول طلبك الاول الان",style: ktextstylesmale,)
            ],
          ),
        ),
      ),
    );
  }
}
