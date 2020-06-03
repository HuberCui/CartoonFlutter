import 'package:json_annotation/json_annotation.dart';

part 'other_works.g.dart';

//其他作品
@JsonSerializable()
class OtherWorkModel{
  String comicId;
  String coverUrl;
  String name;
  String passChapterNum;
  OtherWorkModel(this.name,this.comicId,this.coverUrl,this.passChapterNum);
    factory OtherWorkModel.fromJson(Map<String, dynamic> json) => _$OtherWorkModelFromJson(json);

     Map<String, dynamic> toJson() => _$OtherWorkModelToJson(this);


}