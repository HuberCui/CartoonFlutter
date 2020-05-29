import 'package:json_annotation/json_annotation.dart';

part 'library_catalogue.g.dart';

//图书目录
@JsonSerializable()
class Library_Catalogue{
  String name;
  String image_total;
    factory Library_Catalogue.fromJson(Map<String, dynamic> json) => _$Library_CatalogueFromJson(json);

     Map<String, dynamic> toJson() => _$Library_CatalogueToJson(this);

  String chapter_id;
  int type;
  String price;
  String size;
  int pass_time;//时间戳
  String release_time;
  String zip_high_webp;
  String crop_zip_size;
  int is_new;
  bool has_locked_image;
  List imHightArr;
  Library_Catalogue(this.type,this.name,this.chapter_id,this.crop_zip_size,this.has_locked_image,this.image_total,this.imHightArr,this.is_new,this.pass_time,this.price,this.release_time,this.size,this.zip_high_webp);
}