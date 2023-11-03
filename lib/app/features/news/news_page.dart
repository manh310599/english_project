import 'package:auto_route/annotations.dart';
import 'package:english_project/app/common/widget/button/cupertino_button.dart';
import 'package:english_project/app/common/widget/button/image_button.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:english_project/app/features/news/presentation/view/news_body.dart';
import 'package:english_project/dimens.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(

          children: [
            Row(
              children: [
                EditText(icon: Icon(Icons.search),hinText: 'tìm kiếm',).flexible(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.local_fire_department,
                      size: Dimens.ic_XL2,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      size: Dimens.ic_XL2,
                    ))
              ],
            ),
            SingleChildScrollView(
              scrollDirection: axisDirectionToAxis(AxisDirection.left),
              child: Row(
                children: [
                  CupertinoButtonEdit(
                      text: 'TechCrunch',textColor: Colors.black, onPressed: () {}),
                  CupertinoButtonEdit(
                      text: 'Tesla',textColor: Colors.black, onPressed: () {}),
                  CupertinoButtonEdit(
                      text: 'Apple news',textColor: Colors.black, onPressed: () {}),
                  CupertinoButtonEdit(
                      text: 'Business',textColor: Colors.black, onPressed: () {}),
                  CupertinoButtonEdit(
                      text: 'Wall Street Journal',textColor: Colors.black, onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(child: NewsBody()).expand()
          ],
        ),
      ),
    );
  }
}
