import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:opne_fationn/widgets/custem_cnontener.dart';
import 'package:opne_fationn/widgets/custem_text.dart';


class ShippingMethod extends StatelessWidget {
  const ShippingMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ 
        
        Gap(20) ,
        CustomText(
          text: "Shipping Method".toUpperCase(),
          color: Colors.black38,
          size: 16,
        ),
        Gap(20),
        CustemCnontener(
         text:  "Pickup at store",
        icon:   Icons.keyboard_arrow_down_sharp,
        isFree:   true,
        ), 
        Gap(20) , 
         CustomText(
          text: "Payment method".toUpperCase(),
          color: Colors.black38,
          size: 16,
        ), 
        Gap(20) , 
        CustemCnontener(
         text:  "select payment method",
        icon:   Icons.keyboard_arrow_down_sharp,
        isFree:   false,
        ),
      ],
    );
  }
}
