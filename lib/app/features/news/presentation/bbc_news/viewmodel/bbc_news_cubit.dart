// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:english_project/app/features/news/presentation/bbc_news/model/bbc_news_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bbc_news_state.dart';
part 'bbc_news_cubit.freezed.dart';

class BbcNewsCubit extends Cubit<BbcNewsState> {
  BbcNewsCubit() : super(const BbcNewsState());

  Future<void> test() async {

  }
}
