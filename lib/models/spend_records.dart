import 'package:freezed_annotation/freezed_annotation.dart';

part 'spend_records.freezed.dart';
part 'spend_records.g.dart';

@freezed
sealed class SpendRecord with _$SpendRecord {
  const factory SpendRecord({
    required DateTime date,
    required List<Spend> spends,
  }) = _SpendRecord;

  factory SpendRecord.fromJson(Map<String, Object?> json) =>
      _$SpendRecordFromJson(json);
}

@freezed
sealed class Spend with _$Spend {
  const Spend._();

  const factory Spend({required String reason, required String amount}) =
      _Spend;

  factory Spend.fromJson(Map<String, Object?> json) => _$SpendFromJson(json);
}
