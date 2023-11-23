import 'package:auto_route/auto_route.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/app/features/user_account/presentation/view/card_title.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class UserAccountPage extends StatelessWidget {
  const UserAccountPage({
    super.key,
  });

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
                    Image.network(
                      state.user?.photoURL ??
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Anonymous_emblem.svg/1200px-Anonymous_emblem.svg.png',
                      width: 100,
                      height: 100,
                    ).cornerRadius(100),
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
                    context.pushRoute(CustomInformationRoute(
                        time: state.idUser?.finalDayPremium ?? 0));
                  },
                ),
                Gaps.vGap10,
                CardTitle(
                  title: 'Mở khóa bản pro không quảng cáo',
                  callback: () {
                    context.pushRoute(const PremiumRoute());
                  },
                ),
                Gaps.vGap10,
                CardTitle(
                  title: 'Hãy tham gia cùng bọn mình',
                  callback: () async {
                    await launchUrl(Uri.parse(
                        'https://www.facebook.com/groups/693049622799187'));
                  },
                ),
                Gaps.vGap10,
                CardTitle(
                  title: state.premium == true
                      ? 'Người dùng: VIP'
                      : 'Người dùng: FREE',
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
                Gaps.vGap10,
                CardTitle(
                  title: 'Thoát',
                  callback: () {
                    SystemNavigator.pop();
                  },
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.endContained,
          floatingActionButton: state.bannerAd != null
              ? SizedBox(
                  height: 60,
                  child: AdWidget(ad: state.bannerAd!),
                )
              : const SizedBox(),
        );
      },
    );
  }
}
