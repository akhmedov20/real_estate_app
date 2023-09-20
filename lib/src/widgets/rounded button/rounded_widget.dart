import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textStyle/textsyle_widget.dart';

class RoundedWidget extends StatefulWidget {
  final double width;
  final String text;
  const RoundedWidget({Key? key, required this.width, required this.text}) : super(key: key);

  @override
  State<RoundedWidget> createState() => _RoundedWidgetState();
}

class _RoundedWidgetState extends State<RoundedWidget> {
  @override
  bool _onTap = false;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _onTap = !_onTap;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: widget.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _onTap ? Color(0xFF1F4C6B) : Color(0xFFF5F4F8)
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          Icon(CupertinoIcons.star_fill,size: 15,color: Colors.amber,),
          SizedBox(width: 5,),
          Text(widget.text,style: Appstyle.eleven(_onTap ? Colors.white : Color(0xFF252B5C)),)
        ],),
      ),
    );
  }
}
