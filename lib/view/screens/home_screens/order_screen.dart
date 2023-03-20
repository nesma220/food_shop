import 'package:flutter/material.dart';
import 'package:task_342/view/screens/home_screens/order/canclelled_tap.dart';
import 'package:task_342/view/screens/home_screens/order/completed_tap.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'My Orders',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        bottom: TabBar(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
            controller: tabController,
            onTap: (value) {
              print(value.toString());
            },
            indicatorColor: Colors.orange.shade800,
            unselectedLabelColor: Colors.grey.shade400,
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            indicatorWeight: 5,
            labelColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(text: 'Completed'),
              Tab(text: 'Cancelled'),
            ]),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          CompletdTap(),
          CancelledTap(),
        ],
      ),
    );
  }
}
