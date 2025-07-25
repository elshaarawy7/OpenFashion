import 'package:flutter/material.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';

class CheakoutPage extends StatelessWidget {
  const CheakoutPage({super.key, required this.image, required this.name, required this.price, required this.desc}); 

  final String image , name , price , desc ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomAppbar(
            isBlackk: false,
          ) ,
        ],
      ),
    );
  }
}