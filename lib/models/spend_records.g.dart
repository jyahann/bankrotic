// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Record _$RecordFromJson(Map<String, dynamic> json) => _Record(
  date: DateTime.parse(json['date'] as String),
  spends: (json['spends'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$RecordToJson(_Record instance) => <String, dynamic>{
  'date': instance.date.toIso8601String(),
  'spends': instance.spends,
};
