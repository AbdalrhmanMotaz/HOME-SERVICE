import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/Appbar.dart';
import 'package:flutter_application_2/screens/details/components/order/ordarsitem.dart';

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
        body: Ordarsitem());
  }
}
