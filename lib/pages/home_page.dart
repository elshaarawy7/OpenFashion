import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:opne_fationn/core/color.dart';
import 'package:opne_fationn/widgets/Custem_grade_view.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/custem_list_view.dart';
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

                  CustemGradeView(),

                  SizedBox(height: 20),
                  CustomText(text: "You may also like".toUpperCase(), size: 26),

                  SizedBox(height: 20),

                  CustemListView(),

                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Ionicons.logo_twitter, color: Colors.white),
                            SizedBox(width: 25),
                            Icon(Ionicons.logo_instagram, color: Colors.white),
                            SizedBox(width: 25),
                            Icon(Ionicons.logo_facebook, color: Colors.white),
                          ],
                        ),
                        SizedBox(height: 20),
                        Image.asset('assets/svgs/line.png', width: 190),

                        SizedBox(height: 20),

                        CustomText(
                          max: 3,
                          height: 2.5,
                          text:
                              "support@openui.design \n       +60 825 876 \n08:00 - 22:00 - Everyday",
                        ),

                        SizedBox(height: 20),

                        Image.asset('assets/svgs/line.png', width: 190),

                        CustomText(
                          max: 3,
                          height: 2.5,
                          text: "About   Contact    Blog",
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
