import 'package:bankrotic/extensions/context_extension.dart';
import 'package:bankrotic/ui/animated_size_tap_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextField extends StatefulWidget {
  final void Function(String value)? onSubmitted;
  final void Function()? onClear;
  final void Function()? onTap;
  final String? hintText;
  final TextEditingController? controller;
  final String? initialValue;
  final void Function(String value)? onChanged;
  final bool autofocus;
  final bool disableChanges;
  final bool disabled;
  final bool isLoading;
  final TextInputType keyboardType;
  final FocusNode? focusNode;

  const PrimaryTextField({
    super.key,
    this.onSubmitted,
    this.onClear,
    this.onTap,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.hintText = "Ввести",
    this.disableChanges = false,
    this.autofocus = false,
    this.disabled = false,
    this.isLoading = false,
    this.keyboardType = TextInputType.text,
    this.focusNode,
  });

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  late TextEditingController controller =
      widget.controller ?? TextEditingController();

  late String preValue = widget.initialValue ?? "";

  void setPreValue() {
    controller.value = TextEditingValue(text: preValue);
  }

  @override
  Widget build(BuildContext context) {
    Widget? trailing;

    if (widget.isLoading) {
      trailing = Padding(
        padding: EdgeInsets.only(right: 4.w),
        child: SizedBox.square(
          dimension: 18,
          child: const CircularProgressIndicator(),
        ),
      );
    } else if (preValue.isNotEmpty && widget.onClear != null) {
      trailing = AnimatedSizeTapDetector(
        onTap: widget.onClear,
        child: Container(
          padding: EdgeInsets.all(4.w),
          child: Icon(Icons.close, size: 16.sp, color: Colors.black),
        ),
      );
    }

    return GestureDetector(
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          TextField(
            onChanged: (value) {
              if (widget.disableChanges) {
                setPreValue();
              } else {
                preValue = value;

                if (widget.onChanged != null) {
                  widget.onChanged!(value);
                }
              }
            },
            focusNode: widget.focusNode,
            style: context.textTheme.bodyMedium,
            decoration: InputDecoration(
              hintText: widget.hintText,
              contentPadding: Theme.of(context)
                  .inputDecorationTheme
                  .contentPadding
                  ?.resolve(TextDirection.ltr)
                  .copyWith(right: 76.w, left: 12.w),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(100.r),
              ),
              filled: true,
              fillColor: Color(0xFF3a4d5f),
              hintStyle: TextStyle(color: Colors.white),
            ),
            onSubmitted: (value) {
              widget.onSubmitted?.call(value);
            },
            inputFormatters: [LengthLimitingTextInputFormatter(150)],
            controller: controller,
            autofocus: widget.autofocus,
            enabled: !widget.disabled,
            cursorWidth: 1.w,
            cursorHeight: 16.sp,
            keyboardType: widget.keyboardType,
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (trailing != null)
                  Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: trailing,
                  ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap:
                      controller.value.text.isNotEmpty
                          ? () {
                            widget.onSubmitted != null
                                ? widget.onSubmitted!(controller.text)
                                : null;
                          }
                          : null,
                  child: Material(
                    color: context.colorScheme.primary,
                    shape: const CircleBorder(),
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
