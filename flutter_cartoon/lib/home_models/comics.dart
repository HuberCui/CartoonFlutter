import 'package:json_annotation/json_annotation.dart';
import 'commic_detail.dart';
part 'comics.g.dart';

@JsonSerializable()
class Comics{
    List <CommicDetail> comics;
    int comicType;
    int canedit;
    String sortId;
    String titleIconUrl;
    String newTitleIconUrl;
    String description;
    String itemTitle;
    String argName;
    int argValue;
    int argType;

    Comics(this.sortId,this.description,this.argName,this.argType,this.argValue,this.canedit,this.comics,this.comicType,this.itemTitle,this.newTitleIconUrl,this.titleIconUrl);
    factory Comics.fromJson(Map<String, dynamic> json) => _$ComicsFromJson(json);

     Map<String, dynamic> toJson() => _$ComicsToJson(this);

}