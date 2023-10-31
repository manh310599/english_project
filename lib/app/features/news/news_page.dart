import 'package:auto_route/annotations.dart';
import 'package:english_project/app/common/widget/edit_text/edit_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(8, 24, 8, 8),
        child: Column(
          children: [
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: width*.7,
                  height: 70,
                  child: EditText(icon: const Icon(Icons.search),
                    hinText: 'Search news',
                  ),
              ),
              IconButton(onPressed: () {

              }, icon: const Icon(Icons.local_fire_department, size: 35,)),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.notifications, size: 35,))
            ],
            ),
            SingleChildScrollView(
              scrollDirection: axisDirectionToAxis(AxisDirection.right),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton( child: const Text('TechCrunch'), onPressed: () {}),
                  TextButton( child: const Text('Tesla'), onPressed: () {}),
                  TextButton( child: const Text('Apple news'), onPressed: () {}),
                  TextButton( child: const Text('Business'), onPressed: () {}),
                  TextButton( child: const Text('Wall Street Journal'), onPressed: () {}),
                ],
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );




  }
}
