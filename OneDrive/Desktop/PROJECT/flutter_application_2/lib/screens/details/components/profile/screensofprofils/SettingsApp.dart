import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/Appbar.dart';
import 'package:get/get.dart';

class SettingsApp extends StatelessWidget {
  const SettingsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notificationsEnabled = false;
  bool darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: Appbar(
        title: "الاعدادات",
        subtitle: "",
        centerTitle: true,
      ),
      body: Container(
        color: Ksecondcolor,
        child: Padding(
          padding: EdgeInsets.all(screenHeight * .01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Switch(
                    value: notificationsEnabled,
                    onChanged: (value) {
                      setState(() {});
                      notificationsEnabled = value;
                    },
                  ),
                  Text(
                    "الاشعارات",
                    style: ktextstylemediam,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Switch(
                    value: darkModeEnabled,
                    onChanged: (value) {
                      setState(() {});
                      darkModeEnabled = value;
                    },
                  ),
                  Text(
                    "الوضع المظلم",
                    style: ktextstylemediam,
                  ),
                ],
              ),
              GestureDetector(
                child: Text(
                  "عن التطبيق",
                  style: ktextstylemediam,
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      contentTextStyle: ktextstylemediam,
                      title: Text('عن التطبيق'),
                      content: Container(
                        height: screenHeight * .4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('تطبق يساعد اصحاب الحرف على توسيع دئره العمل'),
                            Text("تم العمل على البرنامج فريق"),
                            Text('The programers:'),
                            Text(' محمود عمرو'),
                            Text("عبدالله جمال"),
                            Text("سارة سليمان"),
                            Text("عبدالرحمن معتز"),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () => Get.back(), child: Text('موافق'))
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
