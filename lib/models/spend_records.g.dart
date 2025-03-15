// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spend_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpendRecord _$SpendRecordFromJson(Map<String, dynamic> json) => _SpendRecord(
  date: DateTime.parse(json['date'] as String),
  spends:
      (json['spends'] as List<dynamic>)
          .map((e) => Spend.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SpendRecordToJson(_SpendRecord instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'spends': instance.spends,
    };

_Spend _$SpendFromJson(Map<String, dynamic> json) =>
    _Spend(reason: json['reason'] as String, amount: json['amount'] as String);

Map<String, dynamic> _$SpendToJson(_Spend instance) => <String, dynamic>{
  'reason': instance.reason,
  'amount': instance.amount,
};
