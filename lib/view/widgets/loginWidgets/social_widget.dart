import 'package:flutter/material.dart';

class ButtonIcons extends StatelessWidget {
  ButtonIcons({super.key, required this.image});
  String image;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shadowColor: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Stack(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            child: Image.asset(
              image,
              height: 31,
              width: 31,
            ),
          )
        ],
      ),
    );
  }
}
