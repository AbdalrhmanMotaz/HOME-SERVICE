import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/details/components/ordarsdetails.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return const Ordarsdetails();
  }
}
