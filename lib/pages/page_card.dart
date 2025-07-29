import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:opne_fationn/widgets/cheakout_batton.dart';
import 'package:opne_fationn/widgets/custem_appar.dart';
import 'package:opne_fationn/widgets/header.dart';

class cardPage extends StatefulWidget {
  const cardPage({super.key});

  @override
 
   State<cardPage> createState() => _cardPageState(); 

   
}

class _cardPageState extends State<cardPage> {

   String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isShow = false; 

    final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: CustomAppbar(isBlackk: false), 
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            child: Column(
              children: [
                Header(title: "Payment method") ,  
            
                  CreditCardWidget(
                        padding: 6,
                        cardNumber: cardNumber,
                        expiryDate: expiryDate,
                        cardHolderName: cardHolderName,
                        cvvCode: cvvCode,
                        showBackView: isShow,
                        onCreditCardWidgetChange: (v) {},
                        cardBgColor: Color(0xff505664),
                        obscureCardCvv: false,
                        obscureCardNumber: true,
                        isHolderNameVisible: true,
                      ),  
          
          
                      CreditCardForm(
                      formKey: _key,
                      cardNumber: cardNumber,
                      expiryDate: expiryDate,
                      cardHolderName: cardHolderName,
                      cvvCode: cvvCode,
                      onCreditCardModelChange: onCreditCardModelChange,
                      isCardHolderNameUpperCase: true,
                      obscureCvv: false,
                      inputConfiguration: InputConfiguration(
                        cardNumberTextStyle: TextStyle(fontFamily: "TenorSans"),
                        cardNumberDecoration: InputDecoration(
                          hintText: "Card Number",
                          hintStyle: TextStyle(fontFamily: "TenorSans"),
                          counterStyle: TextStyle(color: Colors.black),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
          
                          ), 
                        )
                      )
                      )  ,
      
                      CheakoutBatton(
                      
                        Isvg: false,
                        title: "Add Card", 
                         onTap: () {

                      if(_key.currentState!.validate()) {
                        final data = {
                          'number' : cardNumber,
                          'name' : cardHolderName,
                          'date' : expiryDate,
                          'cvv' : cvvCode,
                        };

                        Navigator.pop(context,data);
                      }
                    },
                      ) ,  

                      
      
                      
              ],
            
            
            ),
          ),
        ),
      ),
    );
  } 

  
 void onCreditCardModelChange(CreditCardModel data) { 

    setState(() { 

       cardNumber = data.cardNumber;
      cardHolderName = data.cardHolderName;
      cvvCode = data.cvvCode;
      expiryDate = data.expiryDate;
      isShow = data.isCvvFocused;
      
    } ) ;
} 

} 
  

