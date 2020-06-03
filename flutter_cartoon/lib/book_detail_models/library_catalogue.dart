import 'package:json_annotation/json_annotation.dart';

part 'library_catalogue.g.dart';

//图书目录
@JsonSerializable()
class LibraryCatalogueModel{
  String name;
  String image_total;
    factory LibraryCatalogueModel.fromJson(Map<String, dynamic> json) => _$LibraryCatalogueModelFromJson(json);

     Map<String, dynamic> toJson() => _$LibraryCatalogueModelToJson(this);

  String chapter_id;
  // String type;
  String price;
  String size;
  int pass_time;//时间戳
  // String release_time;
  String zip_high_webp;
  String crop_zip_size;
  int is_new;
  bool has_locked_image;
  List imHightArr;
  LibraryCatalogueModel(this.pass_time,this.name,this.chapter_id,this.crop_zip_size,this.has_locked_image,this.image_total,this.imHightArr,this.is_new,this.price,this.size,this.zip_high_webp);
}