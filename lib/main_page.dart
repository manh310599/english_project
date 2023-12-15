import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/features/auth/presentation/check_user/viewmodel/checkauth_bloc.dart';
import 'package:flutter/material.dart';

import 'all_file/all_file.dart';
import 'check_internet.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.stateAuth});
  final CheckauthState stateAuth;
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  void initState() {
    // TODO: implement initState

    getConnect(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes:  [
        NewsRoute(stateAuth: widget.stateAuth),
        SearchWordRoute(),
        LearnVocabularyRoute(),
        FavoriteNewsRoute(premium: widget.stateAuth.premium ?? false),
        UserAccountRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.yellowAccent,
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(
                  Icons.newspaper,
                  color: Colors.white,
                ),
                label: 'Trang chủ',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.content_paste_search,
                    color: Colors.white,
                  ),
                  label: 'Tra từ'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                  label: 'Học từ'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  label: 'Yêu thich'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                  ),
                  label: 'Tài khoản'),
            ],
          ),
        );
      },
    );
  }
}
