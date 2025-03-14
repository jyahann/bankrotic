import 'package:freezed_annotation/freezed_annotation.dart';

part 'spend_records.freezed.dart';
part 'spend_records.g.dart';

@freezed
sealed class Record with _$Record {
  const factory Record({
    required DateTime date,
    required Set<Spend> spends,
  }) = _Record;

  factory Record.fromJson(Map<String, Object?> json) =>
      _$RecordFromJson(json);
}

@freezed
sealed class Spend with _$Spend {
  const Spend._();

  const factory Spend({required String tag, required int cash}) = _Spend;

  factory Spend.fromJson(Map<String, Object?> json) => _$SpendFromJson(json);

  @override
  bool operator ==(Object other) => other is Spend && other.tag == tag;

  @override
  int get hashCode => tag.hashCode;
}
