import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opne_fationn/core/color.dart';
import 'package:opne_fationn/widgets/custem_text.dart';

class CheakoutBatton extends StatelessWidget {
  const CheakoutBatton({super.key, required this.Isvg, required this.title, this.onTap});

  final bool Isvg ;
  final String title  ; 
  final void Function()? onTap ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: double.infinity, 
        height: 80,
        decoration: BoxDecoration(
        color: AppColor.primary, 
          borderRadius: BorderRadius.circular(12)
        ),
        padding: EdgeInsets.symmetric(horizontal: 13 , vertical: 16),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
            Isvg ? SvgPicture.asset("assets/svgs/shopping bag.svg") :  
            SizedBox.shrink() ,  
            Gap(10) ,
            CustomText(text: title.toUpperCase(), size: 18,) ,
            ],
          ),
        ), 

      ) ,
      );
  }
}