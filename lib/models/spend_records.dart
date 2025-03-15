import 'package:freezed_annotation/freezed_annotation.dart';

part 'spend_records.freezed.dart';
part 'spend_records.g.dart';

@freezed
sealed class Record with _$Record {
  const factory Record({required DateTime date, required List<String> spends}) =
      _Record;

  factory Record.fromJson(Map<String, Object?> json) => _$RecordFromJson(json);
}
