import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opne_fationn/core/color.dart';
import 'package:opne_fationn/widgets/Custem_grade_view.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/custem_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: CustomAppbar(isBlackk: true),

      body: Stack(
        children: [
          // txsts
          Positioned(
            top: 18,
            left: 10,
            right: 10,
            child: SvgPicture.asset("assets/texts/10.svg"),
          ),

          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/October.svg"),
          ),
          Positioned(
            top: 85,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/texts/Collection.svg"),
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 150),

                  Image.asset("assets/cover/cover1.png"),

                  SizedBox(height: 20),

                   CustemGradeView() ,

                  SizedBox(height: 20,) , 
                 CustomText(text: "You may also like".toUpperCase(),size: 26),


                  SizedBox(height: 300,) ,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
