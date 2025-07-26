import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/custem_cnontener.dart';
import 'package:opne_fationn/widgets/custem_text.dart';
import 'package:opne_fationn/widgets/header.dart';

class PlaceOreder extends StatelessWidget {
  const PlaceOreder({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.qty,
    required this.total,
  });
  final String image, name;
  final int price, qty, total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomAppbar(isBlackk: false) , 
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(title: "Cheackouot", )  , 
            Gap(20) ,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Shipping adress" , color: Colors.black38, size: 22,) ,  
                    Gap(10) , 
                    CustomText(text: "Iris Watson" , color: Colors.black, size: 20,) ,
                    Gap(10) ,
                    CustomText(text: "606-3727 Ullamcorper. Street" , color: Colors.black, size: 16,) ,
                    Gap(10) ,
                    CustomText(text: "Roseville NH 11523" , color: Colors.black, size: 16,) ,
                    Gap(10) ,
                    CustomText(text: "(786) 713-8616" , color: Colors.black, size: 16,),
                  ],
                ), 

                Icon(Icons.arrow_back_ios , size: 20, color: Colors.grey,)
              ],
            ) , 

            Gap(20) , 
            CustemCnontener() ,
            
             
            ]),
      ),
    );
  }
}
