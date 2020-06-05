import 'package:json_annotation/json_annotation.dart';

part 'sort_list_model.g.dart';

@JsonSerializable()
class SortListModel {
	@JsonKey(name: 'cover')
	String cover;
	@JsonKey(name: 'comicId')
	int comicId;
	@JsonKey(name: 'description')
	String description;
	@JsonKey(name: 'short_description')
	String shortDescription;
	@JsonKey(name: 'is_vip')
	int isVip;
	@JsonKey(name: 'name')
	String name;
	@JsonKey(name: 'flag')
	int flag;
	@JsonKey(name: 'tags')
	List tags;
	@JsonKey(name: 'author')
	String author;

	SortListModel({this.cover, this.comicId, this.description, this.shortDescription, this.isVip, this.name, this.flag, this.tags, this.author});

factory SortListModel.fromJson(Map<String, dynamic> json) => _$SortListModelFromJson(json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cover'] = this.cover;
		data['comicId'] = this.comicId;
		data['description'] = this.description;
		data['short_description'] = this.shortDescription;
		data['is_vip'] = this.isVip;
		data['name'] = this.name;
		data['flag'] = this.flag;
		
    data['tags'] = this.tags;
    
		data['author'] = this.author;
		return data;
	}
}
