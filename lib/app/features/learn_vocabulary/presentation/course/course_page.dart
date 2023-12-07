import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:english_project/app/app_route/app_route.gr.dart';
import 'package:english_project/app/common/rounding_number.dart';
import 'package:english_project/app/common/widget/button/cupertion_button_custom.dart';
import 'package:english_project/app/common/widget/image/image_cache.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/course/view/body_dialog_widget.dart';
import 'package:english_project/app/features/learn_vocabulary/presentation/course/viewmodel/course_cubit.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../all_file/all_file.dart';

@RoutePage()
class CoursePage extends StatelessWidget {
  const CoursePage({
    super.key,
    this.name,
    this.id,
  });

  final int? id;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CourseCubit()..getListWordsById(id!),
      child: BlocBuilder<CourseCubit, CourseState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.blueGrey,
            appBar: AppBar(
              title: 'Từ vựng $name'.text.bold.make(),
              centerTitle: true,
              actions: [
                CupertinoButtonCustom(
                    color: Vx.white,
                    click: () {
                      context.navigateTo(const SearchWordRoute());
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.blueAccent,
                    )).px8().py8()
              ],
            ),
            body: state.data?.isNotEmpty == true
                ? ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return CupertinoButtonCustom(
                        color: Vx.white,
                        click: () {
                          AwesomeDialog(
                            context: context,
                            title: 'Thông tin của thẻ',
                            body: BodyDialog(
                              state: state,
                              index: state.min! + index,
                            ),
                            btnOkText: 'Đóng',
                            btnOkOnPress: () {},
                            btnCancelText: 'Xóa',
                            btnCancelOnPress: () {
                              context.read<CourseCubit>().deleteWord(state.data?[state.min! + index]?.word ?? '',context);
                            },
                          ).show();
                        },
                        child: Row(
                          children: [
                            ImageCacheCustom(
                              url: state.data?[state.min! + index]?.image ?? '',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                              errorBuilder: (context, error, stackTrace) {
                                return Image.memory(
                                  const Base64Decoder().convert(state
                                      .data?[state.min! + index]?.
                                      assets_image ?? ''),
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.fill,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const SizedBox();
                                  },
                                );
                              },
                            ).cornerRadius(8),
                            Gaps.hGap8,
                            Center(
                              child: state.data?[state.min! + index]?.word?.text
                                      .bold.black
                                      .size(big)
                                      .make() ??
                                  'title'.text.bold.black.make(),
                            ).expand(),
                          ],
                        ),
                      ).p16();
                    },
                    itemCount: state.data?.isNotEmpty == true
                        ? ((state.data!.length - state.min!.toInt()) >= 20
                        ? 20
                        : (state.data!.length - state.min!.toInt()))
                        : 0,
                  )
                : Center(
                    child: 'Dường như khóa học chưa có từ vựng hay thêm từ vựng'
                        .text
                        .make(),
                  ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startFloat,
            floatingActionButton: SizedBox(
              height: 40,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return CupertinoButtonCustom(
                      click: () {
                        context.read<CourseCubit>().setPage(index);
                      },
                      color: state.min! / 20 == index
                          ? Colors.amber
                          : Colors.blueAccent,
                      child: index.text.bold.make(),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Gaps.hGap4;
                  },
                  itemCount: state.data?.isEmpty == false
                      ? roundUpAbsolute(state.data!.length / 20)
                      : 0,
                ),
              ),
            ).px16(),
          );
        },
      ),
    );
  }
}
