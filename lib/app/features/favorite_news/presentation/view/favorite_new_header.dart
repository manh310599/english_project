import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/favorite_news/presentation/viewmodel/favorite_news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../dimens.dart';

class FavoriteNewsHeader extends StatelessWidget {
  const FavoriteNewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteNewsCubit, FavoriteNewsState>(
      builder: (context, state) {
        return Row(
          children: [
            EditText(
              preIcon: const Icon(Icons.cleaning_services_sharp),
              icon: const Icon(Icons.search),
              hinText: 'tìm kiếm',
              search: (data) {
                context.read<FavoriteNewsCubit>().searchNews(data);
              },
            ).expand(),

          ],
        );
      },
    ).px16();
  }
}
