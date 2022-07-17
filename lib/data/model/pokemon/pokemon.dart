import 'package:json_annotation/json_annotation.dart';
import 'package:pokemon/data/model/File/evolution.dart';

part 'pokemon.g.dart';

@JsonSerializable()
class Pokemon {
  @JsonKey(defaultValue: 0, name: "id")
  int id;

  @JsonKey(defaultValue: "", name: "num")
  String num;

  @JsonKey(defaultValue: "", name: "name")
  String name;

  @JsonKey(defaultValue: "", name: "img")
  String img;

  @JsonKey(defaultValue: [], name: "type")
  List<String> type;

  @JsonKey(defaultValue: "", name: "height")
  String height;

  @JsonKey(defaultValue: "", name: "weight")
  String weight;

  @JsonKey(defaultValue: "", name: "candy")
  String candy;

  @JsonKey(defaultValue: 0, name: "candy_count")
  int candy_count;

  @JsonKey(defaultValue: "", name: "egg")
  String egg;

  @JsonKey(defaultValue: 0.0, name: "spawn_chance")
  double spawn_chance;

  @JsonKey(defaultValue: 0.0, name: "avg_spawns")
  double avg_spawns;

  @JsonKey(defaultValue: "", name: "spawn_time")
  String spawn_time;

  @JsonKey(defaultValue: [], name: "multipliers")
  List<double> multipliers;

  @JsonKey(defaultValue: [], name: "weaknesses")
  List<String> weaknesses;

  @JsonKey(defaultValue: [], name: "prev_evolution")
  List<Evolution> prev_evolution;

  @JsonKey(defaultValue: [], name: "next_evolution")
  List<Evolution> next_evolution;

  Pokemon(
      {required this.avg_spawns,
      required this.candy,
      required this.candy_count,
      required this.egg,
      required this.height,
      required this.img,
      required this.multipliers,
      required this.name,
      required this.next_evolution,
      required this.num,
      required this.spawn_chance,
      required this.spawn_time,
      required this.type,
      required this.weaknesses,
      required this.weight,
      required this.id,
      required this.prev_evolution});

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> ToJson() => _$PokemonToJson(this);
}


//  "id": 1,
//             "num": "001",
//             "name": "Bulbasaur",
//             "img": "http://www.serebii.net/pokemongo/pokemon/001.png",
//             "type": [
//                 "Grass",
//                 "Poison"
//             ],
//             "height": "0.71 m",
//             "weight": "6.9 kg",
//             "candy": "Bulbasaur Candy",
//             "candy_count": 25,
//             "egg": "2 km",
//             "spawn_chance": 0.69,
//             "avg_spawns": 69,
//             "spawn_time": "20:00",
//             "multipliers": [
//                 1.58
//             ],
//             "weaknesses": [
//                 "Fire",
//                 "Ice",
//                 "Flying",
//                 "Psychic"
//             ],
//             "next_evolution": [
//                 {
//                     "num": "002",
//                     "name": "Ivysaur"
//                 },
//                 {
//                     "num": "003",
//                     "name": "Venusaur"
//                 }
//             ]
//         },