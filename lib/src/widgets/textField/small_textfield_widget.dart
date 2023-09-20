import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallTextFieldWidget extends StatefulWidget {
  final String icons;
  final double width;
  final double horizontal;
  SmallTextFieldWidget({Key? key, required this.icons, required this.width, required this.horizontal}) : super(key: key);

  @override
  State<SmallTextFieldWidget> createState() => _SmallTextFieldWidgetState();
}

class _SmallTextFieldWidgetState extends State<SmallTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Container(
      margin: EdgeInsets.symmetric(horizontal: widget.horizontal),
      width: widget.width,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFF5F4F8)
      ),
      child: Row(children: [
        SizedBox(width: 15,),
        SvgPicture.asset(widget.icons,color: Color(0xFF252B5C),),
        SizedBox(width: 10,),
        Expanded(child: TextField(
          keyboardType: TextInputType.number,
          style: TextStyle(fontSize: 14,color: Color(0xFF252B5C),fontWeight: FontWeight.bold),
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        )),
        SizedBox(width: 25,)
      ],),
    );
  }
}
