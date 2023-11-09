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
    return Container(
      padding: Vx.m8,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          '$title'.text.size(medium).make(),
          IconButton(
            onPressed: callback,
            icon: const Icon(Icons.navigate_next),
          ),
        ],
      ),
    ).flexible();
  }
}
