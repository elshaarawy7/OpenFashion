import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  final int max;
  final double height;
  final double spacing;

  const CustomText({
    super.key,
    required this.text,
    this.size = 16,
    this.weight = FontWeight.normal,
    this.color = Colors.white,
    this.max = 1,
    this.height = 1.0,
    this.spacing = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: max,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
        height: height,
        letterSpacing: spacing,
      ),
    );
  }
}
