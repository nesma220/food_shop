import 'package:flutter/material.dart';
import 'package:task_342/main.dart';

class FormFiledWidget extends StatelessWidget {
  FormFiledWidget(
      {super.key,
      required this.hintText,
      required this.pref,
      this.suff,
      this.validate,
      this.controller,
      this.Type});

  String hintText;
  Widget pref;
  Widget? suff;
  FormFieldValidator? validate;
  TextEditingController? controller;
  TextInputType? Type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
      child: TextFormField(
        cursorColor: Colors.orange,
        validator: validate,
        controller: controller,
        keyboardType: Type,
        decoration: InputDecoration(
          filled: true,
          //  fillColor: isDark ? Colors.black26 : Colors.white,
          border: InputBorder.none,
          prefixIcon: pref,
          hintText: hintText,
          suffixIcon: suff,
          hintStyle: const TextStyle(fontSize: 14, color: Color(0xffb6b7b7)),
        ),
      ),
    );
  }
}
