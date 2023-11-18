import 'package:auto_route/annotations.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/app/features/user_account/presentation/view/card_title.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../dimens.dart';

@RoutePage()
class UserAccountPage extends StatelessWidget {
  const UserAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckauthBloc, CheckauthState>(
      builder: (context, state) {
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
                        state.user?.displayName?.text.size(big).make() ??
                            ''.text.make(),
                        Gaps.vGap8,
                        state.user?.email?.text.size(medium).make() ??
                            ''.text.make(),
                        Gaps.vGap8,
                        '🔥'.text.size(big).make(),
                        Gaps.vGap8,

                      ],
                    ).expand(),
                  ],
                ),
                Gaps.vGap10,
                CardTitle(
                  title: 'Chỉnh sửa thông tin cá nhân',
                  callback: () {
                  },
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
                  callback: () {
                    context
                        .read<CheckauthBloc>()
                        .add(const CheckauthEvent.logOut());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
