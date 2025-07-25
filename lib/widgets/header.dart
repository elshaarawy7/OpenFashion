import 'package:flutter/material.dart';
import 'package:opne_fationn/core/color.dart';
import 'package:opne_fationn/widgets/custem_text.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Center(
          child: CustomText(
            text: title.toUpperCase(),
            spacing: 4,
            size: 20,
            color: AppColor.primary,
          ), 

        ), 
          Image.asset('assets/svgs/line.png', width: 190),
      ],
    );
  }
}
