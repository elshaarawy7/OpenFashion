import 'package:flutter/material.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/header.dart';

class cardPage extends StatelessWidget {
  const cardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false), 
      body: Column(
        children: [
          Header(title: "Payment method") , 
          
        ],
      ),
    );
  }
}