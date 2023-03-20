import 'package:flutter/material.dart';
import 'package:task_342/view/widgets/commoned/path/path_image.dart';
import 'package:task_342/view/widgets/containerWidget.dart/CartWidget.dart';
import 'package:task_342/view/widgets/loginWidgets/buttonWidget.dart';
import 'package:task_342/routes/app_router.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
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
              //  AppRouter.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        title: const Text(
          'My Cart',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: [
            CartWidget(image: PahtImage.cartIcon),
            const SizedBox(height: 13),
            CartWidget(image: PahtImage.cartIcon2),
            const SizedBox(height: 13),
            CartWidget(image: PahtImage.cartIcon3),
            const SizedBox(height: 13),
            CartWidget(image: PahtImage.cartIcon4),
            const Spacer(),
            const ListTile(
              leading: Text(
                'Subtotal   :',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              trailing: Text(
                '\$740',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: ContainerWidgetButtontext(
                textWidget: 'Checkout',
                bacgroundColorss: const Color(0xffF67952),
                ontap: () {
                  navigatorPush(context, '/CheckOut');
                  //   AppRouter.goTo(screenName: '/CheckOut');
                },
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: 253,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
