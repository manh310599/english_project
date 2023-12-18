import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:english_project/use_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'check_internet.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key, this.stateAuth, this.firstUse});

  final CheckauthState? stateAuth;
  final bool? firstUse;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        NewsRoute(stateAuth: widget.stateAuth),
        SearchWordRoute(),
        LearnVocabularyRoute(),
        FavoriteNewsRoute(premium: widget.stateAuth?.premium ?? false),
        UserAccountRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

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
          child: Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              fixedColor: Colors.yellowAccent,
              currentIndex: tabsRouter.activeIndex,
              onTap: (value) {
                tabsRouter.setActiveIndex(value);
              },
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Colors.black,
                  icon: Icon(
                    key: HowToUseApp.newsPage,
                    Icons.newspaper,
                    color: Colors.white,
                  ),
                  label: 'Trang chủ',
                ),
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.content_paste_search,
                      color: Colors.white,
                    ),
                    label: 'Tra từ'),
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.book,
                      color: Colors.white,
                    ),
                    label: 'Học từ'),
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    label: 'Yêu thich'),
                const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                    ),
                    label: 'Tài khoản'),
              ],
            ),
          ),
        );
      },
    );
  }
}
