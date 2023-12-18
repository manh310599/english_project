import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/news/presentation/viewmodel/news_cubit.dart';
import 'package:english_project/dimens.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({super.key, required this.state});

  final NewsState state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        EditText(
          preIcon: const Icon(Icons.cleaning_services_sharp),
          icon: const Icon(Icons.search),
          search: (data) {
            context.read<NewsCubit>().searchNews(data ,context);
          },
          hinText: 'tìm kiếm',
        ).expand(),
        // IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.local_fire_department,
        //       size: Dimens.ic_XL2,
        //     )),
        // IconButton(
        //     onPressed: () {},
        //     icon: const Icon(
        //       Icons.notifications,
        //       size: Dimens.ic_XL2,
        //     ))
      ],
    ).px16();
  }
}
