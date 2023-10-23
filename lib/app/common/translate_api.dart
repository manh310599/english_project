
import 'package:dio/dio.dart';
import 'package:english_project/app/common/model/translate_model.dart';

Future<Translate?> translate(String query) async {
  query = query.trim().replaceAll(' ', '%20');

  print(query);

  final response = await Dio().get('https://translate.googleapis.com/'
      'translate_a/single?client=gtx&sl=en&tl=vi&dt=t&dt=bd&dj=1&q=$query');

  if (response.statusCode == 200) {
    final responseData = response.data ;
    return Translate.fromJson(responseData);
  } else {
    print('Lỗi');
    return null;
  }
}
