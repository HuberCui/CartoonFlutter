// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Level _$LevelFromJson(Map<String, dynamic> json) {
  return Level(
    level: json['level'] as int,
    minExp: json['min_exp'] as int,
    max: json['max'] as int,
    expSpeed: json['exp_speed'] as int,
    albumSize: json['album_size'] as int,
    favoriteNum: json['favorite_num'] as int,
    wage: json['wage'] as int,
    ticket: json['ticket'] as int,
  );
}

Map<String, dynamic> _$LevelToJson(Level instance) => <String, dynamic>{
      'level': instance.level,
      'min_exp': instance.minExp,
      'max': instance.max,
      'exp_speed': instance.expSpeed,
      'album_size': instance.albumSize,
      'favorite_num': instance.favoriteNum,
      'wage': instance.wage,
      'ticket': instance.ticket,
    };
