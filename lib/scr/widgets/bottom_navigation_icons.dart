import 'package:flutter/material.dart';

import 'custom_text.dart';

class BottomNavIcon extends StatelessWidget {

  final IconData icon;
  final String name;

  const BottomNavIcon({this.icon, this.name});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column( 
        children: [
          Icon(icon),
          SizedBox(
            height: 5
          ),
          CustomText(text: name)
        ]
      )
    );
  }
}