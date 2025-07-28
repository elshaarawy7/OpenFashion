import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:opne_fationn/pages/place_oreder.dart';
import 'package:opne_fationn/widgets/card_widget.dart';
import 'package:opne_fationn/widgets/cheakout_batton.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/custem_text.dart';
import 'package:opne_fationn/widgets/header.dart';
import 'package:opne_fationn/widgets/line_driver.dart';
import 'package:opne_fationn/widgets/promo.dart';

class CheakoutPage extends StatefulWidget {
  const CheakoutPage({
    super.key,
    required this.image,
    required this.name,
    required this.desc,
    required this.price,
  });

  final String image, name, desc;
  final int price;

  @override
  State<CheakoutPage> createState() => _CheakoutPageState();
}

class _CheakoutPageState extends State<CheakoutPage> {
  int selectedQty = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
        child: Column(
          children: [
            CustomAppbar(isBlackk: false),

            Header(title: "Checkout"),

            SizedBox(height: 20),

            CartWidget(
              image: widget.image,
              name: widget.name,
              descp: widget.desc,
              price: widget.price,
              qty: selectedQty,
              onChanged: (v) {
                setState(() {
                  selectedQty = v;
                });
              },
            ),

            //promo(),
            SizedBox(height: 10),

            LineDivider(),

            Gap(20),

            Promo(),

            Gap(200),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Est. Total", color: Colors.black, size: 20),
                CustomText(
                  text: "\$ ${widget.price * selectedQty}",
                  color: Colors.red.shade200,
                  size: 20,
                ),
              ],
            ),

            Gap(30),
            CheakoutBatton(
              Isvg: true,
              title: "Checkout",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PlaceOrder(
                        desp: widget.desc,
                        image: widget.image,
                        name: widget.name,
                        price: widget.price,
                        total: widget.price * selectedQty,
                        qty: selectedQty,
                      );
                    },
                  ),
                );
              },
            ),
       
          ],
        ),
      ),
    );
  }
}
