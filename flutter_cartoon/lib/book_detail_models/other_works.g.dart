// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_works.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtherWorkModel _$OtherWorkModelFromJson(Map<String, dynamic> json) {
  return OtherWorkModel(
    json['name'] as String,
    json['comicId'] as String,
    json['coverUrl'] as String,
    json['passChapterNum'] as String,
  );
}

Map<String, dynamic> _$OtherWorkModelToJson(OtherWorkModel instance) =>
    <String, dynamic>{
      'comicId': instance.comicId,
      'coverUrl': instance.coverUrl,
      'name': instance.name,
      'passChapterNum': instance.passChapterNum,
    };
