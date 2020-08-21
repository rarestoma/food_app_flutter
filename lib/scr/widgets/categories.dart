import 'package:flutter/material.dart';
import 'package:myapp/scr/models/category.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "3.jpg"),
  Category(name: "Steak", image: "4.jpg"),
  Category(name: "Fast Food", image: "3.jpg"),
  Category(name: "Deserts", image: "4.jpg"),
  Category(name: "Sea food", image: "3.jpg"),
  Category(name: "Beer", image: "3.jpg"),


];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index){
          return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red[50],
                        offset: Offset(4, 6),
                        blurRadius: 12
                      ),
                    ],
                  ),
                  child: Padding(padding: EdgeInsets.all(4),
                  child: Image.asset("images/${categoriesList[index].image}", width: 50, ),)
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(text: categoriesList[index].name, size: 14)
              ],
            ),
        );
        },
      ),
    );
  }
}