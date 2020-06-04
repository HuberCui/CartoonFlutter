// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapterdetail_image_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterdetailImageListModel _$ChapterdetailImageListModelFromJson(
    Map<String, dynamic> json) {
  return ChapterdetailImageListModel(
    location: json['location'] as String,
    imageId: json['image_id'] as String,
    width: json['width'] as String,
    height: json['height'] as String,
    totalTucao: json['total_tucao'] as String,
    webp: json['webp'] as String,
    type: json['type'] as String,
    img05: json['img05'] as String,
    img50: json['img50'] as String,
  );
}

Map<String, dynamic> _$ChapterdetailImageListModelToJson(
        ChapterdetailImageListModel instance) =>
    <String, dynamic>{
      'location': instance.location,
      'image_id': instance.imageId,
      'width': instance.width,
      'height': instance.height,
      'total_tucao': instance.totalTucao,
      'webp': instance.webp,
      'type': instance.type,
      'img05': instance.img05,
      'img50': instance.img50,
    };
