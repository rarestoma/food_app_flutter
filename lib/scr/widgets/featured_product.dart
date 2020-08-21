import 'package:flutter/material.dart';
import 'package:myapp/scr/models/products.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Product> productsList = [
  Product(name: "Cereals", price: 5.99, rating: 4.2, vendor: "GoodFood", wishList: true, image: "1.jpeg"),
  Product(name: "Taccos", price: 12.99, rating: 4.7, vendor: "GoodFood", wishList: false, image: "2.jpeg"),
  Product(name: "Burger", price: 13.99, rating: 4.7, vendor: "GoodFood", wishList: false, image: "3.jpg"),


];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (_, index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 240,
            width: 200,
            decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.red[50],
                    offset: Offset(15, 5),
                    blurRadius: 30
                  ),
                ],
              ),
            child: Column(
              children: <Widget>[
                Image.asset('images/${productsList[index].image}', 
                height: 140, 
                width: 140,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(text: productsList[index].name),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red[500],
                              offset: Offset(1, 1),
                              blurRadius: 4
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: productsList[index].wishList ? Icon(
                            Icons.favorite, 
                            size: 18, 
                            color: red
                          ) : Icon(
                            Icons.favorite_border, 
                            size: 18, 
                            color: red
                          )
                        ),
                      ),
                    )
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: CustomText(text: productsList[index].rating.toString(), color: grey, size: 14),
                        ),
                        SizedBox(
                          height: 4
                        ),
                        Icon(Icons.star, color: red, size: 16),
                        Icon(Icons.star, color: red, size: 16),
                        Icon(Icons.star, color: red, size: 16),
                        Icon(Icons.star, color: red, size: 16),
                        Icon(Icons.star, color: grey, size: 16),

                      ]
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CustomText(text: "\$${productsList[index].price}", weight: FontWeight.bold,),
                    )
                  ],
                )
              ],
            )
          ),
        );
      }),
    );
  }
}