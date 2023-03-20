import 'package:flutter/material.dart';
import 'package:task_342/model/clothes_Icon_model.dart';
import 'package:task_342/view/widgets/containerWidget.dart/color_radius.dart';
import 'package:task_342/view/widgets/loginWidgets/buttonWidget.dart';
import 'package:task_342/routes/app_router.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails({Key? key, this.model}) : super(key: key);

  ClothesImageModel? model;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  Color _selectedColor = Colors.red;

  _handleColorChange(value) {
    setState(() {
      _selectedColor = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        navigatorPop(context);

                        ///   AppRouter.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      )),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 21,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image(
              image: AssetImage(widget.model!.imagePost ?? ''),
              height: 310,
              width: 272,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 40, left: 22.0, right: 27),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 200,
                          child: Text(
                            widget.model!.textPost!,
                            style: TextStyle(
                                color: Colors.grey.shade800,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                            maxLines: 1,
                          )),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        widget.model!.desc!,
                        style: const TextStyle(
                            height: 1.4,
                            color: Colors.grey,
                            fontSize: 14,
                            wordSpacing: 0.8,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          ColorRadius(
                            color: const Color(0xFFBEE8EA),
                            isActive: false,
                            press: () {},
                          ),
                          ColorRadius(
                            color: const Color(0xFF141B4A),
                            isActive: true,
                            press: () {},
                          ),
                          ColorRadius(
                            color: const Color(0xFFF4E5C3),
                            isActive: false,
                            press: () {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 41,
                      ),
                      Center(
                        child: ContainerWidgetButtontext(
                          textWidget: 'Add to Cart',
                          bacgroundColorss: const Color(0xffF67952),
                          ontap: () {
                            navigatorPush(context, '/Cart');
                            //  AppRouter.goTo(screenName: '/Cart');
                          },
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: 253,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
