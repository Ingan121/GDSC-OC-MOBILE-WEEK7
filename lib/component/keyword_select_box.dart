import 'package:flutter/material.dart';
import 'package:week7/common/const/text.dart';

class KeywordSelectBox extends StatelessWidget {
  const KeywordSelectBox({
    super.key,
    required this.keywords,
    required this.selected,
    required this.index,
  });

  final List<String> keywords;
  final List<bool> selected;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${keywords[index]}",
            style: TextStyle(
              fontSize: 16,
              fontWeight: W900,
              color: Color(0xFF313131),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border.all(color: selected[index] ? Color(0xFF313131) : Color(0xFFECECEC), width: 1),
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFFFFF),
      ),
    );
  }
}
