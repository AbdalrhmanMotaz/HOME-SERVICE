import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/models/order_model.dart';
import 'package:flutter_application_2/screens/details/components/Appbar.dart';
import 'package:flutter_application_2/screens/details/components/CardOfOrders.dart';

class Homedetils extends StatefulWidget {
  const Homedetils({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomedetilsState createState() => _HomedetilsState();
}

class _HomedetilsState extends State<Homedetils> {
  static bool hasOrders = false; // تغيير هذه القيمة بناء على وجود طلبات أم لا

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: hasOrders
          ? Appbar(
              title: 'الرئيسية',
              subtitle: "التنبيهات مفعلة",
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_events),
                  color: KTextColorredgreen,
                  iconSize: 27,
                ),
              ],
              centerTitle: true,
              leading: GestureDetector(
                onTap: () {
                  setState(() {
                    hasOrders = false; // العودة إلى الحالة بدون طلبات
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(kcardPaddin),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: KTextColorredwhite,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.arrow_back_ios_new,
                            size: 15, color: KTextColorwhite),
                        Text(" إيقاف إسناد الطلبات",
                            style: TextStyle(color: KTextColorwhite)),
                      ],
                    ),
                  ),
                ),
              ),
              leadingWidth: 150,
              stylesubtitle: const TextStyle(color: Ksecondcolor, fontSize: 15),
            )
          : Appbar(
              title: 'الرئيسية',
              subtitle: 'التنبيهات معطلة',
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_events),
                  color: KTextColorwhite,
                  iconSize: 27,
                ),
              ],
              centerTitle: true,
              stylesubtitle:
                  const TextStyle(color: KTextColorredwhite, fontSize: 15)),
      body: Container(
        color: Ksecondcolor,
        child: Stack(
          children: <Widget>[
            Visibility(
              visible: !hasOrders,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset("assets/avatar-home.png",
                        height: screenHeight * .2),
                    const SizedBox(height: kDefaultPaddin + 10),
                    const Text("يوجد طلبات قريبة منك بانتظار ",
                        style: ktextstylemediam),
                    const Text(
                        "فعل التنبيهات و ابدأ باستقبال الطلبات وتقديم العروض",
                        style: ktextstylemediam),
                    const SizedBox(height: kDefaultPaddin + 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          hasOrders = true; // الانتقال إلى حالة الطلبات
                        });
                      },
                      child: Container(
                        width: screenWidth * .90,
                        height: screenHeight * .05,
                        decoration: BoxDecoration(
                          color: KTextColorredgreen,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("ابدأ العمل", style: ktextstyleboldwite),
                              Icon(Icons.notifications, color: Colors.white),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: hasOrders,
              child: ListView.builder(
                itemCount: jsonmap.length, // عدد الطلبات
                itemBuilder: (context, index) {
                  return CardOfOrdersState(
                    order: jsonmap[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
