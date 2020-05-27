import 'package:json_annotation/json_annotation.dart';
import 'galleryItem.dart';
part 'book_intro.g.dart';

@JsonSerializable()

class BookIntro{
   List <GalleyItem>galleryItems;//轮播图


   BookIntro(this.galleryItems);
    factory BookIntro.fromJson(Map<String, dynamic> json) => _$BookIntroFromJson(json);

     Map<String, dynamic> toJson() => _$BookIntroToJson(this);

}