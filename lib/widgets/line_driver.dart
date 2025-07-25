import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 1,
      color: Color(0xFF007AFF), // اللون الأزرق المستخدم في التصميم
      margin: EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
    );
  }
}
