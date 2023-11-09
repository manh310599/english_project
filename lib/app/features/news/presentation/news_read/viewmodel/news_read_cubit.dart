import 'package:bloc/bloc.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_read_cubit.freezed.dart';

part 'news_read_state.dart';

class NewsReadCubit extends Cubit<NewsReadState> {
  NewsReadCubit() : super(const NewsReadState());

  final ContentBlocker contentBlocker = ContentBlocker(
      trigger: ContentBlockerTrigger(
          urlFilter: 'https://easylist.to/easylist/easylist.txt'),
      action: ContentBlockerAction(type: ContentBlockerActionType.BLOCK));

  Future<void> setPageNews(String url, context) async {
    emit(state.copyWith(contentBlocker: contentBlocker));
  }

  @override
  Future<void> close() {
    // TODO: implement close
    //inAppWebViewController
    return super.close();
  }
}
