import 'package:english_project/gaps.dart';
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
    this.againTime,
    this.hardTime,
    this.goodTime,
    this.easyTime,
  });

  final Function() againPressed;
  final Function() hardPressed;
  final Function() goodPressed;
  final Function() easyPressed;

  final String? againTime;
  final String? hardTime;
  final String? goodTime;
  final String? easyTime;

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
        Column(
          children: [
            CupertinoButton(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
              color: Colors.deepOrange.shade900,
              onPressed: widget.againPressed,
              child: 'Học lại'.text.center.bold.size(12).make(),

            ),
            Gaps.vGap4,
            widget.againTime?.text.make() ?? ''.text.make(),
          ],
        ),
        Column(
          children: [
            CupertinoButton(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
              color: Colors.orange,
              onPressed: widget.hardPressed,
              child: 'Khó'.text.center.bold.size(12).make(),
            ),
            Gaps.vGap4,
            widget.hardTime?.text.make() ?? ''.text.make(),
          ],
        ),
        Column(
          children: [
            CupertinoButton(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
              color: Colors.green,
              onPressed: widget.goodPressed,
              child: 'Tốt'.text.center.bold.size(12).make(),
            ),
            Gaps.vGap4,
            widget.goodTime?.text.make() ?? ''.text.make(),
          ],
        ),
        Column(
          children: [
            CupertinoButton(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 8),
              color: Colors.blueAccent,
              onPressed: widget.easyPressed,
              child: 'dễ'.text.center.bold.size(12).make(),
            ),
            Gaps.vGap4,
            widget.easyTime?.text.make() ?? ''.text.make(),
          ],
        ),
      ],
    ).h8(context);
  }
}
