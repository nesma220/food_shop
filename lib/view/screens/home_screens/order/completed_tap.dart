import 'package:flutter/material.dart';
import 'package:task_342/view/screens/home_screens/wallets_screen.dart';

class CompletdTap extends StatelessWidget {
  const CompletdTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: Container(
        height: 320,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return RecentWidget();
          },
        ),
      ),
    );
  }
}
