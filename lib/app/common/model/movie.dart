import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String id,
    required String poster,
    required int likes,
    required String title,
    required int year,
    required String runtime,
    required String rated,
    List<String>? genre,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  factory Movie.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot, SnapshotOptions? options) =>
      Movie.fromJson(snapshot.data()!);
  static Map<String, Object?> toFirestore(Movie Movie, SetOptions? options) =>
      Movie.toJson();
}



