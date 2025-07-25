import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opne_fationn/widgets/custem_text.dart';
import 'package:opne_fationn/widgets/line_driver.dart';

class Promo extends StatelessWidget {
  const Promo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/svgs/promo.svg" , width: 30, color: Colors.black,) , 
              Gap(20) ,
              CustomText(text: "Add promo code", color: Colors.black,) , 
              Gap(20) ,
            ],
          ),
         LineDivider() , 

         Row(
            children: [
              SvgPicture.asset("assets/svgs/delivery.svg" , width: 30, color: Colors.black,) , 
              Gap(20) ,
              CustomText(text: "Delivery", color: Colors.black,) , 
              Spacer() ,
              CustomText(text: "Free" , color: Colors.black,) ,
              Gap(20) ,
            ],
          ),
              LineDivider() ,
        ],
      ),
    );
  }
}