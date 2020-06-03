// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return CommentModel(
    commentId: json['comment_id'] as String,
    parentId: json['parent_id'] as String,
    content: json['content'] as String,
    createTime: json['create_time'] as String,
    floor: json['floor'] as String,
    isDelete: json['is_delete'] as String,
    isUp: json['is_up'] as String,
    threadId: json['thread_id'] as String,
    ip: json['ip'] as String,
    totalReply: json['total_reply'] as String,
    commentFrom: json['comment_from'] as String,
    isLock: json['is_lock'] as String,
    color: json['color'] as String,
    replyTime: json['reply_time'] as String,
    cate: json['cate'] as String,
    objectType: json['object_type'] as String,
    isChoice: json['is_choice'] as String,
    fromProduct: json['from_product'] as String,
    fromDeviceModel: json['from_device_model'] as String,
    chapterId: json['chapter_id'] as String,
    comicId: json['comic_id'] as String,
    praiseTotal: json['praise_total'] as String,
    commentType: json['comment_type'] as String,
    defaultType: json['default_type'] as String,
    ticketId: json['ticket_id'] as String,
    contentFilter: json['content_filter'] as String,
    ticketNum: json['ticketNum'] as String,
    giftImg: json['gift_img'] as String,
    imageList: json['imageList'] as List,
    vipExp: json['vip_exp'] as String,
    faceType: json['face_type'] as String,
    title: json['title'] as String,
    nickname: json['nickname'] as String,
    groupUser: json['group_user'] as String,
    groupAdmin: json['group_admin'] as String,
    groupAuthor: json['group_author'] as String,
    face: json['face'] as String,
    sex: json['sex'] as String,
    exp: json['exp'] as String,
    onlineTime: json['online_time'] as String,
    groupCustom: json['group_custom'] as String,
    id: json['id'] as String,
    createTimeStr: json['create_time_str'] as String,
    level: json['level'] == null
        ? null
        : Level.fromJson(json['level'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'comment_id': instance.commentId,
      'parent_id': instance.parentId,
      'content': instance.content,
      'create_time': instance.createTime,
      'floor': instance.floor,
      'is_delete': instance.isDelete,
      'is_up': instance.isUp,
      'thread_id': instance.threadId,
      'ip': instance.ip,
      'total_reply': instance.totalReply,
      'comment_from': instance.commentFrom,
      'is_lock': instance.isLock,
      'color': instance.color,
      'reply_time': instance.replyTime,
      'cate': instance.cate,
      'object_type': instance.objectType,
      'is_choice': instance.isChoice,
      'from_product': instance.fromProduct,
      'from_device_model': instance.fromDeviceModel,
      'chapter_id': instance.chapterId,
      'comic_id': instance.comicId,
      'praise_total': instance.praiseTotal,
      'comment_type': instance.commentType,
      'default_type': instance.defaultType,
      'ticket_id': instance.ticketId,
      'content_filter': instance.contentFilter,
      'ticketNum': instance.ticketNum,
      'gift_img': instance.giftImg,
      'imageList': instance.imageList,
      'vip_exp': instance.vipExp,
      'face_type': instance.faceType,
      'title': instance.title,
      'nickname': instance.nickname,
      'group_user': instance.groupUser,
      'group_admin': instance.groupAdmin,
      'group_author': instance.groupAuthor,
      'face': instance.face,
      'sex': instance.sex,
      'exp': instance.exp,
      'online_time': instance.onlineTime,
      'group_custom': instance.groupCustom,
      'id': instance.id,
      'create_time_str': instance.createTimeStr,
      'level': instance.level,
    };
