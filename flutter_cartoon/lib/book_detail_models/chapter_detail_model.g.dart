// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterDetailModel _$ChapterDetailModelFromJson(Map<String, dynamic> json) {
  return ChapterDetailModel(
    status: json['status'] as int,
    chapterId: json['chapter_id'] as String,
    type: json['type'] as String,
    chapterdetailImageListModel: (json['image_list']
            as List)
        ?.map((e) => e == null
            ? null
            : ChapterdetailImageListModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ChapterDetailModelToJson(ChapterDetailModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'chapter_id': instance.chapterId,
      'type': instance.type,
      'image_list': instance.chapterdetailImageListModel,
    };
