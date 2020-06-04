import 'package:json_annotation/json_annotation.dart';


part 'CateListModel.g.dart';

@JsonSerializable()
class CateListModel {
      CateListModel();

  int sortId;
  String sortName;
  bool isLike;
  String cover;
  bool canEdit;
  String argName;
  int argValue;
  int argCon;

  factory CateListModel.fromJson(Map<String,dynamic> json) => _$CateListModelFromJson(json);
  Map<String, dynamic> toJson() => _$CateListModelToJson(this);
}
