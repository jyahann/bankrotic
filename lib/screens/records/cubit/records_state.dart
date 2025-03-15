part of 'records_cubit.dart';

enum RecordFormStep { amount, reason }

@freezed
abstract class RecordsState with _$RecordsState {
  const factory RecordsState({
    @Default(RecordFormStep.amount) RecordFormStep step,
    SpendRecord? today,
    @Default([]) List<SpendRecord> other,
    @Default("") String amount,
    @Default("") String reason,
    @Default(false) bool isAmountValid,
    @Default(false) bool isReasonValid,
    @Default("") String chatMessage,
    @Default(false) bool chatLoading,
  }) = _RecordsState;
}
