
//作品简介
import 'library_catalogue.dart';
import 'other_works.dart';
import 'book_detail.dart';
import 'package:json_annotation/json_annotation.dart';
part 'book_intro_model.g.dart';
@JsonSerializable()
class BookIntro{
  List<Library_Catalogue> chapter_list;//目录
  List<OtherWork> OtherWorks;
    factory BookIntro.fromJson(Map<String, dynamic> json) => _$BookIntroFromJson(json);

     Map<String, dynamic> toJson() => _$BookIntroToJson(this);

  BookDetail comic;

  BookIntro(this.chapter_list,this.comic,this.OtherWorks);
}