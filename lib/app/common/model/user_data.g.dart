// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      userID: json['userID'] as int?,
      finalDayPremium: json['finalDayPremium'] as int?,
      gift: json['gift'] as int?,
      tokent: json['tokent'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'finalDayPremium': instance.finalDayPremium,
      'gift': instance.gift,
      'tokent': instance.tokent,
    };
