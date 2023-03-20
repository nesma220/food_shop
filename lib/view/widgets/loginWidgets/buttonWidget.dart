import 'package:flutter/material.dart';

class ContainerWidgetButtontext extends StatelessWidget {
  ContainerWidgetButtontext(
      {required this.textWidget,
      required this.bacgroundColorss,
      required this.ontap,
      this.border,
      this.style,
      Key? key,
      required this.padding,
      required this.width})
      : super(key: key);

  String textWidget;
  TextStyle? style;
  Color bacgroundColorss;
  Function()? ontap;
  BoxBorder? border;
  String? image;
  EdgeInsetsGeometry padding;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 59,
          width: width,
          decoration: BoxDecoration(
            color: bacgroundColorss,
            borderRadius: BorderRadius.circular(30),
            border: border,
          ),
          child: Center(
            child: Text(
              textWidget,
              textAlign: TextAlign.center,
              style: style,
            ),
          ),
        ),
      ),
    );
  }
}
