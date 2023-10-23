import 'dart:math';

import 'package:english_project/all_file/all_file.dart';
import 'package:flutter/material.dart';

class FlipCardController {
  _FlipCardWidgetState? _state;

  Future flipCard() async => _state?.flipcard();
}

class FlipCardWidget extends StatefulWidget {
  const FlipCardWidget({
    super.key,
    required this.front,
    required this.back,
    required this.controller,
  });

  final Widget front;
  final Widget back;
  final FlipCardController controller;

  @override
  State<FlipCardWidget> createState() => _FlipCardWidgetState();
}

class _FlipCardWidgetState extends State<FlipCardWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isFront = true;
  double anglePlus = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    widget.controller._state = this;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();

    super.dispose();
  }

  Future flipcard() async {

    if(controller.isAnimating) return;

    isFront = !isFront;

    await controller.forward(from: 0).then((value) => anglePlus = pi);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        var angle = controller.value * pi;
        if (isFront) angle += anglePlus;
        final transform = Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(angle);

        return Transform(
          transform: transform,
          alignment: Alignment.center,
          child: isFrontCard(angle.abs())
              ? FlashCard(child: widget.front)
              : Transform(
                  transform: Matrix4.identity()..rotateY(pi),
                  alignment: Alignment.center,
                  child: FlashCard(child: widget.back),
                ),
        );
      },
    );
  }

  bool isFrontCard(double angle) {
    const degress90 = pi / 2;
    const degress270 = 3 * pi / 2;

    return angle <= degress90 || angle > degress270;
  }
}
