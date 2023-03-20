import 'package:flutter/material.dart';

navigatorPush(context, widget) => Navigator.push(context, widget);
navigatorPushReplac(context, widget) =>
    Navigator.pushReplacementNamed(context, widget);

navigatorPop(context) => Navigator.pop(context);
