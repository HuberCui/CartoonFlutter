import 'package:json_annotation/json_annotation.dart';
import "level.dart";

part 'comment_model.g.dart';

@JsonSerializable()
class CommentModel {
	@JsonKey(name: 'comment_id')
	String commentId;
	@JsonKey(name: 'parent_id')
	String parentId;
	// @JsonKey(name: 'user_id')
	// int userId;
	@JsonKey(name: 'content')
	String content;
	@JsonKey(name: 'create_time')
	String createTime;
	@JsonKey(name: 'floor')
	String floor;
	@JsonKey(name: 'is_delete')
	String isDelete;
	@JsonKey(name: 'is_up')
	String isUp;
	@JsonKey(name: 'thread_id')
	String threadId;
	@JsonKey(name: 'ip')
	String ip;
	@JsonKey(name: 'total_reply')
	String totalReply;
	@JsonKey(name: 'comment_from')
	String commentFrom;
	@JsonKey(name: 'is_lock')
	String isLock;
	@JsonKey(name: 'color')
	String color;
	@JsonKey(name: 'reply_time')
	String replyTime;
	@JsonKey(name: 'cate')
	String cate;
	@JsonKey(name: 'object_type')
	String objectType;
	@JsonKey(name: 'is_choice')
	String isChoice;
	@JsonKey(name: 'from_product')
	String fromProduct;
	@JsonKey(name: 'from_device_model')
	String fromDeviceModel;
	@JsonKey(name: 'chapter_id')
	String chapterId;
	@JsonKey(name: 'comic_id')
	String comicId;
	@JsonKey(name: 'praise_total')
	String praiseTotal;
	@JsonKey(name: 'comment_type')
	String commentType;
	@JsonKey(name: 'default_type')
	String defaultType;
	@JsonKey(name: 'ticket_id')
	String ticketId;
	// @JsonKey(name: 'comic_author')
	// int comicAuthor;
	@JsonKey(name: 'content_filter')
	String contentFilter;
	@JsonKey(name: 'ticketNum')
	String ticketNum;
	// @JsonKey(name: 'gift_num')
	// int giftNum;
	@JsonKey(name: 'gift_img')
	String giftImg;
	@JsonKey(name: 'imageList')
	List imageList;
	@JsonKey(name: 'vip_exp')
	String vipExp;
	@JsonKey(name: 'face_type')
	String faceType;
	@JsonKey(name: 'title')
	String title;
	@JsonKey(name: 'nickname')
	String nickname;
	@JsonKey(name: 'group_user')
	String groupUser;
	@JsonKey(name: 'group_admin')
	String groupAdmin;
	@JsonKey(name: 'group_author')
	String groupAuthor;
	@JsonKey(name: 'face')
	String face;
	@JsonKey(name: 'sex')
	String sex;
	@JsonKey(name: 'exp')
	String exp;
	@JsonKey(name: 'online_time')
	String onlineTime;
	@JsonKey(name: 'group_custom')
	String groupCustom;
	@JsonKey(name: 'id')
	String id;
	@JsonKey(name: 'create_time_str')
	String createTimeStr;
	// @JsonKey(name: 'likeState')
	// int likeState;
	// @JsonKey(name: 'likeCount')
	// int likeCount;
	@JsonKey(name: 'level')
	Level level;

	CommentModel({this.commentId, this.parentId, this.content, this.createTime, this.floor, this.isDelete, this.isUp, this.threadId, this.ip, this.totalReply, this.commentFrom, this.isLock, this.color, this.replyTime, this.cate, this.objectType, this.isChoice, this.fromProduct, this.fromDeviceModel, this.chapterId, this.comicId, this.praiseTotal, this.commentType, this.defaultType, this.ticketId,  this.contentFilter, this.ticketNum,  this.giftImg, this.imageList, this.vipExp, this.faceType, this.title, this.nickname, this.groupUser, this.groupAdmin, this.groupAuthor, this.face, this.sex, this.exp, this.onlineTime, this.groupCustom, this.id, this.createTimeStr,  this.level});

factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['comment_id'] = this.commentId;
		data['parent_id'] = this.parentId;
		// data['user_id'] = this.userId;
		data['content'] = this.content;
		data['create_time'] = this.createTime;
		data['floor'] = this.floor;
		data['is_delete'] = this.isDelete;
		data['is_up'] = this.isUp;
		data['thread_id'] = this.threadId;
		data['ip'] = this.ip;
		data['total_reply'] = this.totalReply;
		data['comment_from'] = this.commentFrom;
		data['is_lock'] = this.isLock;
		data['color'] = this.color;
		data['reply_time'] = this.replyTime;
		data['cate'] = this.cate;
		data['object_type'] = this.objectType;
		data['is_choice'] = this.isChoice;
		data['from_product'] = this.fromProduct;
		data['from_device_model'] = this.fromDeviceModel;
		data['chapter_id'] = this.chapterId;
		data['comic_id'] = this.comicId;
		data['praise_total'] = this.praiseTotal;
		data['comment_type'] = this.commentType;
		data['default_type'] = this.defaultType;
		data['ticket_id'] = this.ticketId;
		// data['comic_author'] = this.comicAuthor;
		data['content_filter'] = this.contentFilter;
		data['ticketNum'] = this.ticketNum;
		// data['gift_num'] = this.giftNum;
		data['gift_img'] = this.giftImg;
		
    data['imageList'] = this.imageList;
    
		data['vip_exp'] = this.vipExp;
		data['face_type'] = this.faceType;
		data['title'] = this.title;
		data['nickname'] = this.nickname;
		data['group_user'] = this.groupUser;
		data['group_admin'] = this.groupAdmin;
		data['group_author'] = this.groupAuthor;
		data['face'] = this.face;
		data['sex'] = this.sex;
		data['exp'] = this.exp;
		data['online_time'] = this.onlineTime;
		data['group_custom'] = this.groupCustom;
		data['id'] = this.id;
		data['create_time_str'] = this.createTimeStr;
		// data['likeState'] = this.likeState;
		// data['likeCount'] = this.likeCount;
		if (this.level != null) {
      data['level'] = this.level.toJson();
    }
		return data;
	}
}
