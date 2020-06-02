// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_intro_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetailIntro _$BookDetailIntroFromJson(Map<String, dynamic> json) {
  return BookDetailIntro(
    json['comic'] == null
        ? null
        : BookDetail.fromJson(json['comic'] as Map<String, dynamic>),
    (json['otherWorks'] as List)
        ?.map((e) =>
            e == null ? null : OtherWork.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['chapterlist'] as List)
        ?.map((e) => e == null
            ? null
            : Library_Catalogue.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BookDetailIntroToJson(BookDetailIntro instance) =>
    <String, dynamic>{
      'chapterlist': instance.chapterlist,
      'otherWorks': instance.otherWorks,
      'comic': instance.comic,
    };
