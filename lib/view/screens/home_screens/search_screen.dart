import 'package:flutter/material.dart';
import 'package:task_342/view/screens/home_screens/home_screen.dart';
import 'package:task_342/view/widgets/homeWidget/BaseAppBar.dart';
import 'package:task_342/view/widgets/homeWidget/BottomSheetWidget.dart';
import 'package:task_342/view/widgets/homeWidget/searchWidget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 21, top: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchFormFiledWidget(),
              const ListTile(
                leading: Text(
                  'Recent searches',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                trailing: BottomSheetWidget(),
                contentPadding: EdgeInsets.zero,
              ),
              const Divider(
                thickness: 0.8,
              ),
              const SizedBox(height: 12),
              const Text(
                'Search results showing for “Shirt”',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              PostWidgetSearch(scroll: Axis.vertical),
            ],
          ),
        ),
      ),
    );
  }
}
