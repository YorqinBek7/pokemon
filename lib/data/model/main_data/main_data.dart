import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/pokemon/pokemon.dart';

part 'main_data.g.dart';

@JsonSerializable()
class MainData {
  @JsonKey(defaultValue: [], name: "pokemon")
  List<Pokemon> pokemon;

  MainData({required this.pokemon});

  factory MainData.fromJson(Map<String, dynamic> json) =>
      _$MainDataFromJson(json);

  Map<String, dynamic> ToJson() => _$MainDataToJson(this);
}
