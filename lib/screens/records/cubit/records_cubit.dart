import 'package:bankrotic/repositories/chat_repository.dart';
import 'package:bankrotic/repositories/spend_records_repository.dart';
import 'package:bankrotic/models/spend_records.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'records_state.dart';
part 'records_cubit.freezed.dart';

class RecordsCubit extends Cubit<RecordsState> {
  RecordsCubit() : super(RecordsState());

  void init() async {
    await RecordsRepository.instance.init();
    RecordsRepository.instance.addTestRecords();
    final (today, other) = RecordsRepository.instance.getTodayAndOtherRecords();
    emit(state.copyWith(today: today, other: other));
  }

  void setAmount(String amount, {bool changeStep = false}) {
    if (changeStep) {
      emit(
        state.copyWith(
          amount: amount,
          isAmountValid: amount.isNotEmpty,
          step: RecordFormStep.reason,
        ),
      );
    }

    emit(state.copyWith(amount: amount, isAmountValid: amount.isNotEmpty));
  }

  void setStep(RecordFormStep step) {
    emit(state.copyWith(step: step));
  }

  void setReason(String reason, {bool save = false}) {
    emit(state.copyWith(reason: reason, isReasonValid: reason.isNotEmpty));

    if (save) {
      this.save();
    }
  }

  void submit() {
    emit(state.copyWith(chatLoading: true));

    String todayQuery = "";

    if (state.today?.spends.isNotEmpty == true) {
      todayQuery = _queryFromSpend(state.today!.spends);
      todayQuery = "Сегодня я потратил $todayQuery ";
    }

    String otherQuery = "";

    for (var record in state.other) {
      if (record.spends.isNotEmpty) {
        final otherSpend = _queryFromSpend(record.spends);
        final date =
            "${record.date.day}.${record.date.month}.${record.date.year}";
        otherQuery = "$otherQuery, $date числа на $otherSpend";
      }
    }

    ChatRepository.instance
        .getCompletion(
          "$todayQuery$otherQuery сделай мне финансовый совет кратко и максимально рофельно и с подъебами, так же опиши больше про сегодняшние траты, немного забегая на то что было раньше",
        )
        .then((response) {
          emit(state.copyWith(chatMessage: response));
          emit(state.copyWith(chatLoading: false));
        })
        .onError((e, stack) {
          emit(state.copyWith(chatLoading: false));
        });
  }

  String _queryFromSpend(List<Spend> spends) {
    String query = "";

    for (var spend in spends) {
      query = "$query, ${spend.amount} на ${spend.reason}";
    }

    return query;
  }

  void save() {
    if (state.isAmountValid && state.isReasonValid) {
      final spend = Spend(reason: state.reason, amount: state.amount);
      final today = RecordsRepository.instance.addSpend(spend);
      emit(state.copyWith(today: today, step: RecordFormStep.amount));
    }
  }
}
