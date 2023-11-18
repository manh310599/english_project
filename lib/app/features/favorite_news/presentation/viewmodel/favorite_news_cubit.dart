import 'package:bloc/bloc.dart';
import 'package:english_project/app/common/api_status.dart';
import 'package:english_project/app/common/database/query_database.dart';
import 'package:english_project/app/common/model/storage_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_news_state.dart';
part 'favorite_news_cubit.freezed.dart';

class FavoriteNewsCubit extends Cubit<FavoriteNewsState> {
  FavoriteNewsCubit() : super(const FavoriteNewsState());

  QueryDatabase queryDatabase = QueryDatabase();

  Future<void> getFavoriteNews () async {
    final result = await queryDatabase.getFavoriteNews();
    List<News> list = [];
    result?.forEach((element) {
      list.add(News.fromJson(element));
    });
    emit(state.copyWith(apiStatus: ApiStatus.success,news: list));
  }

  Future<void> deleteFavoriteNews (int id) async {
    await queryDatabase.deleteFavoriteNew(id);
    final result = await queryDatabase.getFavoriteNews();
    List<News> list = [];
    result?.forEach((element) {
      list.add(News.fromJson(element));
    });
    emit(state.copyWith(apiStatus: ApiStatus.success,news: list));
  }
}
