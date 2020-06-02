import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AAA {
  String aaa;
 String get getAaa => aaa;

 set setAaa(String aaa) => this.aaa = aaa;
  AAA(this.aaa);
}
