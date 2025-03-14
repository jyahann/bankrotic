// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Record _$RecordFromJson(Map<String, dynamic> json) => _Record(
  date: DateTime.parse(json['date'] as String),
  spends:
      (json['spends'] as List<dynamic>)
          .map((e) => Spend.fromJson(e as Map<String, dynamic>))
          .toSet(),
);

Map<String, dynamic> _$RecordToJson(_Record instance) => <String, dynamic>{
  'date': instance.date.toIso8601String(),
  'spends': instance.spends.toList(),
};

_Spend _$SpendFromJson(Map<String, dynamic> json) =>
    _Spend(tag: json['tag'] as String, cash: (json['cash'] as num).toInt());

Map<String, dynamic> _$SpendToJson(_Spend instance) => <String, dynamic>{
  'tag': instance.tag,
  'cash': instance.cash,
};
