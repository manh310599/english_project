import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:flutter/material.dart';

import 'check_internet.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

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
        const NewsRoute(),
        SearchWordRoute(),
        const LearnVocabularyRoute(),
        const FavoriteNewsRoute(),
        const UserAccountRoute(),
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
                label: 'Đọc báo',
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
