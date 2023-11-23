import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/database/query_database.dart';
import 'package:english_project/app/features/news/core/abs_repo/abs_news_repo.dart';
import 'package:english_project/app/features/news/model/news_model.dart';
import 'package:english_project/depedence.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_cubit.freezed.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(const NewsState());

  NewsRepo newReponsitory = getIt<NewsRepo>();
  QueryDatabase queryDatabase = QueryDatabase();
  late NewModel? temp;
  Future<void> getNewsUpdate() async {
    temp = null;
    final data = await newReponsitory.getNewsUpdate();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getBBCNews() async {
    temp = null;
    final data = await newReponsitory.getHeadLinesBBCNew();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getCNNNews() async {
    temp = null;
    final data = await newReponsitory.getHeadLinesCNNNews();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getFoxNews() async {
    temp = null;
    final data = await newReponsitory.getHeadLinesFoxNews();
    emit(state.copyWith(news: data, min: 0));
  }

  // Future<void> getGoogleNews() async {
  //   final data = await newReponsitory.getHeadLinesGoogleNews();
  //   emit(state.copyWith(news: data, min: 0));
  // }

  Future<void> getNewsBusiness() async {
    temp = null;
    final data = await newReponsitory.getNewsBusiness();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsEntertainment() async {
    temp = null;
    final data = await newReponsitory.getNewsEntertainment();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsGeneral() async {
    temp = null;
    final data = await newReponsitory.getNewsGeneral();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsHealth() async {
    temp = null;
    final data = await newReponsitory.getNewsHealth();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsScience() async {
    temp = null;
    final data = await newReponsitory.getNewsScience();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsSports() async {
    temp = null;
    final data = await newReponsitory.getNewsSports();
    emit(state.copyWith(news: data, min: 0));
  }

  Future<void> getNewsTechnology() async {
    temp = null;
    final data = await newReponsitory.getNewsTechnology();
    emit(state.copyWith(news: data, min: 0));
  }

  setPage(int page) {
    emit(state.copyWith(min: page * 10));
  }

  Future<void> saveFavoriteNews(int news) async {
    queryDatabase.addFavoriteNews(
      state.news?.articles?[state.min! + news].title,
      state.news?.articles?[state.min! + news].description,
      state.news?.articles?[state.min! + news].url,
      state.news?.articles?[state.min! + news].urlToImage,
    );

  }

  Future<void> searchNews(String? title, BuildContext context) async {
    temp ??= state.news;
    if (title?.isEmpty == true) {
      AwesomeDialog(
          context: context,
          title: 'bạn phải nhập vào mội dung',
          dialogType: DialogType.error,
          btnOkOnPress: () {

          },
      ).show();
    } else {


      NewModel? news = NewModel(articles: temp?.articles
          ?.where((element) => element.title!.toLowerCase().contains(title!.toLowerCase()))
          .toList() ?? []);

      print(temp);

      emit(state.copyWith(news: news, min: 0));
    }
  }

}

