
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function() onTap;
  final String text;
  final double height;
  final double width;
  final double fontsize;
  final double circle;
  final double horizontal;
  final double vertical;
  final Color color;
  final Color textcolor;
  const ButtonWidget({Key? key, required this.text, required this.height, required this.circle, required this.horizontal, required this.width, required this.onTap, required this.vertical, required this.fontsize, required this.color, required this.textcolor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: horizontal,vertical: vertical),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(circle)
        ),child: Center(child: Text(text,style: TextStyle(color: textcolor,fontSize: fontsize,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
