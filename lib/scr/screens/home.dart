import 'package:flutter/material.dart';
import 'package:myapp/scr/commons.dart';
import 'package:myapp/scr/widgets/bottom_navigation_icons.dart';
import 'package:myapp/scr/widgets/categories.dart';
import 'package:myapp/scr/widgets/custom_text.dart';
import 'package:myapp/scr/widgets/featured_product.dart';
import 'package:myapp/scr/widgets/small-floating-button.dart';
import 'package:myapp/scr/widgets/bottom_navigation_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                        text: "What are you looking for?",
                        size: 18,
                      )
                    ),
                    Stack(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: red,
                              borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                        ),
                      ],
                    )
                  ]
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: grey,
                          offset: Offset(1, 1),
                          blurRadius: 4
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: Icon(Icons.search, color: red,),
                      title: TextField(
                        decoration: InputDecoration(
                            hintText: "Find food and restaurants",
                            border: InputBorder.none
                          ),
                        ),
                      trailing: Icon(Icons.filter_list, color: red,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5
                ),
                Categories(),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CustomText(text: "Featured", size: 20, color: grey,),
                ),

                Featured(),
                
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CustomText(
                          text: "Popular restaurants",
                          size: 20,
                          color: grey,
                        ),
                      ],
                    ),
                  ),

                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Stack(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("images/5.jpeg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SmallButton(Icons.favorite),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                width: 50,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Icon(Icons.star, color: Colors.yellow[900], size: 20)
                                    ),
                                    Text("4.5")
                                  ],
                                ),
                              )
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),

                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.8),
                                        Colors.black.withOpacity(0.7),
                                        Colors.black.withOpacity(0.6),
                                        Colors.black.withOpacity(0.6),
                                        Colors.black.withOpacity(0.4),
                                        Colors.black.withOpacity(0.1),
                                        Colors.black.withOpacity(0.05),
                                        Colors.black.withOpacity(0.025),
                                      ],
                                    )
                                  )
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align (
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(12,8,8,8),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(text: "Pancakes \n", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                            TextSpan(text: "by: \n", style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                                            TextSpan(text: "Pizza Hot \n", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                                          ], style: TextStyle(color: white)
                                        )
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RichText(
                                        text: TextSpan(children: [
                                            TextSpan(text: "\$12.99", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                                          ], style: TextStyle(color: white)
                                        )
                                      ),
                                    )
                                  ],
                                )
                              )
                            )
                          ]
                        )
                      )
                    ],
                  ),
                )
               

              ],

            ),
          ),
          bottomNavigationBar: Container(
            height: 80,
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  BottomNavIcon(
                  icon: Icons.home,
                  name: "Home"
                  ),
                  BottomNavIcon(
                  icon: Icons.search,
                  name: "Near By"
                  ),  
                  BottomNavIcon(
                  icon: Icons.shopping_cart,
                  name: "Cart"
                  ),  
                  BottomNavIcon(
                  icon: Icons.account_circle,
                  name: "Account"
                  ),
              ]
            )
          ),
    );
  }
}