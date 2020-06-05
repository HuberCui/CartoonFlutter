// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SortListModel _$SortListModelFromJson(Map<String, dynamic> json) {
  return SortListModel(
    cover: json['cover'] as String,
    comicId: json['comicId'] as int,
    description: json['description'] as String,
    shortDescription: json['short_description'] as String,
    isVip: json['is_vip'] as int,
    name: json['name'] as String,
    flag: json['flag'] as int,
    tags: json['tags'] as List,
    author: json['author'] as String,
  );
}

Map<String, dynamic> _$SortListModelToJson(SortListModel instance) =>
    <String, dynamic>{
      'cover': instance.cover,
      'comicId': instance.comicId,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'is_vip': instance.isVip,
      'name': instance.name,
      'flag': instance.flag,
      'tags': instance.tags,
      'author': instance.author,
    };
