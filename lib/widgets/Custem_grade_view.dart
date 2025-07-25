import 'package:flutter/material.dart';
import 'package:opne_fationn/model/prodact_model.dart';
import 'package:opne_fationn/pages/cheakout_page.dart';
import 'package:opne_fationn/widgets/custem_text.dart';

class CustemGradeView extends StatelessWidget {
  const CustemGradeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
                    itemCount: ProductModel.prodacts.length,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 15,
                      childAspectRatio: 0.50,
                    ),
                    itemBuilder: (context, index) {
                      final  item = ProductModel.prodacts[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CheakoutPage(
                              image: item.image,
                              name: item.name,
                              price: item.price,
                              desc: item.description,
                            ) ;
                          }));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(item.image),
                            CustomText(text: item.name, size: 20, ),
                            CustomText(text: item.description, color: Colors.grey,),
                            CustomText(
                                      text: "\$ ${item.price.toString()}",
                                      color: Colors.red.shade200,
                                      size: 20,
                            ),
                          ],
                        ),
                      );
                    },
                  );
  }
}

