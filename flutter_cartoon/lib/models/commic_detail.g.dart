// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commic_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommicDetail _$CommicDetailFromJson(Map<String, dynamic> json) {


  return CommicDetail(
    json['comicId'] as int,
    json['name'] as String,
    json['cover'] as String,
    json['author_name'] as String,
    json['cornerInfo'] as String,
    json['description'] as String,
    json['is_vip'] as int,
    json['short_description'] as String,
    json['subTitle'] as String,
    json['tags'] as List,
  );
}

Map<String, dynamic> _$CommicDetailToJson(CommicDetail instance) =>
    <String, dynamic>{
      'comicId': instance.comicId,
      'name': instance.name,
      'cover': instance.cover_image,
      'tags': instance.tags,
      'subTitle': instance.subTitle,
      'description': instance.description,
      'cornerInfo': instance.cornerInfo,
      'short_description': instance.short_description,
      'author_name': instance.author_name,
      'is_vip': instance.is_vip,
    };
