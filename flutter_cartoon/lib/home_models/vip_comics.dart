import 'package:json_annotation/json_annotation.dart';
import 'package:fluttercartoon/home_models/commic_detail.dart';
part 'vip_comics.g.dart';

@JsonSerializable()
class VIP_Comic{
    List <CommicDetail> comics;
    bool canMore;//有没有更多
    String argName;
    String argValue;
    String itemTitle;
    String titleIconUrl;
    String newTitleIconUrl;
    int maxSize;
    String description;
    VIP_Comic(this.comics,this.itemTitle,this.maxSize,this.titleIconUrl,this.newTitleIconUrl,this.argValue,this.argName,this.description,this.canMore);
    factory VIP_Comic.fromJson(Map<String, dynamic> json) => _$VIP_ComicFromJson(json);

     Map<String, dynamic> toJson() => _$VIP_ComicToJson(this);

}