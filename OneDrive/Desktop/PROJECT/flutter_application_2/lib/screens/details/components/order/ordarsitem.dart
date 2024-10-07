import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/models/order_model.dart';
import 'package:flutter_application_2/screens/details/components/CardOfOrders.dart';

class Ordarsitem extends StatefulWidget {
  @override
  _OrdarsitemState createState() => _OrdarsitemState();
}

class _OrdarsitemState extends State<Ordarsitem> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    CompletedPage(),
    AcceptablePage(),
    WaitingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 40,
            color: KTextColorredgreen,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _onItemTapped(0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('الطلبات المكتملة')],
                  ),
                ),
                GestureDetector(
                  onTap: () => _onItemTapped(1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('الطلبات المقبولة')],
                  ),
                ),
                GestureDetector(
                  onTap: () => _onItemTapped(2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text('الطلبات المعلقة')],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: _pages[_selectedIndex]),
        ],
      ),
    );
  }
}

class CompletedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final completedOrders =
        jsonmap.where((order) => order.status == "completed").toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'الطلبات المكتملة',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: completedOrders.length,
            itemBuilder: (context, index) {
              return CardOfOrdersState(
                order: completedOrders[index],
                showRatingButton: true, // زر التقييم
              );
            },
          ),
        ),
      ],
    );
  }
}

class AcceptablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final acceptableOrders =
        jsonmap.where((order) => order.status == "acceptable").toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'الطلبات المقبولة',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: acceptableOrders.length,
            itemBuilder: (context, index) {
              return CardOfOrdersState(
                order: acceptableOrders[index],
                showRatingButton: false, // لا يظهر زر التقييم
                displayText: '', // النص المطلوب
              );
            },
          ),
        ),
      ],
    );
  }
}

class WaitingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final waitingOrders =
        jsonmap.where((order) => order.status == "waiting").toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'الطلبات المعلقة',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: waitingOrders.length,
            itemBuilder: (context, index) {
              return CardOfOrdersState(
                order: waitingOrders[index],
                showRatingButton: false,
              );
            },
          ),
        ),
      ],
    );
  }
}

// تحديث CardOfOrdersState لتشمل زر التقييم والنص
class CardOfOrdersState extends StatelessWidget {
  final Order order;
  final bool showRatingButton;
  final String? displayText;

  const CardOfOrdersState({
    required this.order,
    this.showRatingButton = false,
    this.displayText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('الطلب: ${order.order}'),
            Text('السعر: ${order.price}'),
            Text('المدينة: ${order.city}'),
            Text('التاريخ: ${order.startDate} إلى ${order.endDate}'),
            if (showRatingButton)
              ElevatedButton(
                onPressed: () {
                  // منطق التقييم هنا
                },
                child: Text('قيم الطلب'),
              ),
            if (!showRatingButton && displayText != null) Text(displayText!),
          ],
        ),
      ),
    );
  }
}

// نموذج الطلبات
class Order {
  late String city;
  late String clientID;
  late String endData;
  late String endDate;
  late String image;
  late String jobType;
  late String name;
  late String offerId;
  late String order;
  late String orderId;
  late String price;
  late String startDate;
  late String status;

  Order({
    required this.city,
    required this.clientID,
    required this.endData,
    required this.endDate,
    required this.image,
    required this.jobType,
    required this.name,
    required this.offerId,
    required this.order,
    required this.orderId,
    required this.price,
    required this.startDate,
    required this.status,
  });

  Order.fromJson(Map<dynamic, dynamic> json) {
    city = json['city'];
    clientID = json['clientID'];
    endData = json['endData'];
    endDate = json['end_date'];
    image = json['image'];
    jobType = json['jobType'];
    name = json['name'];
    offerId = json['offerId'];
    order = json['order'];
    orderId = json['orderId'];
    price = json['price'];
    startDate = json['start_date'];
    status = json['status'];
  }
}

// قائمة الطلبات للاختبار
List<Order> jsonmap = [
  // أضف هنا الطلبات
  Order(
    city: "القاهرة",
    clientID: "eKDTfwQjogQkUzG1aO0sCNEgKCD2",
    endData: "10",
    image: "https://example.com/image1.jpg",
    jobType: "نجار",
    name: "على",
    offerId: "Xkq3A1mWVS598mIzqLZA",
    order: "عايز اعمل سرير كنبه",
    orderId: "1",
    price: "500",
    status: "completed",
    endDate: '2024-08-20',
    startDate: '2024-08-05',
  ),
  Order(
    city: "الجيزة",
    clientID: "eKDTfwQjogQkUzG1aO0sCNEgKCD2",
    endData: "15",
    image: "https://example.com/image2.jpg",
    jobType: "سباكة",
    name: "عبد الرحمن",
    offerId: "Xkq3A1mWVS598mIzqLZA",
    order: "سباكة المطبخ",
    orderId: "2",
    price: "200",
    status: "acceptable",
    endDate: '2024-08-20',
    startDate: '2024-08-05',
  ),
  Order(
    city: "الهرم",
    clientID: "eKDTfwQjogQkUzG1aO0sCNEgKCD2",
    endData: "15",
    image: "https://example.com/image3.jpg",
    jobType: "تصليح تكييف",
    name: "خالد",
    offerId: "Xkq3A1mWVS598mIzqLZA",
    order: "تصليح تكييف",
    orderId: "3",
    price: "1000",
    status: "waiting",
    endDate: '2024-09-30',
    startDate: '2024-08-30',
  ),
];
