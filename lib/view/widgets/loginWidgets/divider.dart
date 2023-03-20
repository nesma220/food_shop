import 'package:flutter/material.dart';

DividerWidget() => Padding(
      padding: const EdgeInsets.only(left: 71, right: 71, top: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            child: Divider(
              endIndent: 5,
              indent: 5,
              thickness: 1,
              color: Color(0xff818181),
            ),
          ),
          SizedBox(width: 19),
          Text('or'),
          SizedBox(width: 19),
          Expanded(
            child: Divider(
              endIndent: 2,
              indent: 2,
              thickness: 1,
              color: Color(0xff818181),
            ),
          ),
        ],
      ),
    );
