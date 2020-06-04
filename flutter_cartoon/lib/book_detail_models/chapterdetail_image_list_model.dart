import 'package:json_annotation/json_annotation.dart';

part 'chapterdetail_image_list_model.g.dart';

@JsonSerializable()
class ChapterdetailImageListModel {
	@JsonKey(name: 'location')
	String location;
	@JsonKey(name: 'image_id')
	String imageId;
	@JsonKey(name: 'width')
	String width;
	@JsonKey(name: 'height')
	String height;
	@JsonKey(name: 'total_tucao')
	String totalTucao;
	@JsonKey(name: 'webp')
	String webp;
	@JsonKey(name: 'type')
	String type;
	@JsonKey(name: 'img05')
	String img05;
	@JsonKey(name: 'img50')
	String img50;

	ChapterdetailImageListModel({this.location, this.imageId, this.width, this.height, this.totalTucao, this.webp, this.type, this.img05, this.img50});

factory ChapterdetailImageListModel.fromJson(Map<String, dynamic> json) => _$ChapterdetailImageListModelFromJson(json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['location'] = this.location;
		data['image_id'] = this.imageId;
		data['width'] = this.width;
		data['height'] = this.height;
		data['total_tucao'] = this.totalTucao;
		data['webp'] = this.webp;
		data['type'] = this.type;
		data['img05'] = this.img05;
		data['img50'] = this.img50;
		return data;
	}
}
