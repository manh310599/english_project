import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/features/learn_vocabulary/learn_vocabulary_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        NewsRoute(),
        LearnVocabularyRoute(),
        FavoriteNewsRoute(),
        UserAccountRoute(),
      ],
      builder: (context, child) {

        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) {
              tabsRouter.setActiveIndex(value);
            },
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.newspaper),
                label: 'Báo Mới'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: 'Học từ'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite,color: Colors.red,),
                  label: 'Yêu thich'
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_rounded),
                  label: 'Tài khoản'
              ),
            ],
          ),
        );
      },
    );
  }
}

