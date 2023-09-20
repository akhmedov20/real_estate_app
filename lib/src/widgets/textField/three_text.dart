import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdTextFieldwidget extends StatefulWidget {
  final double widht;
  final double horizontal;
  final String icons;
  final Color rang;
  const ThirdTextFieldwidget({Key? key, required this.widht, required this.horizontal, required this.icons, required this.rang}) : super(key: key);

  @override
  State<ThirdTextFieldwidget> createState() => _ThirdTextFieldwidgetState();
}

class _ThirdTextFieldwidgetState extends State<ThirdTextFieldwidget> {
  TextEditingController controller = TextEditingController();
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
        Expanded(child: TextField(
          style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        )),
        SvgPicture.asset(widget.icons,color: Colors.white,),
        SizedBox(width: 25,)
      ],),
    );
  }
}
