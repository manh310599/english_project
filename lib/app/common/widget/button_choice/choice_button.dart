import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChoiceButton extends StatefulWidget {
  const ChoiceButton({
    super.key,
    required this.againPressed,
    required this.hardPressed,
    required this.goodPressed,
    required this.easyPressed,
  });

  final Function() againPressed;
  final Function() hardPressed;
  final Function() goodPressed;
  final Function() easyPressed;

  @override
  State<ChoiceButton> createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {
  double padding = 32;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CupertinoButton(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
          color: Colors.deepOrange.shade900,
          onPressed: widget.againPressed,
          child: 'Học lại'.text.center.bold.size(12).make(),
        ),
        CupertinoButton(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
          color: Colors.orange,
          onPressed: widget.hardPressed,
          child: 'Khó'.text.center.bold.size(12).make(),
        ),
        CupertinoButton(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
          color: Colors.green,
          onPressed: widget.goodPressed,
          child: 'Tốt'.text.center.bold.size(12).make(),
        ),
        CupertinoButton(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
          color: Colors.blueAccent,
          onPressed: widget.easyPressed,
          child: 'dễ'.text.center.bold.size(12).make(),
        ),
      ],
    );
  }
}
