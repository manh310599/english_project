import 'package:english_project/all_file/all_file.dart';
import 'package:english_project/app/features/news/model/articles_model.dart';
import 'package:english_project/app/features/news/model/news_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class NewsUpdateApi {
  Future<NewModel?> getNewsUpdate() async {
    Dio dio;
    final option = BaseOptions(
      baseUrl: 'https://ostabo.github.io/news-api/us/data.json',
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 12),
      sendTimeout: const Duration(seconds: 12),
    );
    dio = Dio(option);
    dio.interceptors.add(
      PrettyDioLogger(
          error: true,
          compact: true,
          responseHeader: true,
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true),
    );

    final getJson = await dio.get('');
    final data = NewModel.fromJson(getJson.data);
    List<Articles> filteredArticles = List.from(data.articles ?? []);
    filteredArticles
        .removeWhere((element) => element.url == 'https://removed.com');

    return data.copyWith(articles: filteredArticles);
  }
}
