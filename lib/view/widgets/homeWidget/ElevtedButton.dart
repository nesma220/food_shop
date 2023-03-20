import 'package:flutter/material.dart';

ElevatedButton elevatedButton(
        String text, Color color, Color colortext, {function}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: colortext, backgroundColor: color,
        shadowColor: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        minimumSize: Size(100, 40), //////// HERE
      ),
      onPressed: function,
      child: Text(text),
    );
