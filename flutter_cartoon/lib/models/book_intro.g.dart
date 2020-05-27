// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_intro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookIntro _$BookIntroFromJson(Map<String, dynamic> json) {
  return BookIntro(
    (json['galleryItems'] as List)
        ?.map((e) =>
            e == null ? null : GalleyItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['comicLists'] as List)
        ?.map((e) =>
            e == null ? null : Comics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BookIntroToJson(BookIntro instance) => <String, dynamic>{
      'galleryItems': instance.galleryItems,
      'comicLists': instance.comicLists,
    };
