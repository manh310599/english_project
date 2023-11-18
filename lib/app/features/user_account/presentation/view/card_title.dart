import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../font_size.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({
    super.key,
    this.title,
    this.callback,
  });

  final String? title;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return CupertinoButtonCustom(
      color: Vx.white,
      click: callback,
      child: Container(
        padding: Vx.m8,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: InkWell(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              '$title'.text.size(medium).make(),
              const Icon(Icons.navigate_next),
            ],
          ).p16(),
        ),
      ),
    );
  }
}
