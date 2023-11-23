import 'package:auto_route/annotations.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/qr.jpg'),
          Gaps.vGap8,
          'Hãy chuyển tiền kèm với ID của bạn nhé'.text.size(30).color(Colors.greenAccent).make(),
          Gaps.vGap8,
          '20.000 / 1 tháng'.text.size(big).make(),
          Gaps.vGap8,
          '150.000 / 1 năm'.text.size(big).make(),
        ],
      ),
    );
  }
}
