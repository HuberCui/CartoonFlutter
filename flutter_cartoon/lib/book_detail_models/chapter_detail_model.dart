import 'package:json_annotation/json_annotation.dart';
import "chapterdetail_image_list_model.dart";

part 'chapter_detail_model.g.dart';

@JsonSerializable()
class ChapterDetailModel {
	@JsonKey(name: 'status')
	int status;
	@JsonKey(name: 'chapter_id')
	String chapterId;
	// @JsonKey(name: 'type')
	// String type; //不确定是不是字符串还是int，垃圾接口，pass_time字段也是
	@JsonKey(name: 'image_list')
	List<ChapterdetailImageListModel> chapterdetailImageListModel;

	ChapterDetailModel({this.status, this.chapterId, this.chapterdetailImageListModel});

factory ChapterDetailModel.fromJson(Map<String, dynamic> json) => _$ChapterDetailModelFromJson(json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['status'] = this.status;
		data['chapter_id'] = this.chapterId;
		// data['type'] = this.type;
		if (this.chapterdetailImageListModel!= null) {
      data['image_list'] = this.chapterdetailImageListModel.map((v) => v.toJson()).toList();
    }
		return data;
	}
}
