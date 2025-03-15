import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StyledText extends StatelessWidget {
  final String text;

  StyledText(this.text);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(fontSize: 14.sp, color: Colors.white),
        children: _parseText(text),
      ),
    );
  }

  List<TextSpan> _parseText(String text) {
    final regex = RegExp(r'(\*\*(.*?)\*\*|\*(.*?)\*)');
    final matches = regex.allMatches(text);

    List<TextSpan> spans = [];
    int lastMatchEnd = 0;

    for (var match in matches) {
      if (match.start > lastMatchEnd) {
        spans.add(TextSpan(text: text.substring(lastMatchEnd, match.start)));
      }

      if (match.group(2) != null) {
        // **Жирный текст**
        spans.add(
          TextSpan(
            text: match.group(2),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      } else if (match.group(3) != null) {
        // *Курсивный текст*
        spans.add(
          TextSpan(
            text: match.group(3),
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        );
      }

      lastMatchEnd = match.end;
    }

    if (lastMatchEnd < text.length) {
      spans.add(TextSpan(text: text.substring(lastMatchEnd)));
    }

    return spans;
  }
}
