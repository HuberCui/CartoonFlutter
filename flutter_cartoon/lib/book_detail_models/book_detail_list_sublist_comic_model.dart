import 'package:json_annotation/json_annotation.dart';

part 'book_detail_list_sublist_comic_model.g.dart';

@JsonSerializable()
class BookDetailListSublistComicModel {
	@JsonKey(name: 'comic_id')
	String comicId;
	@JsonKey(name: 'name')
	String name;
	@JsonKey(name: 'cover')
	String cover;
	@JsonKey(name: 'short_description')
	String shortDescription;
	@JsonKey(name: 'ori_cover')
	String oriCover;
	@JsonKey(name: 'new_comic')
	bool newComic;

	BookDetailListSublistComicModel({this.comicId, this.name, this.cover, this.shortDescription, this.oriCover, this.newComic});

factory BookDetailListSublistComicModel.fromJson(Map<String, dynamic> json) => _$BookDetailListSublistComicModelFromJson(json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['comic_id'] = this.comicId;
		data['name'] = this.name;
		data['cover'] = this.cover;
		data['short_description'] = this.shortDescription;
		data['ori_cover'] = this.oriCover;
		data['new_comic'] = this.newComic;
		return data;
	}
}
