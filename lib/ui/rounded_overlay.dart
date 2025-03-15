import 'package:bankrotic/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedOverlay extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Widget child;

  const RoundedOverlay({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.padding,
    this.margin,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? context.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular((borderRadius ?? 16.0).r),
      ),
      padding: padding ?? EdgeInsets.all(12.w),
      margin: margin,
      child: child,
    );
  }
}
