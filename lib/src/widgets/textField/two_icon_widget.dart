import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TwoIconsTextField extends StatefulWidget {
  final TextEditingController controller;
  final double widht;
  final double horizontal;
  final IconData iconlar;
  final IconData icons;
  final Color rang;
  const TwoIconsTextField({Key? key, required this.widht, required this.horizontal, required this.icons, required this.rang, required this.iconlar, required this.controller}) : super(key: key);

  @override
  State<TwoIconsTextField> createState() => _TwoIconsTextFieldState();
}

class _TwoIconsTextFieldState extends State<TwoIconsTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: widget.horizontal),
      width: widget.widht,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.rang
      ),
      child: Row(children: [
        SizedBox(width: 15,),
        Icon(widget.icons,size: 16,color: Color(0xFF1F4C6B),),
        SizedBox(width: 10,),
        Expanded(child: TextField(
          style: TextStyle(fontSize: 14,color: Color(0xFF252B5C),fontWeight: FontWeight.bold),
          controller: widget.controller,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        )),
        Icon(widget.iconlar,size: 20,color: Color(0xFF53587A),),
        SizedBox(width: 25,)
      ],),
    );
  }
}
