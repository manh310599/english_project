import 'dart:convert';

import 'package:english_project/app/common/date_time_format.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/course/viewmodel/course_cubit.dart';
import 'package:english_project/font_size.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../../gaps.dart';

class BodyDialog extends StatelessWidget {
  const BodyDialog({super.key, required this.state, required this.index});

  final CourseState state;
  final int index;

  @override
  Widget build(BuildContext context) {
    final result = state.data?[index]?.mean
        ?.substring(1, state.data![index]!.mean!.length - 1);
    final List<String?> listMean = result!.split(',');
    return Column(
      children: [
        state.data?[index]?.word?.text.size(big).color(Vx.orange500).make() ??
            ''.text.size(big).make(),
        Gaps.vGap8,
        Image.network(
          state.data?[index]?.image ?? '',
          height: 100,
          width: 100,
          fit: BoxFit.fill,
          errorBuilder: (context, error, stackTrace) {
            return Image.memory(
              const Base64Decoder().convert(state.data![index]!.assets_image!),
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            );
          },
        ).cornerRadius(8),
        ListView.builder(
          itemBuilder: (context, index) {
            return Row(
              children: [
                '👉🏻'.text.make(),
                Gaps.hGap4,
                listMean[index]?.text.make() ?? ''.text.make(),
              ],
            );
          },
          itemCount: listMean.length,
          shrinkWrap: true,
        ).p8(),
        'Lập lại vào ngày ${formattedDateTime(state.data![index]!.end_time!)}'.text.color(Colors.blue).make(),
      ],
    ).p16();
  }
}
