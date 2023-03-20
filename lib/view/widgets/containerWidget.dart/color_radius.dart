import 'package:flutter/material.dart';

class ColorRadius extends StatelessWidget {
  ColorRadius({
    super.key,
    required this.color,
    required this.isActive,
    required this.press,
  });

  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          border:
              Border.all(color: isActive ? Colors.grey : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
