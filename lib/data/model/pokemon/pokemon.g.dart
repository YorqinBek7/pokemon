// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      avg_spawns: (json['avg_spawns'] as num?)?.toDouble() ?? 0.0,
      candy: json['candy'] as String? ?? '',
      candy_count: json['candy_count'] as int? ?? 0,
      egg: json['egg'] as String? ?? '',
      height: json['height'] as String? ?? '',
      img: json['img'] as String? ?? '',
      multipliers: (json['multipliers'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          [],
      name: json['name'] as String? ?? '',
      next_evolution: (json['next_evolution'] as List<dynamic>?)
              ?.map((e) => Evolution.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      num: json['num'] as String? ?? '',
      spawn_chance: (json['spawn_chance'] as num?)?.toDouble() ?? 0.0,
      spawn_time: json['spawn_time'] as String? ?? '',
      type:
          (json['type'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      weaknesses: (json['weaknesses'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      weight: json['weight'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      prev_evolution: (json['prev_evolution'] as List<dynamic>?)
              ?.map((e) => Evolution.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'num': instance.num,
      'name': instance.name,
      'img': instance.img,
      'type': instance.type,
      'height': instance.height,
      'weight': instance.weight,
      'candy': instance.candy,
      'candy_count': instance.candy_count,
      'egg': instance.egg,
      'spawn_chance': instance.spawn_chance,
      'avg_spawns': instance.avg_spawns,
      'spawn_time': instance.spawn_time,
      'multipliers': instance.multipliers,
      'weaknesses': instance.weaknesses,
      'prev_evolution': instance.prev_evolution,
      'next_evolution': instance.next_evolution,
    };
