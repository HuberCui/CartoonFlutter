// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vip_comics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VIP_Comic _$VIP_ComicFromJson(Map<String, dynamic> json) {
  return VIP_Comic(
    (json['comics'] as List)
        ?.map((e) =>
            e == null ? null : CommicDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['itemTitle'] as String,
    json['maxSize'] as int,
    json['titleIconUrl'] as String,
    json['newTitleIconUrl'] as String,
    json['argValue'] as String,
    json['argName'] as String,
    json['description'] as String,
    json['canMore'] as bool,
  );
}

Map<String, dynamic> _$VIP_ComicToJson(VIP_Comic instance) => <String, dynamic>{
      'comics': instance.comics,
      'canMore': instance.canMore,
      'argName': instance.argName,
      'argValue': instance.argValue,
      'itemTitle': instance.itemTitle,
      'titleIconUrl': instance.titleIconUrl,
      'newTitleIconUrl': instance.newTitleIconUrl,
      'maxSize': instance.maxSize,
      'description': instance.description,
    };
