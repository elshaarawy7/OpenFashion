import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:opne_fationn/widgets/custem_text.dart';

class CustemCnontener extends StatelessWidget {
  const CustemCnontener({
    super.key,
    required this.text,
    required this.icon,
    this.isFree,

  });
  final String text;
  final IconData icon;
  final isFree;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0XFFF9F9F9),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: text, color: Color(0XFF555555)),
            Spacer(),
            isFree
                ? CustomText(text: "FREE", color: Colors.black)
                : SizedBox.shrink(),
    
            Gap(20),
            Icon(icon),
          ],
        ),
      ),
    );
  }
}
