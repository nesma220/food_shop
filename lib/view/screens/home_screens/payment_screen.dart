import 'package:flutter/material.dart';
import 'package:task_342/routes/app_router.dart';
import 'package:task_342/view/widgets/loginWidgets/buttonWidget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              children: [
                const SizedBox(
                  width: 208,
                  height: 208,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffF67952),
                  ),
                ),
                Positioned(
                  right: 14,
                  top: 13,
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: Image.asset('assets/images/true.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 84,
          ),
          const Text(
            'Congratulation!!!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 38),
            child: SizedBox(
              width: 298,
              height: 46,
              child: Text(
                'Payment is the transfer of money \n services in exchange product or Payments ',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ContainerWidgetButtontext(
            textWidget: 'Get your receipt',
            bacgroundColorss: const Color(0xffF67952),
            ontap: () {
              //navigatorPush(context, '/CheckOut');
            },
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: 253,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          ContainerWidgetButtontext(
            textWidget: 'Back to Home',
            bacgroundColorss: const Color(0xffFFE9E2),
            ontap: () {
              navigatorPush(context, '/Home');
              //   AppRouter.goTo(screenName: '/Home');
            },
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: 253,
            style: const TextStyle(color: Color(0xffF67952), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
