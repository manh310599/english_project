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
                  context
                      .read<InformationCardCubit>()
                      .changeId(value!);
                },
              ),

              state.translate?.sentences?[0].orig?.text.orange500
                  .size(big)
                  .softWrap(true)
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
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return index ==
                      state.imageFromText!.results!.length
                      ? InkWell(
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
                  )
                      : state.itemSelect == index
                      ? Image.network(
                    '${state.imageFromText?.results?[index].urls!.small}',
                    fit: BoxFit.cover,
                    errorBuilder:
                        (context, error, stackTrace) =>
                        Image.asset(
                          'assets/images/logo.png',
                          fit: BoxFit.cover,
                        ),
                  ).opacity25()
                      : InkWell(
                    onTap: () {
                      context
                          .read<InformationCardCubit>()
                          .selectImage(index);
                    },
                    child: Image.network(
                      '${state.imageFromText?.results?[index].urls!.small}',
                      fit: BoxFit.cover,
                      errorBuilder:
                          (context, error, stackTrace) =>
                          Image.asset(
                            'assets/images/logo.png',
                          ),
                    ),
                  );
                },
                itemCount: state
                    .imageFromText?.results?.isNotEmpty ==
                    true
                    ? (state.imageFromText!.results!.length >= 21
                    ? 20
                    : state.imageFromText!.results!.length + 1)
                    : 0,
                shrinkWrap: true,
              ).flexible()
                  : SizedBox(
                child: Column(
                  children: [
                    'không có hỉnh ảnh trong kho dữ liệu hảy sử dụng hình ảnh của bạn'
                        .text
                        .make(),
                    Gaps.vGap4,
                    InkWell(
                      onTap: () async {
                        cubit.selectImageFromGradle();
                      },
                      child: state.filePath.isNotEmptyAndNotNull
                          ? Image.file(
                        File(state.filePath!),
                        fit: BoxFit.cover,
                        height: 200,
                        width: 200,
                      )
                          : Image.asset(
                        'assets/images/select_image.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ).px16()
        : const SizedBox();
  }
}
