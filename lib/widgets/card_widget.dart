import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:opne_fationn/core/color.dart';
import 'package:opne_fationn/widgets/custem_text.dart';


class CartWidget extends StatefulWidget {
  const CartWidget({
    super.key,
    required this.image,
    required this.name,
    required this.descp,
    required this.price,
    required this.onChanged,
    required this.qty,
  });
  final String image, name, descp;
  final int price;
  final Function(int) onChanged;
  final int qty;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
 late int number;

 @override
  void initState() {
    number = 1;
    number = widget.qty;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Image.asset(widget.image, width: 120),
        SizedBox(height: 20,) ,

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              CustomText(
                text: widget.name.toUpperCase(),
                spacing: 4,
                color: AppColor.primary,
              ),
             SizedBox(height: 20,) ,
              SizedBox(
                width: size.width * 0.6,
                child: CustomText(
                  text: widget.descp.toUpperCase(),
                  spacing: 2,
                  color: AppColor.primary,
                  size: 14,
                ),
              ), 
          
              SizedBox(height: 10,) ,
             
              Row(
                children: [
                  qty(() {
                    setState(() {
                      if (number > 1) {
                        number--;
                        widget.onChanged(number);
                      }
                    });
                  }, "assets/svgs/min.svg"),
          
                  SizedBox(width: 10,) ,
          
                  CustomText(
                    text: number.toString(),
                    spacing: 4,
                    color: AppColor.primary,
                    weight: FontWeight.bold,
                  ),
          
                  SizedBox(width: 10,) ,
          
                  qty(() {
                    setState(() {
                      number++;
                      widget.onChanged(number);
                    });
                  }, "assets/svgs/plus.svg"),
                ],
              ),
              SizedBox(height: 20,) ,
              CustomText(
                text: "\$ ${widget.price}",
                color: Colors.red.shade200,
                size: 22,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget qty(onTap, svg) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade400, width: 1),
      ),
      child: SvgPicture.asset(svg),
    ),
  );
}

