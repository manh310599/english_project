import 'package:flutter/cupertino.dart';

class CupertinoButtonCustom extends StatelessWidget {
  const CupertinoButtonCustom({
    super.key,
    required this.child,
    this.click,
    this.color,
  });

  final Widget child;
  final VoidCallback? click;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: click,
      color: color,
      padding: const EdgeInsets.all(0),
      child: child,
    );
  }
}
