import 'package:flutter/material.dart';
import 'constants.dart';

class iconData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final iconData iconData;
    final String lable;

    IconContent({required this.iconData, required this.lable});

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData, 
          size: 65,
          color: Color(0xFF868892),
          ),
        SizedBox(height: 15),
        Text(
          lable,
          style: lableStyle,
        )
      ],
    );
  }
}