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

List<Order> jsonmap = [
  Order(
    city: "القاهرة",
    clientID: "eKDTfwQjogQkUzG1aO0sCNEgKCD2",
    endData: "10",
    image:
        "https://firebasestorage.googleapis.com/v0/b/shattably-fae2a.appspot.com/o/5a9f8ace-935f-412b-bac5-73c7a90572c83319361076486953847.jpg?alt=media&token=9a9bb4ff-c6cf-4927-b16f-68c60c8dc7c3",
    jobType: "نجار",
    name: " على",
    offerId: "Xkq3A1mWVS598mIzqLZA",
    order: "fjghkkfhglkfjhglhflkflkgjlkjfdlkgjdlkjhgldhfkjhggkghg اعمل سرير",
    orderId: "6r9IgAguKtFEisIgO0iB",
    price: "500",
    status: "completed",
    endDate: '2024-08-20',
    startDate: '2024-08-05',
  ),
  Order(
    city: "الجيزة",
    clientID: "eKDTfwQjogQkUzG1aO0sCNEgKCD2",
    endData: "15",
    image:
        "https://firebasestorage.googleapis.com/v0/b/shattably-fae2a.appspot.com/o/5a9f8ace-935f-412b-bac5-73c7a90572c83319361076486953847.jpg?alt=media&token=9a9bb4ff-c6cf-4927-b16f-68c60c8dc7c3",
    jobType: "سباكة",
    name: "عبد الرحمن معتز",
    offerId: "Xkq3A1mWVS598mIzqLZA",
    order: "سباكة المطبخ",
    orderId: "6r9IgAguKtFEisIgO0iB",
    price: "200",
    status: "completed",
    endDate: '2024-08-20',
    startDate: '2024-08-05',
  ),
  Order(
    city: "اكتوبر",
    clientID: "eKDTfwQjogQkUzG1aO0sCNEgKCD2",
    endData: "15",
    image:
        "https://firebasestorage.googleapis.com/v0/b/shattably-fae2a.appspot.com/o/5a9f8ace-935f-412b-bac5-73c7a90572c83319361076486953847.jpg?alt=media&token=9a9bb4ff-c6cf-4927-b16f-68c60c8dc7c3",
    jobType: "سباكة",
    name: "محمد احمد ",
    offerId: "Xkq3A1mWVS598mIzqLZA",
    order: "تنظيف",
    orderId: "6r9IgAguKtFEisIgO0iB",
    price: "800",
    status: "completed",
    endDate: '2024-09-30',
    startDate: '2024-08-20',
  ),
  Order(
    city: "الهرم",
    clientID: "eKDTfwQjogQkUzG1aO0sCNEgKCD2",
    endData: "15",
    image:
        "https://firebasestorage.googleapis.com/v0/b/shattably-fae2a.appspot.com/o/5a9f8ace-935f-412b-bac5-73c7a90572c83319361076486953847.jpg?alt=media&token=9a9bb4ff-c6cf-4927-b16f-68c60c8dc7c3",
    jobType: "تصليح تكييف",
    name: "خالد احمد ",
    offerId: "Xkq3A1mWVS598mIzqLZA",
    order: "تصليح 2 تكييف",
    orderId: "6r9IgAguKtFEisIgO0iB",
    price: "1000",
    status: "completed",
    endDate: '2024-09-30',
    startDate: '2024-08-30',
  ),
];

