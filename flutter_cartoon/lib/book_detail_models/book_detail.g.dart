// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetail _$BookDetailFromJson(Map<String, dynamic> json) {
  return BookDetail(
    json['comic_id'] as String,
    json['name'] as String,
    json['description'] as String,
    json['cover'] as String,
    json['short_description'] as String,
    json['is_vip'] as int,
    json['accredit'] as int,
    json['author'] as Map<String, dynamic>,
    json['cate_id'] as String,
    json['classifyTags'] as List,
    json['is_dub'] as String,
    json['is_week'] as int,
    json['last_update_time'] as int,
    json['last_update_week'] as String,
    json['level'] as String,
    json['ori'] as String,
    json['series_status'] as String,
    json['status'] as int,
    (json['theme_ids'] as List)?.map((e) => e as String)?.toList(),
    json['thread_id'] as String,
    json['type'] as String,
    json['wideCover'] as String,
  );
}

Map<String, dynamic> _$BookDetailToJson(BookDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'comic_id': instance.comic_id,
      'short_description': instance.short_description,
      'accredit': instance.accredit,
      'cover': instance.cover,
      'is_vip': instance.is_vip,
      'type': instance.type,
      'ori': instance.ori,
      'theme_ids': instance.theme_ids,
      'series_status': instance.series_status,
      'last_update_time': instance.last_update_time,
      'description': instance.description,
      'cate_id': instance.cate_id,
      'status': instance.status,
      'thread_id': instance.thread_id,
      'last_update_week': instance.last_update_week,
      'wideCover': instance.wideCover,
      'classifyTags': instance.classifyTags,
      'is_week': instance.is_week,
      'level': instance.level,
      'is_dub': instance.is_dub,
      'author': instance.author,
    };
