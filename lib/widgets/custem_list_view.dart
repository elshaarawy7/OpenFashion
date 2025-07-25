import 'package:flutter/material.dart';
import 'package:opne_fationn/model/cover_model.dart';
import 'package:opne_fationn/widgets/custem_text.dart';
import '../model/cover_model.dart' show covers;

class CustemListView extends StatelessWidget {
  const CustemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: covers.length,
        itemBuilder: (context, index) {
          final item = covers[index];
          return Padding(
            padding: EdgeInsets.all(8), 
            child: Column(
              children: [
                Image.asset(
                  item.image, 
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                CustomText(text: item.name.toUpperCase()),
              ],
            ),
          );
        },
      ),
    );
  }
}

