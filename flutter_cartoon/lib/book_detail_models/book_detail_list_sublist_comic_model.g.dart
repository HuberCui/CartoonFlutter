// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail_list_sublist_comic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDetailListSublistComicModel _$BookDetailListSublistComicModelFromJson(
    Map<String, dynamic> json) {
  return BookDetailListSublistComicModel(
    comicId: json['comic_id'] as String,
    name: json['name'] as String,
    cover: json['cover'] as String,
    shortDescription: json['short_description'] as String,
    oriCover: json['ori_cover'] as String,
    newComic: json['new_comic'] as bool,
  );
}

Map<String, dynamic> _$BookDetailListSublistComicModelToJson(
        BookDetailListSublistComicModel instance) =>
    <String, dynamic>{
      'comic_id': instance.comicId,
      'name': instance.name,
      'cover': instance.cover,
      'short_description': instance.shortDescription,
      'ori_cover': instance.oriCover,
      'new_comic': instance.newComic,
    };
