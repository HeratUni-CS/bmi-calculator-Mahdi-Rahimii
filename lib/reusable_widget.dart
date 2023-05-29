import 'package:flutter/material.dart';
class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.color, this.child,this.onpressed});
  final Color color;
  final Widget? child;
  final void function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width:double.infinity,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Color(0xFF101549)),
        ),
      ),
    );
  }
}