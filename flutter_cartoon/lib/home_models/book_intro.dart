import 'package:json_annotation/json_annotation.dart';
import 'galleryItem.dart';
import 'comics.dart';
part 'book_intro.g.dart';

@JsonSerializable()

class BookIntro{
   List <GalleyItem>galleryItems;//轮播图
   List <Comics>comicLists;//简介列表

   BookIntro(this.galleryItems,this.comicLists);
    factory BookIntro.fromJson(Map<String, dynamic> json) => _$BookIntroFromJson(json);

     Map<String, dynamic> toJson() => _$BookIntroToJson(this);

}