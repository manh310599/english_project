import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/features/news/presentation/view/news_body.dart';
import 'package:english_project/app/features/news/presentation/view/news_catelogy.dart';
import 'package:english_project/app/features/news/presentation/view/news_header.dart';
import 'package:english_project/app/features/news/presentation/view/news_index_page.dart';
import 'package:english_project/app/features/news/presentation/viewmodel/news_cubit.dart';
import 'package:english_project/use_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../app_route/app_route.gr.dart';
import '../auth/presentation/check_user/viewmodel/checkauth_bloc.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key, this.stateAuth});

  final CheckauthState? stateAuth;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        AwesomeDialog(
          context: context,
          title: 'Bạn có muốn thoát ứng dung',
          btnOkText: 'Thoát',
          btnCancelText: 'Ở lại',
          btnCancelOnPress: () => false,
          btnOkOnPress: () => SystemNavigator.pop(),
        ).show();
        return false;
      },
      child: BlocBuilder<CheckauthBloc, CheckauthState>(
        builder: (context, auth) {
          return BlocProvider(
            create: (context) =>
            NewsCubit(context.read<CheckauthBloc>())
              ..getNewsUpdate()
              ..getPremium(auth.premium)
              ..loadReWardedAd(context)
              ..getGift(auth.gift),
            child: BlocBuilder<NewsCubit, NewsState>(
              builder: (context, state) {
                final cubit = context.read<NewsCubit>();

                return Scaffold(
                  body: SafeArea(
                    child: Column(
                      children: [
                        NewsHeader(state: state),
                        NewsType(state: state),
                        SizedBox(

                            child: NewsBody(
                              premium: auth.premium,
                              state: state,
                            )).expand(),
                        NewsIndexPage(state: state),
                      ],
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () async {
                      print('vvv ${auth.premium} ${state.checkAD}');
                      if (context.mounted) {
                        auth.premium != true &&
                            state.checkAD == 0
                            ? await Dialogs.materialDialog(
                            color: Colors.black,
                            msgAlign: TextAlign.center,
                            msg:
                            'Đây là chính năng nâng cao bạn phải mua hoặc chỉ đơn'
                                ' giản là xem quảng cáo để ủng hộ chúng tôi',
                            title:
                            'Tính năng tra bất kì trang web nào và đọc chữ file pdf',
                            lottieBuilder: Lottie.asset(
                              'assets/animation/premium.json',
                              fit: BoxFit.contain,
                            ),
                            context: context,
                            actions: [
                              IconsButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  context.pushRoute(const PremiumRoute());

                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                text: 'Nâng cấp',
                                iconData: Icons.workspace_premium,
                                color: Colors.red,
                                textStyle: const TextStyle(color: Colors.white),
                                iconColor: Colors.white,
                              ),
                              IconsButton(
                                onPressed: () async {
                                  await cubit
                                      .showAD()
                                      .whenComplete(
                                          () => Navigator.of(context).pop())
                                      .whenComplete(() =>
                                      AwesomeDialog(
                                        context: context,
                                        btnOkText: "OK",
                                        title:
                                        "Cảm ơn bạn đã xem quảng cáo bạn sẽ có 1"
                                            " giờ sử dụng chức năng cao cấp",
                                        dialogType: DialogType.success,
                                        btnOkOnPress: () {
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                        },
                                      ).show());
                                },
                                text: 'Xem quảng cáo',
                                iconData: Icons.movie_creation_outlined,
                                color: Colors.blue,
                                textStyle: const TextStyle(color: Colors.white),
                                iconColor: Colors.white,
                              ),
                            ])
                            : AwesomeDialog(
                          context: context,
                          btnCancelText: 'PDF',
                          btnOkText: "Google",
                          title: "Chọn cách học",
                          btnCancelOnPress: () {
                            context.pushRoute(const PDFRoute());
                          },
                          btnOkOnPress: () {
                            context.pushRoute(NewsReadRoute(
                                url: "https://www.google.com/",
                                choice: 1,
                                premium: auth.premium
                            ));
                            FocusManager.instance.primaryFocus?.unfocus();
                          },
                        ).show();
                      }
                    },
                    backgroundColor: Colors.purpleAccent,
                    child: const Icon(Icons.web_rounded),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
