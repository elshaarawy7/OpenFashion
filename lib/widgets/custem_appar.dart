import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opne_fationn/core/color.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.isBlackk});
  final bool isBlackk;

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    bool isBlack = isBlackk;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: AppBar(
        actions: [
          SvgPicture.asset("assets/svgs/Search.svg",color: isBlack ? Colors.white : AppColor.primary),
          SizedBox(width:  20) ,
          SvgPicture.asset("assets/svgs/shopping bag.svg",color: isBlack ? Colors.white : AppColor.primary),
        ],
        leadingWidth: 25,
        centerTitle: true,
        scrolledUnderElevation: 0.0,
        backgroundColor: isBlack ? AppColor.primary : Colors.white,
        leading: SvgPicture.asset("assets/svgs/Menu.svg",color: isBlack ? Colors.white : AppColor.primary),
        title: SvgPicture.asset("assets/logo/logo-bg.svg",color: isBlack ? Colors.white : AppColor.primary),
      ),
    );
  }
}