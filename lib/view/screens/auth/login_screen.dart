// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:task_342/controller/shared/sharedPref.dart';
import 'package:task_342/routes/app_router.dart';
import 'package:task_342/view/widgets/commoned/formFiledWidget.dart';
import 'package:task_342/view/widgets/commoned/path/path_image.dart';
import 'package:task_342/view/widgets/homeWidget/layout_screen.dart';
import 'package:task_342/view/widgets/loginWidgets/buttonWidget.dart';
import 'package:task_342/view/widgets/loginWidgets/divider.dart';
import 'package:task_342/view/widgets/loginWidgets/social_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  String? _password;

  String? _eamil;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 20, right: 20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(
                  PahtImage.logo,
                  //  width: 54,
                  height: 62,
                  width: MediaQuery.of(context).size.width / 6.3,
                ),
                const SizedBox(height: 38),
                const Text(
                  'Login',
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 30),
                FormFiledWidget(
                  validate: (value) {
                    return validateEmail(value);
                  },
                  controller: emailController,
                  hintText: 'Email',
                  Type: TextInputType.visiblePassword,
                  pref: Image(image: AssetImage(PahtImage.messageIcon)),
                ),
                const SizedBox(height: 16),
                FormFiledWidget(
                  validate: (value) {
                    return validatePassword(value);
                  },
                  controller: passwordController,
                  hintText: 'password',
                  Type: TextInputType.visiblePassword,
                  pref: Image(image: AssetImage(PahtImage.lockIcon)),
                ),
                const SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Text('Forgot password?')],
                ),
                ContainerWidgetButtontext(
                  width: 218,
                  padding: const EdgeInsets.only(top: 17),
                  textWidget: 'Login',
                  style: const TextStyle(color: Colors.white),
                  bacgroundColorss: const Color(0xffF67952),
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      print('Email $emailController $_password');
                      preformLogin(context);
                      // navigatorPushReplac(context, '/Layout');
                    }
                  },

                  //  ontap: () => preformLogin(),
                ),
                DividerWidget(),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 32, right: 100, left: 92, bottom: 52),
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
                      'Don’t have an account ?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        navigatorPushReplac(context, '/SignUp');
                        //   AppRouter.goToAndRemove(screenName: '/SignUp');
                      },
                      child: const Text('Sign Up'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  preformLogin(context) {
    if (checkData()) {
      login(context);
    }
  }

  bool checkData() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  login(context) async {
    await SharedPrefController().save(email: emailController.text);
    Future.delayed(const Duration(seconds: 2), () {
      navigatorPush(context, '/Layout');
    });
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    if (!RegExp(r'^(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[0-9]).{8,}$')
        .hasMatch(value)) {
      return 'Password must contain at least one uppercase letter, one lowercase letter, and one number';
    }
    return null;
  }
}

enum PreFKey { loggedIn, emil }
