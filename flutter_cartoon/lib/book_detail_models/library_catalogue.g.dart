// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_catalogue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Library_Catalogue _$Library_CatalogueFromJson(Map<String, dynamic> json) {
  return Library_Catalogue(
    json['pass_time'] as int,
    json['type'] as int,
    json['name'] as String,
    json['chapter_id'] as String,
    json['crop_zip_size'] as String,
    json['has_locked_image'] as bool,
    json['image_total'] as String,
    json['imHightArr'] as List,
    json['is_new'] as int,
    json['price'] as String,
    json['size'] as String,
    json['zip_high_webp'] as String,
  );
}

Map<String, dynamic> _$Library_CatalogueToJson(Library_Catalogue instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image_total': instance.image_total,
      'chapter_id': instance.chapter_id,
      'type': instance.type,
      'price': instance.price,
      'size': instance.size,
      'pass_time': instance.pass_time,
      'zip_high_webp': instance.zip_high_webp,
      'crop_zip_size': instance.crop_zip_size,
      'is_new': instance.is_new,
      'has_locked_image': instance.has_locked_image,
      'imHightArr': instance.imHightArr,
    };
