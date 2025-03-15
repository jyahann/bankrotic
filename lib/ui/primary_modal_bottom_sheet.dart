import 'package:bankrotic/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryModalBottomSheet extends StatelessWidget {
  final EdgeInsets? contentPadding;
  final bool dragLine;
  final Widget child;

  const PrimaryModalBottomSheet({
    super.key,
    this.contentPadding,
    this.dragLine = true,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 200),
      curve: Curves.decelerate,
      alignment: Alignment.bottomCenter,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.r),
            topRight: Radius.circular(16.r),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            !dragLine
                ? SizedBox(height: 12.h)
                : Container(
                  width: 60.w,
                  height: 4.h,
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.r),
                    color: context.colorScheme.surface,
                  ),
                ),
            Padding(
              padding:
                  contentPadding ??
                  EdgeInsets.only(
                    left: 16.w,
                    right: 16.w,
                    top: 4.h,
                    bottom: 12.h,
                  ).copyWith(
                    bottom: 12.h + MediaQuery.of(context).padding.bottom,
                  ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
