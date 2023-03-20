import 'package:flutter/material.dart';
import 'package:task_342/routes/navigator.dart';

class ContainerWidgetButton extends StatelessWidget {
  ContainerWidgetButton({
    required this.textWidget,
    required this.bacgroundColorss,
    required this.ontap,
    this.border,
    this.style,
    this.image,
    this.controller,
    Key? key,
  }) : super(key: key);
  var controller;
  String textWidget;
  TextStyle? style;
  Color bacgroundColorss;
  Function()? ontap;
  BoxBorder? border;
  String? image;

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 59,
          width: 218,
          decoration: BoxDecoration(
            color: bacgroundColorss,
            borderRadius: BorderRadius.circular(30),
            border: border,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 21, bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textWidget,
                  textAlign: TextAlign.center,
                  style: style,
                ),
                Row(
                  children: [
                    Image.asset(image ?? ''),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
