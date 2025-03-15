import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  Size get sizeScreen => MediaQuery.of(this).size;
  EdgeInsets get padding => MediaQuery.of(this).padding;
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
}
