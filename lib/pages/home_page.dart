import 'package:flutter/material.dart';
import 'package:opne_fationn/core/color.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary , 
      appBar: CustomAppbar(
        isBlackk: true,
      ), 
      
    ) ;
  }
}