

import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opne_fationn/core/color.dart';
import 'package:opne_fationn/pages/addres_page.dart';
import 'package:opne_fationn/pages/page_card.dart';
import 'package:opne_fationn/widgets/addres_display.dart';
import 'package:opne_fationn/widgets/card_widget.dart';
import 'package:opne_fationn/widgets/cheakout_batton.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/custem_cnontener.dart';
import 'package:opne_fationn/widgets/custem_text.dart';
import 'package:opne_fationn/widgets/dailog.dart';
import 'package:opne_fationn/widgets/header.dart';
import 'package:opne_fationn/widgets/shaping_method.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({
    super.key,
    required this.image,
    required this.name,
    required this.desp,
    required this.qty,
    required this.total,
    required this.price,
  });
  final String image;
  final String name;
  final int price;
  final String desp;
  final int qty;
  final int total;

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  dynamic _savedAddress;
  dynamic _savedCard;
  late int selectedQty;

  @override
  void initState() {
    selectedQty = widget.qty;
    super.initState();
  }

  /// address
  void _openAddress(context) async {
    final addressData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAddress(
      )),
    );

    if (addressData != null) {
      setState(() {
        _savedAddress = addressData;
      });
    }
  }
  void _editAddress () async {
    final newAddress = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAddress(
        editData: _savedAddress,
      )),
    );

    setState(() {
      _savedAddress = newAddress;
    });


  }

  /// card
  void _openCard () async {
    final cardData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddCard()),
    );

    if (cardData != null) {
      setState(() {
        _savedCard = cardData;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),
    
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(title: "Checkout"),
              _savedCard != null && _savedAddress != null ? SizedBox.shrink() : CustomText(
                text: "Shipping address".toUpperCase(),
                color: Colors.black38,
                max: 2,
                size: 16,
              ),
              Gap(13),
              
              /// address Info
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    _savedAddress != null ? AddressInfo(
                      savedAddress: _savedAddress,
                      onTap: _editAddress,
                    ) : SizedBox.shrink(),
                    Gap(20),
                    _savedAddress == null ? GestureDetector(
                          onTap: () {
                            _openAddress(context);
                          },
                          child: CustemCnontener(

                          text:   "Add shipping address",
                          icon:   Icons.add,
                           isFree:  false,
                          ),
                        ) : SizedBox.shrink(),
                  ],
                ),
              ),
              Gap(10),
              
              /// Shipping Method
              _savedCard != null && _savedAddress != null ? SizedBox.shrink() : ShippingMethod(),
              
              /// payment Method
              _savedCard != null && _savedAddress != null ? SizedBox.shrink() : CustomText(
                text: "Payment Method".toUpperCase(),
                color: Colors.black38,
                size: 16,
              ),

              Gap(20),
              _savedCard != null ? Column(
                children: [
                  Divider(color: Colors.grey.shade300),
                  Gap(20),
                  Row(
                    children: [
                      SvgPicture.asset("assets/svgs/Mastercard.svg",width: 40),
                      Gap(10),
                      CustomText(text: "Master Card ending",color: Colors.black),
                      Gap(10),
                      CustomText(
                        text: "••••${_savedCard['number'].toString().substring(_savedCard['number'].length - 2)}", 
                        color: Colors.black,
                        size: 7,
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/svgs/arrow.svg"),
                    ],
                  ),
                  Gap(20),
                  Divider(color: Colors.grey.shade300),
                ],
              ) : GestureDetector(
                onTap: _openCard,
                child: CustemCnontener(
                text:   "Select Payment Method",
                icon:   Icons.keyboard_arrow_down_sharp,
                 isFree:  false,
                ),
              ),
              
              Gap(20),
              
              _savedCard != null && _savedAddress != null ? CartWidget(
                  image: widget.image,
                  name:  widget.name,
                  descp:  widget.desp,
                  price:  widget.price,
                  qty: widget.qty,
                  onChanged: (qty) => setState(() => selectedQty = qty),
              ) : SizedBox.shrink(),   

              Gap(80),

              /// Ending
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Total", color: AppColor.primary),
                  CustomText(
                    text: "\$ ${widget.price * selectedQty}",
                    color: Colors.red.shade200,
                  ),
                ],
              ),
              Gap(20),
             CheakoutBatton(
              
              Isvg: true,
               title: "Place order",
               onTap: () {
            
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return Dialog(
                        child: CustomDailog(),
                      );
                    }
                );
                
              }),
              Gap(70),
            ],
          ),
        ),
      ),
    );
  }
}
