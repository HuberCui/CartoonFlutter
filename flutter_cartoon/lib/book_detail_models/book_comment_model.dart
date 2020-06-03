import 'package:json_annotation/json_annotation.dart';

part 'book_comment_model.g.dart';

@JsonSerializable()
class BookCommentModel {
	@JsonKey(name: 'comment_id')
	String commentId;
	@JsonKey(name: 'content')
	String content;
	@JsonKey(name: 'face')
	String face;
  @JsonKey(name:'nickname')
  String nickname;
	@JsonKey(name: 'create_time_str')
	String createTimeStr;

	BookCommentModel({this.commentId, this.content, this.face, this.createTimeStr,this.nickname});

factory BookCommentModel.fromJson(Map<String, dynamic> json) => _$BookCommentModelFromJson(json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['comment_id'] = this.commentId;
		data['content'] = this.content;
		data['face'] = this.face;
    data['nickname'] = this.nickname;
		data['create_time_str'] = this.createTimeStr;
		return data;
	}
}
