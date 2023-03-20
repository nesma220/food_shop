import 'package:flutter/material.dart';
import 'package:task_342/view/widgets/containerWidget.dart/container_widget_delivery.dart';
import 'package:task_342/routes/app_router.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              navigatorPop(context);
              //   AppRouter.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          'Checkout',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 41, left: 21, right: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivery address',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            const SizedBox(height: 25),
            containerWidgetDelivery(text: 'Home'),
            const SizedBox(height: 16),
            containerWidgetDelivery(text: 'Office'),
            const SizedBox(height: 36),
            const Text(
              'Billing information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Container(
              decoration:
                  BoxDecoration(color: const Color(0xffFFFFFF), boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ]),
              width: double.infinity,
              height: 170,
              child: Column(
                children: const [
                  ListTile(
                    leading: Text('Delivery Fee     : ',
                        style: TextStyle(color: Colors.grey)),
                    trailing: Text('\$50',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    leading: Text('Subtotal   : ',
                        style: TextStyle(color: Colors.grey)),
                    trailing: Text('\$50',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  ListTile(
                    leading:
                        Text('Total  : ', style: TextStyle(color: Colors.grey)),
                    trailing: Text('\$160',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  children: [
                    circleAvatarImage(
                      imagePayment: 'assets/images/cart/ApplePay.png',
                    ),
                    Positioned(
                      right: 1,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: const Color(0xff39CE8A),
                        child: Image.asset('assets/icons/true.png'),
                      ),
                    ),
                  ],
                ),
                circleAvatarImage(
                  imagePayment: 'assets/images/cart/Mastercard.png',
                ),
                circleAvatarImage(
                    imagePayment: 'assets/images/cart/PayPal.png'),
                circleAvatarImage(
                    imagePayment: 'assets/images/cart/visa-logo.png'),
              ],
            ),
            const SizedBox(height: 22),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffF67952),
                  onPrimary: Colors.white,
                  shadowColor: Colors.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(123.0)),
                  minimumSize: const Size(229, 55), //////// HERE
                ),
                onPressed: () {
                  navigatorPush(context, '/Payment');
                  //  AppRouter.goTo(screenName: '/Payment');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/icons/arrow.png'),
                    ),
                    const SizedBox(width: 32),
                    const Center(child: Text('Swipe for Payment')),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Stack circleAvatarImage({required imagePayment}) => Stack(
      children: [
        SizedBox(
          width: 70,
          height: 55,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 6,
            child: Image.asset(
              imagePayment,
              width: 43,
              height: 18,
            ),
          ),
        ),
      ],
    );
