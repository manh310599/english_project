import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../dimens.dart';

class FavoriteNewsHeader extends StatelessWidget {
  const FavoriteNewsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        EditText(
          icon: const Icon(Icons.search),
          hinText: 'tìm kiếm',
        ).expand(),

      ],
    ).px16();
  }
}
