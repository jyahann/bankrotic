import 'package:bankrotic/models/spend_records.dart';
import 'package:bankrotic/screens/records/cubit/records_cubit.dart';
import 'package:bankrotic/screens/records/widgets/records_suggestiohs.dart';
import 'package:bankrotic/ui/primary_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordsReasonForm extends StatelessWidget {
  const RecordsReasonForm({super.key});

  @override
  Widget build(BuildContext context) {
    final today = context.select((RecordsCubit cubit) => cubit.state.today);
    final other = context.select((RecordsCubit cubit) => cubit.state.other);

    final suggestions = <String>[];
    for (Spend spend in today?.spends ?? []) {
      suggestions.add(spend.reason);
    }

    for (SpendRecord record in other) {
      for (Spend spend in record.spends) {
        suggestions.add(spend.reason);
      }
    }

    return Column(
      children: [
        Text("На что потратил?", style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(height: 16.sp),
        Padding(
          padding: EdgeInsets.only(left: 4.w, right: 16.w),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  context.read<RecordsCubit>().setStep(RecordFormStep.amount);
                },
                icon: Icon(Icons.arrow_back, color: Colors.white),
              ),
              Flexible(
                child: PrimaryTextField(
                  autofocus: true,
                  onChanged: (value) {
                    context.read<RecordsCubit>().setReason(value);
                  },
                  onSubmitted: (_) {
                    final state = context.read<RecordsCubit>().state;
                    if (state.isAmountValid && state.isReasonValid) {
                      context.read<RecordsCubit>().save();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        RecordsSuggestiohs(
          suggestions: suggestions,
          onTap: (value) {
            context.read<RecordsCubit>().setReason(value, save: true);
          },
        ),
        SizedBox(height: 16.sp),
      ],
    );
  }
}
