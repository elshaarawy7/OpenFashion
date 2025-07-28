import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:opne_fationn/pages/addres_page.dart';
import 'package:opne_fationn/pages/page_card.dart';
import 'package:opne_fationn/widgets/addres_display.dart';
import 'package:opne_fationn/widgets/cheakout_batton.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/custem_cnontener.dart';
import 'package:opne_fationn/widgets/custem_text.dart';
import 'package:opne_fationn/widgets/header.dart';
import 'package:opne_fationn/widgets/shaping_method.dart';

class PlaceOreder extends StatefulWidget {
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
  State<PlaceOreder> createState() => _PlaceOrederState();
}

class _PlaceOrederState extends State<PlaceOreder> {
  dynamic _savedAdres;
  late int selectedQty = 1;
  @override
  void _openAdres(context) async {
    final adressData = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddAddress()),
    );

    if (adressData != null) {
      setState(() {
        _savedAdres = adressData;
      });
    }
  }

  void _editAddress() async {
    final newAddress = await Navigator.push(
      context,
      MaterialPageRoute(builder: (c) => AddAddress(editData: _savedAdres)),
    );

    setState(() {
      _savedAdres = newAddress;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(title: "Cheackouot"),
              Gap(20), 
        
            _savedAdres != null ? AddressInfo(
              savedAddress: _savedAdres, 
              onTap: _editAddress, 
        
             ) : SizedBox.shrink() ,
        
             
              Gap(20),
        
              _savedAdres == null
                  ? GestureDetector(
                    onTap: () {
                      _openAdres(context) ;
                    },
                    child: CustemCnontener(
                        text: "Add shipping adress",
                        isFree: false,
                        icon: Icons.add,
                      ),
                  )
                  : SizedBox.shrink(),
        
              Gap(20),
              ShippingMethod(),
              Gap(30),   

          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return cardPage() ;
              }));
            },
            child: CustemCnontener(
                     text:  "select payment method",
                    icon:   Icons.keyboard_arrow_down_sharp,
                    isFree:   false,
                    ),
          ),
        
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Est. Total", color: Colors.black, size: 20),
                  CustomText(
                   // text: "\$ ${widget.price * selectedQty}",
                   text: "${widget.total * selectedQty}" ,
                    color: Colors.red.shade200,
                    size: 20,
                  ),
                ],
              ), 
        
              Gap(50) ,  
        
        
        
              CheakoutBatton(Isvg: true, title: 'Place order'), 

              Gap(20) ,
            ],
          ),
        ),
      ),
    );
  }
}
