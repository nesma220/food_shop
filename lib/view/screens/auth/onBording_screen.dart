import 'package:flutter/material.dart';
import 'package:task_342/controller/web_services/border_json.dart';
import 'package:task_342/view/screens/auth/login_screen.dart';
import 'package:task_342/view/widgets/commoned/containerWidgetButton.dart';
import 'package:task_342/routes/app_router.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;
  int currentIndex = 0;
  var controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              navigatorPushReplac(context, '/Login');
              //   AppRouter.goToAndRemove(screenName: '/Login');
            },
            child: const Text(
              'SKIP',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 45),
        child: Center(
          child: PageView.builder(
            controller: controller,
            onPageChanged: (value) {
              currentIndex = value;
              setState(() {});
            },
            physics: const BouncingScrollPhysics(),
            itemCount: dataModel.length,
            itemBuilder: (context, index) {
              return onBoardingWidget(
                currentIndex: currentIndex,
                isLast: isLast,
                controller: controller,
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }
}

class onBoardingWidget extends StatelessWidget {
  onBoardingWidget({
    super.key,
    required this.isLast,
    required this.controller,
    required this.index,
    required this.currentIndex,
  });

  final bool isLast;
  final index;
  final PageController controller;
  int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(dataModel[index].image),
        const SizedBox(height: 38),
        Text(
          dataModel[index].title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        //    const SizedBox(height: 16),
        Text(dataModel[index].body,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'Gorditas',
              fontWeight: FontWeight.w400,
              height: 1.5,
              color: Colors.grey,
            )),
        const SizedBox(height: 35),
        ContainerWidgetButton(
          image: 'assets/icons/imageContainer.png',
          textWidget: dataModel[index].textbutton,
          style: const TextStyle(color: Colors.white),
          bacgroundColorss: const Color(0xffF67952),
          ontap: () {
            if (currentIndex > 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            } else {
              controller.nextPage(
                duration: const Duration(milliseconds: 750),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            }
          },
        ),
      ],
    );
  }
}
