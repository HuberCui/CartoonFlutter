import 'package:json_annotation/json_annotation.dart';

part 'book_detail.g.dart';

//"theme_ids": [
//"少年",
//"魔幻",
//"科幻"
//],

//"classifyTags": [
//{
//"name": "少年",
//"argName": "cate",
//"argVal": 1
//},
//{
//"name": "魔幻",
//"argName": "theme",
//"argVal": 2
//},
//{
//"name": "科幻",
//"argName": "theme",
//"argVal": 6
//}
//],

//"author": {
//"avatar": "http://k.avatar.u17i.com/2015/0608/4431881_8be6570ab258879f0a03ccfc1c90ba29_1433753720.big.jpg",
//"name": "日光天境文化",
//"id": "4431881"
//},
@JsonSerializable()
class BookDetailModel {
  String name;
  String comic_id;

  String short_description;
  int accredit;
  String cover;
  int is_vip;
  String type;
  String ori;
  List theme_ids;
  String series_status;
  int last_update_time;
  String description;
  String cate_id;
  int status;
  String thread_id;
  // int last_update_week;
  String wideCover;
  List classifyTags;
  int is_week;
  String level;
  int is_dub;
  Map author;
  BookDetailModel(
      this.comic_id,
      this.name,
      this.description,
      this.cover,
      this.short_description,
      this.is_vip,
      this.accredit,
      this.author,
      this.cate_id,
      this.classifyTags,
      this.is_dub,
      this.is_week,
      this.last_update_time,
      this.level,
      this.ori,
      this.series_status,
      this.status,
      this.theme_ids,
      this.thread_id,
      this.type,
      this.wideCover);
  factory BookDetailModel.fromJson(Map<String, dynamic> json) =>
      _$BookDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookDetailModelToJson(this);
}
