import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_user.g.dart';

part 'custom_user.freezed.dart';


@freezed
class CustomUser with _$CustomUser {
  const factory CustomUser({
    final String? name,
    final String? sex,
    final int? age,
    final String? email,
    final int? statusAccount,
    final int? streak,
    final String? passWord,
    final String? repass,
  }) = _CustomUser;

  factory CustomUser.fromJson(Map<String, dynamic> json) =>
      _$CustomUserFromJson(json);
}

