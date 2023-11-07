import 'package:auto_route/annotations.dart';
// import 'package:english_project/app/common/widget/button/cupertino_button.dart';
// import 'package:english_project/app/common/widget/button/image_button.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/favorite_news/presentation/view/favorite_body.dart';
// import 'package:english_project/app/features/news/presentation/view/news_body.dart';
import 'package:english_project/dimens.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:velocity_x/velocity_x.dart';


@RoutePage()
class FavoriteNewsPage extends StatelessWidget {
  const FavoriteNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                EditText(icon: const Icon(Icons.search),hinText: 'tìm kiếm',).flexible(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      size: Dimens.ic_XL2,
                      color: Colors.redAccent,
                    )),
              ],
            ),
            const SizedBox(child: FavoriteBody()).expand()
          ],
        ),

      ),
    );
  }
}
