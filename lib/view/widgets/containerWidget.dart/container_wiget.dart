import 'package:flutter/material.dart';
import 'package:task_342/main.dart';
import 'package:task_342/model/clothes_Icon_model.dart';

class ContainerWidget extends StatelessWidget {
  ContainerWidget({super.key, required this.model});

  ClothesImageModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 17, top: 35),
      child: Container(
        width: 71,
        height: 74,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isDark ? Colors.white : Colors.grey.shade300,
          ),
        ),
        child: ListTile(
          title: Image.asset(
            model.image!,
            width: 38,
            height: 37,
          ),
          subtitle: Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Text(
                model.text!,
                textAlign: TextAlign.center,
              )),
        ),
      ),
    );
  }
}
