import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/features/news/presentation/viewmodel/news_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/button/cupertino_button.dart';

class NewsType extends StatelessWidget {
  const NewsType({super.key, required this.state});

  final NewsState state;

  @override
  Widget build(BuildContext context) {
    final newsCubit =  context.read<NewsCubit>();
    return SingleChildScrollView(
      scrollDirection: axisDirectionToAxis(AxisDirection.left),
      child: Row(
        children: [
          CupertinoButtonEdit(
              text: 'Báo mới cập nhật',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getNewsUpdate();
              }),
          CupertinoButtonEdit(
              text: 'BBC-News',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getBBCNews();
              }),
          CupertinoButtonEdit(
              text: 'CNN',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getCNNNews();
              }),
          CupertinoButtonEdit(
              text: 'Fox News',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getFoxNews();
              }),

          CupertinoButtonEdit(
              text: 'Doanh nghiệp',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getNewsBusiness();
              }),
          CupertinoButtonEdit(
              text: 'Sức khỏe',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getNewsHealth();
              }),
          CupertinoButtonEdit(
              text: 'Giải trí',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getNewsEntertainment();
              }),
          CupertinoButtonEdit(
              text: 'Tổng hơp',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getNewsGeneral();
              }),
          CupertinoButtonEdit(
              text: 'Khoa học',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getNewsScience();
              }),
          CupertinoButtonEdit(
              text: 'Thể thao',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getNewsSports();
              }),
          CupertinoButtonEdit(
              text: 'Công nghệ',
              textColor: Colors.black,
              onPressed: () {
                newsCubit.getNewsTechnology();
              }),
        ],
      ),
    );
  }
}
