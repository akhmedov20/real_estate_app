import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldWidgetA extends StatefulWidget {
  final TextEditingController controller;
  final String icons;
  final double widht;
  final double horizontal;
  TextFieldWidgetA({Key? key, required this.icons, required this.widht, required this.horizontal, required this.controller}) : super(key: key);

  @override
  State<TextFieldWidgetA> createState() => _TextFieldWidgetAState();
}

class _TextFieldWidgetAState extends State<TextFieldWidgetA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: widget.horizontal),
      width: widget.widht,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF5F4F8)
      ),
      child: Row(children: [
        SizedBox(width: 15,),
        Expanded(child: TextField(
          style: TextStyle(fontSize: 14,color: Color(0xFF252B5C),fontWeight: FontWeight.bold),
          controller: widget.controller,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        )),
        SvgPicture.asset(widget.icons,color: Color(0xFF252B5C),),
        SizedBox(width: 25,)
      ],),
    );
  }
}
