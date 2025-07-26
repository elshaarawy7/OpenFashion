import 'package:flutter/material.dart';

class CustemCnontener extends StatelessWidget {
  const CustemCnontener({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 20 , vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black, 
          borderRadius: BorderRadius.circular(12) ,
        ),
      ),
    );
  }
}