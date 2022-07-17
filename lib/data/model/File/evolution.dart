import 'package:json_annotation/json_annotation.dart';

part 'evolution.g.dart';

@JsonSerializable()
class Evolution {
  @JsonKey(defaultValue: "", name: "num")
  String num;

  @JsonKey(defaultValue: "", name: "name")
  String name;

  Evolution({required this.name, required this.num});

  factory Evolution.fromJson(Map<String, dynamic> json) =>
      _$EvolutionFromJson(json);

  Map<String, dynamic> toJson() => _$EvolutionToJson(this);
}
