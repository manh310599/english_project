import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String newsApiOld = 'https://saurav.tech/NewsAPI/';
const String newsApi = '';

class DioModule {
  DioModule();

  Dio? _dio;

  Dio get dio {
    if (_dio != null) {
      return _dio!;
    }

    log('*** Dio Create');
    final options = BaseOptions(
      baseUrl: newsApiOld,
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 12),
      sendTimeout: const Duration(seconds: 12),
    );

    _dio = Dio(options);

    _dio!.interceptors.add(
      PrettyDioLogger(
          error: true,
          compact: true,
          responseHeader: true,
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true),
    );

    return _dio!;
  }
}

class DioModuleImage {
  DioModuleImage();

  String apiKey = 'EmXpn3RYjrl5RHprLI738aOD1KRnTHdGWZ4TCWrR8i4';

  Dio? _dioImage;

  Dio get dioImage {
    if (_dioImage != null) {
      return _dioImage!;
    }

    log('*** Dio Create');
    final options = BaseOptions(
        baseUrl: 'https://api.unsplash.com/',
        connectTimeout: const Duration(seconds: 12),
        receiveTimeout: const Duration(seconds: 12),
        sendTimeout: const Duration(seconds: 12),
        queryParameters: <String, String>{'client_id': apiKey});

    _dioImage = Dio(options);

    _dioImage!.interceptors.add(
      PrettyDioLogger(
          error: true,
          compact: true,
          responseHeader: true,
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true),
    );

    return _dioImage!;
  }
}
