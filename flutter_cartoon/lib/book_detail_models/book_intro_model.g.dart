// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_intro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookIntro _$BookIntroFromJson(Map<String, dynamic> json) {
  return BookIntro(
    (json['chapter_list'] as List)
        ?.map((e) => e == null
            ? null
            : Library_Catalogue.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['comic'] == null
        ? null
        : BookDetail.fromJson(json['comic'] as Map<String, dynamic>),
    (json['OtherWorks'] as List)
        ?.map((e) =>
            e == null ? null : OtherWork.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BookIntroToJson(BookIntro instance) => <String, dynamic>{
      'chapter_list': instance.chapter_list,
      'OtherWorks': instance.OtherWorks,
      'comic': instance.comic,
    };
