import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  CartWidget({
    Key? key,
    required this.image,
  }) : super(key: key);
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFFFFF),
      width: 443,
      height: 92,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 74,
              width: 84,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade200,
                  image: DecorationImage(image: AssetImage(image))),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Henley Shirts',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$250',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              width: 25,
            ),
            IncrementButton(text: '+'),
            const Text('1'),
            IncrementButton(text: '-'),
          ],
        ),
      ),
    );
  }
}

class IncrementButton extends StatelessWidget {
  IncrementButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 26,
      height: 25,
      child: IconButton(
          onPressed: () {},
          icon: Text(
            text,
            style: TextStyle(color: Colors.orange.shade500, fontSize: 10),
          )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(246, 251, 206, 154),
      ),
    );
  }
}
