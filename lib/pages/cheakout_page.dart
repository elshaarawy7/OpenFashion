import 'package:flutter/material.dart';
import 'package:opne_fationn/widgets/card_widget.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/header.dart';

class CheakoutPage extends StatefulWidget {
  const CheakoutPage({
    super.key,
    required this.image,
    required this.name,
    required this.desc,
    required this.price ,
  });

  final String image, name,  desc;
  final int price ; 

  @override
  State<CheakoutPage> createState() => _CheakoutPageState();
}

class _CheakoutPageState extends State<CheakoutPage> {
  int selectedQty = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomAppbar(isBlackk: false),

          Header(title: "Checkout"),

          SizedBox(height: 20),

          CartWidget(
            image:widget.image , 
            name: widget.name,
            descp: widget.desc,
            price: widget.price,
            qty:  selectedQty ,
            onChanged: (v) {
              setState(() {
                selectedQty = v ;
              });
            },
          ),
        ],
      ),
    );
  }
}
