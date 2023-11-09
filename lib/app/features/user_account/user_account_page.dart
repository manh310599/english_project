import 'package:auto_route/annotations.dart';
import 'package:english_project/app/features/user_account/presentation/view/card_title.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../dimens.dart';

@RoutePage()
class UserAccountPage extends StatelessWidget {
  const UserAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.vGap10,
            Row(
              children: [
                Gaps.hGap10,
                Image.asset(
                  'assets/images/logo.png',
                ).circle(radius: Dimens.layout_S),
                Gaps.hGap10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    'tên'.text.size(big).make(),
                    Gaps.vGap8,
                    'email'.text.size(big).make(),
                    Gaps.vGap8,
                    '🔥'.text.size(big).make()
                  ],
                ).expand(),
              ],
            ),
            Gaps.vGap10,
            const CardTitle(
              title: 'Chỉnh sửa thông tin cá nhân',
            ),
            Gaps.vGap10,
            const CardTitle(
              title: 'Mở khóa bản pro không quảng cáo',
            ),
            Gaps.vGap10,
            const CardTitle(
              title: 'Hãy tham gia cùng bọn mình',
            ),
            Gaps.vGap10,
            CardTitle(
              title: 'Đăng xuất',
              callback: () async {
                var db = await openDatabase('assets/database/storage.db');
                print(db.path);

              },
            ),
          ],
        ),
      ),
    );
  }
}
