// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookCommentModel _$BookCommentModelFromJson(Map<String, dynamic> json) {
  return BookCommentModel(
    commentId: json['comment_id'] as String,
    content: json['content'] as String,
    face: json['face'] as String,
    createTimeStr: json['create_time_str'] as String,
    nickname:json['nickname'] as String,
  );
}

Map<String, dynamic> _$BookCommentModelToJson(BookCommentModel instance) =>
    <String, dynamic>{
      'comment_id': instance.commentId,
      'content': instance.content,
      'face': instance.face,
      'create_time_str': instance.createTimeStr,
      'nickname':instance.nickname,
    };
