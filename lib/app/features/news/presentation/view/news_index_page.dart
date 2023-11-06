import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/features/news/presentation/viewmodel/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../gaps.dart';
import '../../../../common/rounding_number.dart';

class NewsIndexPage extends StatelessWidget {
  const NewsIndexPage({super.key, required this.state});

 final NewsState state;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 40,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return CupertinoButtonCustom(
              click: () {
                context.read<NewsCubit>().setPage(index);
              },
              color: state.min! / 10 == index ? Colors.amber : Colors.blueAccent,
              child: index.text.bold.make(),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Gaps.hGap4;
          },
          itemCount: state.news?.articles?.isEmpty == false
              ? roundUpAbsolute(state.news!.articles!.length / 10)
              : 0,
        ),
      ),
    );
  }
}
