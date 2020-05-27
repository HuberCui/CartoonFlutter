import 'package:json_annotation/json_annotation.dart';

part 'commic_detail.g.dart';

@JsonSerializable()
class CommicDetail{
    int comicId;
    String name;
    @JsonKey(name:"cover")
    String cover_image;
//    "tags": [
//    "少女",
//    "纯爱",
//    "魔幻"
//    ],
    List tags;
    String subTitle;
    String description;
    String cornerInfo;
    String short_description;
    String author_name;
    int is_vip;

    CommicDetail(this.comicId,this.name,this.cover_image,this.author_name,this.cornerInfo,this.description,this.is_vip,this.short_description,this.subTitle,this.tags);

    factory CommicDetail.fromJson(Map<String, dynamic> json) => _$CommicDetailFromJson(json);

     Map<String, dynamic> toJson() => _$CommicDetailToJson(this);

}