import 'package:flutter/material.dart';

class containerWidgetDelivery extends StatelessWidget {
  containerWidgetDelivery({
    Key? key,
    required this.text,
  }) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color(0xffFFFFFF), boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          offset: const Offset(0.0, 1.0), //(x,y)
          blurRadius: 6.0,
        ),
      ]),
      width: 443,
      height: 92,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: Colors.orange.shade800,
              child: IconButton(
                icon: const Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 16,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 16),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  '(342)  4522019',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Text(
                  '220  New York',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            const Image(
              image: AssetImage('assets/images/edit.png'),
              color: Colors.black54,
            )
          ],
        ),
      ),
    );
  }
}
