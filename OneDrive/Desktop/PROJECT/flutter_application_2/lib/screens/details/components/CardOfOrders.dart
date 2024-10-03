import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/models/order_model.dart';
import 'package:flutter_application_2/screens/details/components/waiting_screen.dart';
import 'package:get/get.dart';

// class CardOfOrders extends StatefulWidget {
//   const CardOfOrders({super.key});

//   @override
//   State<CardOfOrders> createState() => CardOfOrdersState();
// }

class CardOfOrdersState extends StatefulWidget {
  const CardOfOrdersState({super.key, required this.order});

  final Order order;

  @override
  State<CardOfOrdersState> createState() => _CardOfOrdersStateState();
}

class _CardOfOrdersStateState extends State<CardOfOrdersState> {
  final textController = TextEditingController();


  @override
  
  Widget build(BuildContext context) {

    

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kcardPaddin),
      child: Container(
        color: KTextColorwhite,
        child: Padding(
          padding: const EdgeInsets.all(kcardPaddin + 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        widget.order.name,
                        style: ktextstylebold,
                      ),
                      Text(
                        widget.order.orderId,
                        style: ktextstylesmale,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: kcardPaddin,
                  ),
                  CircleAvatar(
                    child: Image.asset("assets/avatar-home.png"),
                  ),
                ],
              ),
              const SizedBox(
                height: kcardPaddin,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "تفاصيل الطلب",
                        style: ktextstylemediam,
                      ),
                      Text(
                        widget.order.order,
                        style: ktextboldsmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "العنوان",
                        style: ktextstylemediam,
                      ),
                      Text(
                        widget.order.city,
                        style: ktextboldsmall,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "تاريخ البدء",
                        style: ktextstylemediam,
                      ),
                      Text(
                        widget.order.startDate,
                        style: ktextboldsmall,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "تاريخ الانتهاء",
                        style: ktextstylemediam,
                      ),
                      Text(
                        widget.order.endDate,
                        style: ktextboldsmall,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: kDefaultPaddin,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/home-2.png",
                          width: 40,
                        ),
                        const Text(
                          "موقع العميل",
                          style: ktextstylesmale,
                        )
                      ],
                    ),
                    const Text(" كم" " 11 ", style: ktextstylebold),
                    Column(
                      children: [
                        Image.asset(
                          "assets/worker-running.png",
                          width: 40,
                        ),
                        const Text(
                          "موقعك الحالى",
                          style: ktextstylesmale,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: kcardPaddin + 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const waiting_screen());
                    },
                    child: Container(
                      width: screenWidth * .55,
                      height: screenHeight * .05,
                      decoration: BoxDecoration(
                          color: KTextColorredgreen,
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          "قدم عرض ${widget.order.price} جنيه",
                          style: ktextstyleboldwite,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text(widget.order.order),
                            content: TextField(
                              controller: textController,
                              autofocus: true,
                              decoration:
                                  const InputDecoration(hintText: "قدم عرضك"),
                            ),
                            actions: [
                              TextButton(
                                child: const Text("الغاء"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              TextButton(
                                child: const Text("ارسال"),
                                onPressed: () {
                                  Get.to(const waiting_screen());
                                  setState(() {});
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: screenWidth * .35,
                      height: screenHeight * .05,
                      decoration: BoxDecoration(
                          color: Kthirdcolor,
                          borderRadius: BorderRadius.circular(4)),
                      child: const Center(
                        child: Text(
                          "عرض اخر",
                          style: ktextstyleboldblack,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
