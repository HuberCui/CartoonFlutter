import 'package:json_annotation/json_annotation.dart';

part 'other_works.g.dart';

//其他作品
@JsonSerializable()
class OtherWork{
  String comicId;
  String coverUrl;
  String name;
  String passChapterNum;
  OtherWork(this.name,this.comicId,this.coverUrl,this.passChapterNum);
    factory OtherWork.fromJson(Map<String, dynamic> json) => _$OtherWorkFromJson(json);

     Map<String, dynamic> toJson() => _$OtherWorkToJson(this);


}