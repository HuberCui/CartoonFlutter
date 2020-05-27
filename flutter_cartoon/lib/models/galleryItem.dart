import 'package:json_annotation/json_annotation.dart';

part 'galleryItem.g.dart';



@JsonSerializable()
class GalleyItem{
  int linkType;

  @JsonKey(name: "id")
  int galley_id;

  @JsonKey(name: "cover")
  String cover_image;

  String title;

  String content;

//  ext:[
//  {
//  "key": "comicId",
//  "val": "145630"
//  }
//  ]
  List ext;//



  GalleyItem(this.linkType,this.cover_image,this.galley_id,this.title,this.content,this.ext);

  factory GalleyItem.fromJson(Map<String, dynamic> json) => _$GalleyItemFromJson(json);

  Map<String, dynamic> toJson() => _$GalleyItemToJson(this);
}