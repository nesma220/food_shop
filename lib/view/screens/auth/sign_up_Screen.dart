import 'package:flutter/material.dart';
import 'package:task_342/routes/app_router.dart';
import 'package:task_342/view/screens/auth/login_screen.dart';
import 'package:task_342/view/widgets/commoned/formFiledWidget.dart';
import 'package:task_342/view/widgets/commoned/path/path_image.dart';
import 'package:task_342/view/widgets/loginWidgets/buttonWidget.dart';
import 'package:task_342/view/widgets/loginWidgets/divider.dart';
import 'package:task_342/view/widgets/loginWidgets/social_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffffff),
      body: Padding(
        padding: const EdgeInsets.only(top: 66, left: 20, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(
                  PahtImage.logo,
                  width: 54,
                  height: 62,
                ),
                const SizedBox(height: 38),
                const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 25),
                FormFiledWidget(
                  hintText: 'Name',
                  controller: nameController,
                  validate: (value) {
                    if (value.isEmpty || value == null) {
                      return 'Enter Your Name';
                    }
                  },
                  pref: Image(image: AssetImage(PahtImage.personIcon)),
                ),
                const SizedBox(height: 10),
                FormFiledWidget(
                  hintText: 'Email',
                  controller: emailController,
                  validate: (value) {
                    return LoginScreen.validateEmail(value);
                  },
                  pref: Image(image: AssetImage(PahtImage.messageIcon)),
                ),
                const SizedBox(height: 10),
                FormFiledWidget(
                  validate: (value) {
                    return LoginScreen.validatePassword(value);
                  },
                  hintText: 'password',
                  pref: Image(image: AssetImage(PahtImage.lockIcon)),
                ),
                const SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                        activeColor: const Color(0xffF67952),
                        value: true,
                        onChanged: (value) {},
                      ),
                    ),
                    const Text('I accept all the ',
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                    const Text(
                      'Terms & Conditions',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )
                  ],
                ),
                ContainerWidgetButtontext(
                  width: 218,
                  padding: const EdgeInsets.only(top: 17, bottom: 0),
                  textWidget: 'Sign Up',
                  style: const TextStyle(color: Colors.white),
                  bacgroundColorss: const Color(0xffF67952),
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      //   print('Email $_eamil $_password');
                      navigatorPushReplac(context, '/Home');
                      //   AppRouter.goToAndRemove(screenName: '/Home');
                    }
                  },
                ),
                DividerWidget(),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 100, left: 92, top: 23, bottom: 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonIcons(image: PahtImage.fecbookIcon),
                      const SizedBox(width: 43),
                      ButtonIcons(image: PahtImage.googleIcon),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                        onTap: () {
                          navigatorPushReplac(context, '/Login');
                          //  AppRouter.goToAndRemove(screenName: '/Login');
                        },
                        child: const Text('Log In'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
