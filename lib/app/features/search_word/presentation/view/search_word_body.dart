import 'dart:io';

import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../common/cubit/information_card/information_card_cubit.dart';

class SearchWordBody extends StatelessWidget {
  const SearchWordBody({super.key, required this.state});

  final InformationCardState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<InformationCardCubit>();
    return state.apiStatus == ApiStatus.success
        ? Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DropdownButton<int?>(
                value: state.idStorageWord,
                items: state.data?.map<DropdownMenuItem<int?>>(
                  (e) {
                    return DropdownMenuItem<int?>(
                      value: e?.id,
                      child: e?.name?.text.make() ?? ''.text.make(),
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  context.read<InformationCardCubit>().changeId(value!);
                },
              ),
              state.translate?.sentences?[0].orig?.text.orange500
                      .size(big)
                      .make() ??
                  'Vocabulary'.text.make(),
              Gaps.vGap10,
              ListView.separated(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      '👉🏻'.text.make(),
                      Gaps.hGap4,
                      state.translate?.dict?[0].terms?[index]?.text.make() ??
                          '${state.translate?.sentences?[0].trans}'.text.make(),
                    ],
                  );
                },
                itemCount: state.translate?.dict?[0].terms?.length ?? 1,
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) {
                  return Gaps.vGap4;
                },
              ),
              Gaps.vGap8,
              state.imageFromText!.results!.isNotEmpty
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        // Số cột
                        crossAxisSpacing: 10,
                        // Khoảng cách giữa các cột theo chiều ngang
                        mainAxisSpacing:
                            10, // Khoảng cách giữa các cột theo chiều dọc
                      ),
                      itemBuilder: (context, index) {
                        if (index == 20) {
                          return InkWell(
                            onTap: () async {
                              cubit.selectImageFromGradle();
                            },
                            child: state.filePath.isNotEmptyAndNotNull
                                ? Image.file(
                                    File(state.filePath!),
                                    fit: BoxFit.cover,
                                  ).opacity25()
                                : Image.asset(
                                    'assets/images/select_image.png',
                                    fit: BoxFit.cover,
                                  ),
                          );
                        } else {
                          return state.itemSelect == index
                              ? Image.network(
                                  state.imageFromText?.results?[index].urls
                                          ?.small ??
                                      'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png',
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Image.asset(
                                    'assets/images/logo.png',
                                  ),
                                ).opacity25()
                              : InkWell(
                                  onTap: () {
                                    context
                                        .read<InformationCardCubit>()
                                        .selectImage(index);
                                  },
                                  child: Image.network(
                                    state.imageFromText?.results?[index].urls
                                                ?.small.isNotEmptyAndNotNull ==
                                            true
                                        ? state.imageFromText?.results![index]
                                                .urls?.small ??
                                            'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png'
                                        : 'https://icon-library.com/images/no-data-icon/no-data-icon-10.jpg',
                                    fit: BoxFit.cover,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            Image.asset(
                                      'assets/images/logo.png',
                                    ),
                                  ),
                                );
                        }
                      },
                      itemCount: 21,
                      shrinkWrap: true,
                    ).flexible()
                  : const SizedBox(),
            ],
          ).px16()
        : const SizedBox();
  }
}
