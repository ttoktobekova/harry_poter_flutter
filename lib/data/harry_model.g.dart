// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'harry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HarryModelImpl _$$HarryModelImplFromJson(Map<String, dynamic> json) =>
    _$HarryModelImpl(
      fullName: json['fullName'] as String,
      nickname: json['nickname'] as String,
      hogwartsHouse: json['hogwartsHouse'] as String,
      interpretedBy: json['interpretedBy'] as String,
      children:
          (json['children'] as List<dynamic>).map((e) => e as String).toList(),
      image: json['image'] as String,
      birthdate: json['birthdate'] as String,
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$$HarryModelImplToJson(_$HarryModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'nickname': instance.nickname,
      'hogwartsHouse': instance.hogwartsHouse,
      'interpretedBy': instance.interpretedBy,
      'children': instance.children,
      'image': instance.image,
      'birthdate': instance.birthdate,
      'index': instance.index,
    };
