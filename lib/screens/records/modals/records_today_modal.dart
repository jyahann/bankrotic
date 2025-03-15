import 'package:bankrotic/extensions/context_extension.dart';
import 'package:bankrotic/models/spend_records.dart';
import 'package:bankrotic/screens/records/cubit/records_cubit.dart';
import 'package:bankrotic/ui/primary_button.dart';
import 'package:bankrotic/ui/primary_modal_bottom_sheet.dart';
import 'package:bankrotic/ui/rounded_overlay.dart';
import 'package:bankrotic/ui/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class RecordsTodayModal extends StatefulWidget {
  const RecordsTodayModal({super.key});

  @override
  State<RecordsTodayModal> createState() => _RecordsTodayModalState();

  static Future<void> showModal(BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (context) => RecordsTodayModal(),
    );
  }
}

class _RecordsTodayModalState extends State<RecordsTodayModal> {
  bool submitted = false;

  @override
  Widget build(BuildContext context) {
    final spends = context.select(
      (RecordsCubit cubit) => cubit.state.today!.spends,
    );

    final isLoading = context.select(
      (RecordsCubit cubit) => cubit.state.chatLoading,
    );

    final chatMessage = context.select(
      (RecordsCubit cubit) => cubit.state.chatMessage,
    );

    return PrimaryModalBottomSheet(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
      child:
          submitted
              ? buildMessageOverlay(isLoading, chatMessage)
              : buildPreUI(spends),
    );
  }

  Column buildPreUI(List<Spend> spends) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Bankrotic", style: TextStyle(fontWeight: FontWeight.w600)),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 4.w,
            runSpacing: 4.w,
            children: spends.map((value) => buildHistory(value)).toList(),
          ),
        ),
        PrimaryButton(
          label: "Получить наставничество",
          onTap: () {
            context.read<RecordsCubit>().submit();

            setState(() {
              submitted = true;
            });
          },
        ),
        SizedBox(height: context.padding.bottom),
      ],
    );
  }

  Widget buildMessageOverlay(bool isLoading, String message) {
    return Skeletonizer(
      enabled: isLoading,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: context.sizeScreen.height * 0.8),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: context.padding.bottom),
            child: RoundedOverlay(
              child:
                  isLoading
                      ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lorem asdasd as das dasdasdasd asdasda"),
                          SizedBox(height: 8.h),
                          Text(
                            "lorem asdasd as das dasdasdasd asdasda asdasdasd asdasdasd asdasda asdaasd asd",
                          ),
                          SizedBox(height: 8.h),
                          Text("lorem asdasd as das dasdasdasd"),
                        ],
                      )
                      : StyledText(message),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHistory(Spend spend) {
    final label = "${spend.amount} на ${spend.reason}";

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOutSine,
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Icon(Icons.close, color: Colors.white, size: 12.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
