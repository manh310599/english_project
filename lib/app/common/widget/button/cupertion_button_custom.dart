import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonCustom extends StatelessWidget {
  const CupertinoButtonCustom({
    super.key,
    required this.child,
    this.click,
    this.color, this.press,
  });

  final Widget child;
  final VoidCallback? click;
  final Color? color;
  final GestureLongPressCallback? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: press,
      child: CupertinoButton(
        onPressed: click,
        color: color,
        padding: const EdgeInsets.all(0),
        child: child,
      ),
    );
  }
}
