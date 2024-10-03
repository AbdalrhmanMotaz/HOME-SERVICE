import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/details/components/notificationsdetails.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Notificationsdetails();
  }
}


