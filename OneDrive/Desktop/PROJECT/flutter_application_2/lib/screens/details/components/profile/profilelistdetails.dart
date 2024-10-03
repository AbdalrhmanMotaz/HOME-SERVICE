import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/profile/screensofprofils/My_profits.dart';
import 'package:flutter_application_2/screens/details/components/profile/screensofprofils/SettingsApp.dart';
import 'package:flutter_application_2/screens/details/components/profile/screensofprofils/Support_for_workers.dart';
import 'package:get/get.dart';

class Profilelistdetails extends StatefulWidget {
  const Profilelistdetails({super.key});

  @override
  State<Profilelistdetails> createState() => _ProfilelistdetailsState();
}

class _ProfilelistdetailsState extends State<Profilelistdetails> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.009,
          ),
          GestureDetector(
              child: SizedBox(
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(screenHeight * .01),
                      child: Container(
                        height: screenHeight * .04,
                        width: screenWidth * .2,
                        decoration: BoxDecoration(
                            color: KTextColorredgreen,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          "اضافه +",
                          style: ktextstyleboldwite,
                        )),
                      ),
                    ),
                    const Text("جنيه  "),
                    const Text("0.0"),
                    
                  ],
                ),
                Row(
                  children: [
                    const Text("رصيد الحساب", style: ktextstylemediam),
                    Image.asset(
                      "assets/Animation_Money.gif",
                      height: screenHeight * .07,
                    ),
                  ],
                ),
              ],
            ),
          )),
          SizedBox(
            height: screenHeight * 0.005,
          ),
          GestureDetector(
              onTap: () {
                Get.to(My_profits());
              },
              child: SizedBox(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenHeight * .025),
                      child: const Row(
                        children: [
                          Text("طلبات "),
                          Text("0"),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Text("عدد الطلبات", style: ktextstylemediam),
                        Image.asset(
                          "assets/Animation_Right.gif",
                          height: screenHeight * .07,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: screenHeight * 0.009,
          ),
          GestureDetector(
              child: SizedBox(
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenHeight * .025),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/Animation_arrowback.gif",
                          height: screenHeight * .04,
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight * .01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("ارباحى", style: ktextstylemediam),
                      SizedBox(
                        width: screenHeight * .01,
                      ),
                      Icon(Icons.emoji_events,
                          size: screenHeight * .05, color: KTextColorredgreen),
                    ],
                  ),
                ),
              ],
            ),
          )),
          SizedBox(
            height: screenHeight * 0.009,
          ),
          GestureDetector(
              child: SizedBox(
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenHeight * .025),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/Animation_arrowback.gif",
                          height: screenHeight * .04,
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight * .01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("ملاحظات المستخدمين", style: ktextstylemediam),
                      SizedBox(
                        width: screenHeight * .01,
                      ),
                      Image.asset(
                        "assets/Animation_messeg.gif",
                        height: screenHeight * .05,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
          SizedBox(
            height: screenHeight * 0.009,
          ),
          GestureDetector(
              onTap: () {
                Get.to(SupportForWorkers());
              },
              child: SizedBox(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenHeight * .025),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Animation_arrowback.gif",
                              height: screenHeight * .04,
                            ),
                          ],
                        )),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenHeight * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("الدعم للعمال", style: ktextstylemediam),
                          SizedBox(
                            width: screenHeight * .01,
                          ),
                          Image.asset(
                            "assets/Animation_queshenmark.gif",
                            height: screenHeight * .05,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: screenHeight * 0.009,
          ),
          GestureDetector(
              onTap: () {
                Get.to(SettingsApp());
              },
              child: SizedBox(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenHeight * .025),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/Animation_arrowback.gif",
                              height: screenHeight * .04,
                            ),
                          ],
                        )),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenHeight * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "اعدادات",
                            style: ktextstylemediam,
                          ),
                          SizedBox(
                            width: screenHeight * .01,
                          ),
                          Image.asset(
                            "assets/Animation_setting.gif",
                            height: screenHeight * .05,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: screenHeight * 0.009,
          ),
          GestureDetector(
              child: SizedBox(
            width: screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight * .01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "تسجيل الخروج",
                        style: ktextstylemediam,
                      ),
                      SizedBox(
                        width: screenHeight * .01,
                      ),
                      Image.asset(
                        "assets/Animation_exit.gif",
                        height: screenHeight * .05,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
