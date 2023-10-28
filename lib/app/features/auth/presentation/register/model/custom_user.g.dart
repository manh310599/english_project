// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomUserImpl _$$CustomUserImplFromJson(Map<String, dynamic> json) =>
    _$CustomUserImpl(
      name: json['name'] as String?,
      sex: json['sex'] as String?,
      age: json['age'] as int?,
      email: json['email'] as String?,
      statusAccount: json['statusAccount'] as int?,
      streak: json['streak'] as int?,
      passWord: json['passWord'] as String?,
      repass: json['repass'] as String?,
    );

Map<String, dynamic> _$$CustomUserImplToJson(_$CustomUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sex': instance.sex,
      'age': instance.age,
      'email': instance.email,
      'statusAccount': instance.statusAccount,
      'streak': instance.streak,
      'passWord': instance.passWord,
      'repass': instance.repass,
    };
