import 'package:flutter/material.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
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
      body: Column(
        
        children: [
          CustomAppbar(isBlackk: false) ,  

          Header(title: "Cheackouot", ) 
          
           
          ]),
    );
  }
}
