// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CateListModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CateListModel _$CateListModelFromJson(Map<String, dynamic> json) {
  return CateListModel()
    ..sortId = json['sortId'] as int
    ..sortName = json['sortName'] as String
    ..isLike = json['isLike'] as bool
    ..cover = json['cover'] as String
    ..canEdit = json['canEdit'] as bool
    ..argName = json['argName'] as String
    ..argValue = json['argValue'] as int
    ..argCon = json['argCon'] as int;
}

Map<String, dynamic> _$CateListModelToJson(CateListModel instance) =>
    <String, dynamic>{
      'sortId': instance.sortId,
      'sortName': instance.sortName,
      'isLike': instance.isLike,
      'cover': instance.cover,
      'canEdit': instance.canEdit,
      'argName': instance.argName,
      'argValue': instance.argValue,
      'argCon': instance.argCon,
    };
