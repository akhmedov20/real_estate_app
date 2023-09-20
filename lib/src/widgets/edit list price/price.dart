import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textStyle/textsyle_widget.dart';

class PriceWidget extends StatefulWidget {
  final TextEditingController controller;
  String text;
  PriceWidget({Key? key, required this.controller,required this.text}) : super(key: key);

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffF5F4F8),
      ),
      child: Row(
        children: [
          SizedBox(width: 26,),
          Text("\$",style: Appstyle.fourteen(Color(0xFF252B5C)),),
          SizedBox(width: 10,),
          SizedBox(
            width: 60,
            child: TextField(
              keyboardType: TextInputType.number,
              style: Appstyle.thirteen(Color(0xFF252B5C)),
              controller: widget.controller,
              decoration: InputDecoration(
                border: InputBorder.none
              ),
            ),
          ),
          Text(widget.text,style: Appstyle.twelvebold(Color(0xFF252B5C)),),
          Spacer(),
          Text("\$",style: Appstyle.twenty(Color(0xFF252B5C)),),
          SizedBox(width: 16,)
        ],
      ),
    );
  }
}
