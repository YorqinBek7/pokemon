// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainData _$MainDataFromJson(Map<String, dynamic> json) => MainData(
      pokemon: (json['pokemon'] as List<dynamic>?)
              ?.map((e) => Pokemon.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MainDataToJson(MainData instance) => <String, dynamic>{
      'pokemon': instance.pokemon,
    };
