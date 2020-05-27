// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comics _$ComicsFromJson(Map<String, dynamic> json) {
  if(json["itemTitle"] == "最新动画"){
    print("zuixindonghua");
  }
  return Comics(
    json['sortId'] as String,
    json['description'] as String,
    json['argName'] as String,
    json['argType'] as int,
    json['argValue'] as int,
    json['canedit'] as int,
    (json['comics'] as List)
        ?.map((e) =>
            e == null ? null : CommicDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['comicType'] as int,
    json['itemTitle'] as String,
    json['newTitleIconUrl'] as String,
    json['titleIconUrl'] as String,
  );
}

Map<String, dynamic> _$ComicsToJson(Comics instance) => <String, dynamic>{
      'comics': instance.comics,
      'comicType': instance.comicType,
      'canedit': instance.canedit,
      'sortId': instance.sortId,
      'titleIconUrl': instance.titleIconUrl,
      'newTitleIconUrl': instance.newTitleIconUrl,
      'description': instance.description,
      'itemTitle': instance.itemTitle,
      'argName': instance.argName,
      'argValue': instance.argValue,
      'argType': instance.argType,
    };
