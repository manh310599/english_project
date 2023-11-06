import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/features/news/core/abs_repo/abs_news_repo.dart';
import 'package:english_project/app/features/news/model/news_model.dart';
import 'package:english_project/depedence.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_cubit.freezed.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(const NewsState());

  NewsRepo newReponsitory = getIt<NewsRepo>();

  Future<void> getNewsUpdate() async {
    final data = await newReponsitory.getNewsUpdate();
    emit(state.copyWith(news: data,min: 0));
  }

  Future<void> getBBCNews() async {
    final data = await newReponsitory.getHeadLinesBBCNew();
    emit(state.copyWith(news: data,min: 0));
  }

  Future<void> getCNNNews() async {
    final data = await newReponsitory.getHeadLinesCNNNews();
    emit(state.copyWith(news: data,min: 0));
  }

  Future<void> getFoxNews() async {
    final data = await newReponsitory.getHeadLinesFoxNews();
    emit(state.copyWith(news: data,min: 0));
  }

  Future<void> getGoogleNews() async {
    final data = await newReponsitory.getHeadLinesGoogleNews();
    emit(state.copyWith(news: data,min: 0));
  }

  setPage(int page) {
    emit(state.copyWith(min: page * 10));
  }
}
