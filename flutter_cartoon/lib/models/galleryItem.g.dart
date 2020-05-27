// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'galleryItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleyItem _$GalleyItemFromJson(Map<String, dynamic> json) {
  return GalleyItem(
    json['linkType'] as int,
    json['cover'] as String,
    json['id'] as int,
    json['title'] as String,
    json['content'] as String,
    json['ext'] as List,
  );
}

Map<String, dynamic> _$GalleyItemToJson(GalleyItem instance) =>
    <String, dynamic>{
      'linkType': instance.linkType,
      'id': instance.galley_id,
      'cover': instance.cover_image,
      'title': instance.title,
      'content': instance.content,
      'ext': instance.ext,
    };
