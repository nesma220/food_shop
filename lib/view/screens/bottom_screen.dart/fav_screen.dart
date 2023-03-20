import 'package:flutter/material.dart';
import 'package:task_342/view/widgets/homeWidget/searchWidget.dart';
import 'package:task_342/routes/app_router.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              navigatorPop(context);
              //    AppRouter.back();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black),
        title: const Text(
          'Favorite',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: PostWidgetSearch(scroll: Axis.vertical),
      ),
    );
  }
}
