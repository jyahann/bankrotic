import 'package:bankrotic/models/spend_records.dart';
import 'package:bankrotic/screens/records/cubit/records_cubit.dart';
import 'package:bankrotic/screens/records/widgets/records_suggestiohs.dart';
import 'package:bankrotic/ui/primary_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordsAmountForm extends StatelessWidget {
  const RecordsAmountForm({super.key});

  @override
  Widget build(BuildContext context) {
    final today = context.select((RecordsCubit cubit) => cubit.state.today);
    final other = context.select((RecordsCubit cubit) => cubit.state.other);

    final suggestions = <String>[];
    for (Spend spend in today?.spends ?? []) {
      suggestions.add(spend.amount);
    }

    for (SpendRecord record in other) {
      for (Spend spend in record.spends) {
        suggestions.add(spend.amount);
      }
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Text(
            "Сколько на этот раз?",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16.sp),
          PrimaryTextField(
            autofocus: true,
            onChanged: (value) {
              context.read<RecordsCubit>().setAmount(value);
            },
            onSubmitted: (_) {
              final state = context.read<RecordsCubit>().state;
              if (state.isAmountValid) {
                context.read<RecordsCubit>().setStep(RecordFormStep.reason);
              }
            },
          ),
          RecordsSuggestiohs(
            suggestions: suggestions,
            onTap: (value) {
              context.read<RecordsCubit>().setAmount(value, changeStep: true);
            },
          ),
        ],
      ),
    );
  }
}
