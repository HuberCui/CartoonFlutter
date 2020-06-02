
//作品简介
import 'library_catalogue.dart';
import 'other_works.dart';
import 'book_detail.dart';
import 'package:json_annotation/json_annotation.dart';
part 'book_intro_model.g.dart';
@JsonSerializable()
class BookDetailIntro{
  @JsonKey(name:'chapter_list')
  List<Library_Catalogue> chapterlist;//目录
  List<OtherWork> otherWorks;
  BookDetail comic;

  BookDetailIntro(this.comic,this.otherWorks,this.chapterlist);
   factory BookDetailIntro.fromJson(Map<String, dynamic> json) => _$BookDetailIntroFromJson(json);

     Map<String, dynamic> toJson() => _$BookDetailIntroToJson(this);
}