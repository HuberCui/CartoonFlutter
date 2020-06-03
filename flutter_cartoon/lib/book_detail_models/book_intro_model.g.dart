// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_intro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetailIntro _$BookDetailIntroFromJson(Map<String, dynamic> json) {
  return BookDetailIntro(
    json['comic'] == null
        ? null
        : BookDetailModel.fromJson(json['comic'] as Map<String, dynamic>),
    (json['otherWorks'] as List)
        ?.map((e) => e == null
            ? null
            : OtherWorkModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['chapter_list'] as List)
        ?.map((e) => e == null
            ? null
            : LibraryCatalogueModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BookDetailIntroToJson(BookDetailIntro instance) =>
    <String, dynamic>{
      'chapter_list': instance.chapterlist,
      'otherWorks': instance.otherWorks,
      'comic': instance.comic,
    };
