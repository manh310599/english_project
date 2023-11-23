import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';


@freezed
class UserData with _$UserData {
  const factory UserData({
    int? userID,
    int? finalDayPremium,

  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  factory UserData.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot) =>
      UserData.fromJson(snapshot.data()!);
  static Map<String, Object?> toFirestore(UserData UserData, SetOptions? options) =>
      UserData.toJson();
}



