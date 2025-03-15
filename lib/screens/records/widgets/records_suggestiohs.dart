import 'package:bankrotic/extensions/context_extension.dart';
import 'package:bankrotic/ui/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecordsSuggestiohs extends StatelessWidget {
  final List<String> suggestions;
  final bool disabled;
  final void Function(String value) onTap;

  const RecordsSuggestiohs({
    super.key,
    required this.suggestions,
    required this.onTap,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w).copyWith(top: 12.h),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.w,
        runSpacing: 8.w,
        children:
            suggestions
                .take(7)
                .map(
                  (value) => PrimaryButton(
                    label: value,
                    padding: EdgeInsets.symmetric(
                      vertical: 4.h,
                      horizontal: 8.w,
                    ),
                    onTap: () {
                      onTap(value);
                    },
                    disabled: disabled,
                    labelStyle: TextStyle(
                      color:
                          disabled
                              ? context.colorScheme.secondary
                              : Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    borderRadius: 12.r,
                    mainAxisSize: MainAxisSize.min,
                  ),
                )
                .toList(),
      ),
    );
  }
}
