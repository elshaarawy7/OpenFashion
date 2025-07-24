import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustemAppar extends StatefulWidget {
  const CustemAppar({super.key, required this.backGroundColor});

  final bool backGroundColor;

  @override
  State<CustemAppar> createState() => _CustemApparState();
}

class _CustemApparState extends State<CustemAppar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8), // ✅ استخدم const هنا
      child: AppBar(
        backgroundColor: widget.backGroundColor
            ? Colors.white
            : Colors.black, // ✅ مثال استخدام قيمة المتغير
        actions: [
          SvgPicture.asset(
            "assets/svgs/Search.svg",
            color: widget.backGroundColor ? Colors.white : Colors.black,
          ),
          const SizedBox(width: 10),
          SvgPicture.asset(
            "assets/svgs/shopping bag.svg",
            color: widget.backGroundColor ? Colors.white : Colors.black,
          ),
        ],

        centerTitle: true,
        leadingWidth: 25,
        scrolledUnderElevation: 0.0,
        leading: SvgPicture.asset(
          "assets/svgs/Menu.svg",
          color: widget.backGroundColor ? Colors.white : Colors.black,
        ),
        title: SvgPicture.asset(
          "assets/logo/logo-bg.svg",
          color: widget.backGroundColor ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
