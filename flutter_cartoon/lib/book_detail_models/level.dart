import 'package:json_annotation/json_annotation.dart';

part 'level.g.dart';

@JsonSerializable()
class Level {
	@JsonKey(name: 'level')
	int level;
	@JsonKey(name: 'min_exp')
	int minExp;
	@JsonKey(name: 'max')
	int max;
	@JsonKey(name: 'exp_speed')
	int expSpeed;
	@JsonKey(name: 'album_size')
	int albumSize;
	@JsonKey(name: 'favorite_num')
	int favoriteNum;
	@JsonKey(name: 'wage')
	int wage;
	@JsonKey(name: 'ticket')
	int ticket;

	Level({this.level, this.minExp, this.max, this.expSpeed, this.albumSize, this.favoriteNum, this.wage, this.ticket});

factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['level'] = this.level;
		data['min_exp'] = this.minExp;
		data['max'] = this.max;
		data['exp_speed'] = this.expSpeed;
		data['album_size'] = this.albumSize;
		data['favorite_num'] = this.favoriteNum;
		data['wage'] = this.wage;
		data['ticket'] = this.ticket;
		return data;
	}
}
