import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../textStyle/textsyle_widget.dart';

class CardWidget extends StatefulWidget {
  final String svg;
  final String text;
  CardWidget({Key? key, required this.svg, required this.text}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool paypal = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       paypal = !paypal;
      },
      child: Container(
        margin: EdgeInsets.only(left: 5,right: 5),
        width: 112,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),color: paypal ? Color(0xFF234F68) : Color(0xFFF5F4F8),
        ),
        child: Row(children: [
          SizedBox(width: 10,),
          SvgPicture.asset(widget.svg,color: paypal ? Colors.white : Colors.blue,),
          SizedBox(width: 10,),
          Text(widget.text,style: Appstyle.eleven(paypal ? Colors.white : Colors.black),)
        ],),
      ),
    );
  }
}
