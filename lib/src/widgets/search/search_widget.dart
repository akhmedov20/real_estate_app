import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textStyle/textsyle_widget.dart';

class SearchWidget extends StatelessWidget {
  final double width;
  final double height;
  final double left;
  final double right;
  final double height2;
  final String hintText;
  final Function() onTap;
  const SearchWidget({Key? key, required this.width, required this.height, required this.hintText, required this.left, required this.right, required this.height2, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left,right: right),
    width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 0.1
          )
        ],
        borderRadius: BorderRadius.circular(20),
        color: CupertinoColors.white,
      ),
      child: Row(children: [
        SizedBox(width: 16,),
        Icon(CupertinoIcons.search,color: CupertinoColors.black,),
        SizedBox(width: 16,),
        Expanded(child: TextField(
          style: Appstyle.twenty(Color(0xFF252B5C)),
          onTap: onTap,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: Appstyle.thirteen(Colors.grey)
          ),
        )),
        Container(
          width: 1.5,
          height: height2,
          color: Color(0xFFA1A5C1),
        ),
        IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.mic,color: Colors.grey,))
      ],),
    );
  }
}
