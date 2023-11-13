import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/cubit/information_card/information_card_cubit.dart';
import 'package:english_project/font_size.dart';
import 'package:english_project/gaps.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../../all_file/all_file.dart';

class NewsSearchBottomSheet extends StatelessWidget {
  const NewsSearchBottomSheet({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InformationCardCubit()..searchWord(query),
      child: BlocBuilder<InformationCardCubit, InformationCardState>(
        builder: (context, state) {
          final cubit = context.read<InformationCardCubit>();
          return state.apiStatus == ApiStatus.success
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            context.popRoute();
                          },
                          icon: const Icon(Icons.close),
                          color: Colors.red,
                        ),
                        DropdownButton<int?>(
                          value: state.idStorageWord ?? state.data?[0]?.id,
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
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.save),
                          color: Colors.green,
                        ),
                      ],
                    ),
                    state.translate?.sentences?[0].orig?.text.orange500
                            .size(big).softWrap(true)
                            .make() ??
                        'Vocabulary'.text.make(),
                    Gaps.vGap10,
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        '👉🏻'.text.make(),
                        Gaps.hGap4,
                        state.translate?.sentences?[0].trans?.text.softWrap(true).make().flexible() ??
                            ''.text.make().flexible(),
                      ],
                    ),
                    Gaps.vGap4,
                    ListView.separated(
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            '👉🏻'.text.make(),
                            Gaps.hGap4,
                            state.translate?.dict?[0].terms?[index]?.text.softWrap(true)
                                    .make().flexible()  ??
                                '${state.translate?.sentences?[0].trans}'
                                    .text
                                    .make().flexible() ,
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
                        : const SizedBox(
                            height: 0,
                          ),
                  ],
                ).px16()
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const LinearProgressIndicator(
                        color: Vx.white,
                      ),
                      Gaps.vGap16,
                      'đang tải dữ liệu xin vui lòng chờ'.text.make()
                    ],
                  ),
                ).px16();
        },
      ),
    );
  }
}
