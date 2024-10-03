import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/Appbar.dart';

class SupportForWorkers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SupportForWorkersScreen();
  }
}

class SupportForWorkersScreen extends StatelessWidget {
  final List<Worker> workers = [
    Worker(name: "محمود عمرو", phone: "0123456789"),
    Worker(name: "عبدالله جمال", phone: "0987654321"),
    Worker(name: "سارة سليمان", phone: "0112233445"),
    Worker(name: "عبد الرحمن معتز", phone: "0155566778"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(
        title: "دعم للعمال",
        subtitle: "",
        centerTitle: true,
      ),
      body: Container(
        color: Ksecondcolor,
        child: ListView.builder(
          itemCount: workers.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                trailing: Column(
                  children: [
                    Text(
                      workers[index].name,
                      style: ktextstylemediam,
                    ),
                    Text(
                      workers[index].phone,
                      style: ktextstylegereen,
                    ),
                  ],
                ),
                leading: IconButton(
                  color: KTextColorredgreen,
                  icon: Icon(Icons.phone),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('الاتصال بـ ${workers[index].name}')),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Worker {
  final String name;
  final String phone;

  Worker({required this.name, required this.phone});
}
