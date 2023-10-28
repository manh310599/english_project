import 'package:english_project/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CupertinoButtonEdit extends StatelessWidget {
  const CupertinoButtonEdit({
    super.key,
    this.color,
    this.text,
    this.onPressed,
    this.textColor,
  });

  final Color? color;
  final String? text;
  final VoidCallback? onPressed;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: Container(
        padding: Dimens.edge_default,
        decoration: BoxDecoration(
          borderRadius: Dimens.rad_border_circular,
          color: color ?? Vx.blue50,
        ),
        child: '$text'.text.bold.color(textColor).make(),
      ),
    );
  }
}
