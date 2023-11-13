// import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../font_size.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return CupertinoButtonCustom(
          color: Vx.white,
          click: () async {},
          child: Row(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 100,
                width: 100,
              ),
              Gaps.hGap8,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  'title'.text.size(small).make() ??
                      'title'.text.bold.black.make(),
                  Gaps.vGap12,
                  ' content'.text.black.size(small).make(),
                ],
              ).expand()
            ],
          ).p8(),
        );
      },
      itemCount: 5,
      shrinkWrap: true,
      separatorBuilder: (BuildContext context, int index) {
        return Gaps.vGap16;
      },
    ).px16();
  }
}
