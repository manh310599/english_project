import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:english_project/app/app_route/app_route.dart';
import 'package:english_project/app/common/api/images_api.dart';
import 'package:english_project/app/common/api/repo/image_repo.dart';
import 'package:english_project/app/common/core/abs_repo/image_api_repo.dart';
import 'package:english_project/app/common/database/storage_database.dart';
import 'package:english_project/app/features/news/core/abs_repo/abs_news_repo.dart';
import 'package:english_project/app/features/news/data/api/new_api.dart';
import 'package:english_project/app/features/news/data/repo/new_repons.dart';
import 'package:english_project/dio_module.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupAppDepedence() async {
  await _appProvider();

  getIt.registerSingleton<AppAutoRoute>(AppAutoRoute());
}



Future<void> _appProvider() async {
  getIt.registerSingleton<DioModule>(DioModule());
  getIt.registerSingleton<DioModuleImage>(DioModuleImage());

  initDataNewService();
  initDataImageService();
}




void initDataNewService() {
  final dio = getIt<DioModule>().dio;

  getIt
    //API
    ..registerLazySingleton<NewApi>(() => NewApi(dio))
    //Repo
    ..registerLazySingleton<NewsRepo>(NewReponsitory.new);
}

void initDataImageService() {
  final dioImage = getIt<DioModuleImage>().dioImage;

  getIt
    //API
    ..registerLazySingleton<ImagesApi>(() => ImagesApi(dioImage))
    //Repo
    ..registerLazySingleton<AbsImageRepo>(ImageRepo.new);
}
