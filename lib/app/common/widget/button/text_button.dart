import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class TextButtonCustom extends StatelessWidget {
  const TextButtonCustom({
    super.key,
    this.action,
    this.text, this.textColor,
  });

  final VoidCallback? action;
  final String? text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(onPressed: action, child: '$text'.text.color(textColor).make());
  }
}
