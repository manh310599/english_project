import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showDiaLogCustom(context,String? title,content) =>
    showDialog(

      context: context,
      builder: (context) {
        return  CupertinoAlertDialog(
          title: Center(child: Text(title ?? '')),
          content: Center(child: Text(content ?? '')),
          insetAnimationCurve: Curves.bounceIn,
        );
      },
    );