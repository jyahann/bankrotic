import 'package:bankrotic/extensions/context_extension.dart';
import 'package:bankrotic/ui/animated_size_tap_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final bool isLoading;
  final bool disabled;
  final Color? backgroundInactiveColor;
  final Color? backgroundColor;
  final Color? labelColor;
  final Widget? icon;

  final double? iconSpacing;

  final String label;

  final TextStyle? labelStyle;

  // default 16.r
  final double? borderRadius;

  // default EdgeInsets.all(12.w)
  final EdgeInsets? padding;

  // default 22.h
  final double? height;

  final void Function() onTap;

  final MainAxisSize mainAxisSize;
  final Border? border;

  const PrimaryButton({
    super.key,
    this.isLoading = false,
    this.disabled = false,
    this.icon,
    this.iconSpacing,
    required this.label,
    this.labelStyle,
    required this.onTap,
    this.backgroundColor,
    this.labelColor,
    this.backgroundInactiveColor,
    this.borderRadius,
    this.padding,
    this.height,
    this.mainAxisSize = MainAxisSize.max,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    final background =
        (disabled && !isLoading)
            ? (backgroundInactiveColor ??
                context.colorScheme.secondaryContainer)
            : (backgroundColor ?? context.colorScheme.primary);

    final labelColor = this.labelColor ?? Colors.white;

    return AnimatedSizeTapDetector(
      onTap: (disabled || isLoading) ? null : onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOutSine,
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.r),
          border: border,
        ),
        child: Padding(
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: mainAxisSize,
              children: [
                if (icon != null && !isLoading)
                  Padding(
                    padding: EdgeInsets.only(right: iconSpacing ?? 4.w),
                    child: icon!,
                  ),
                !isLoading
                    ? Text(
                      label,
                      style:
                          labelStyle ??
                          TextStyle(
                            color:
                                this.labelColor ??
                                (disabled
                                    ? context.colorScheme.secondary
                                    : Colors.white),
                          ),
                    )
                    : SizedBox(
                      height: height ?? 24.w,
                      child: CircularProgressIndicator(
                        color: labelColor,
                        backgroundColor: labelColor.withOpacity(0.2),
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
