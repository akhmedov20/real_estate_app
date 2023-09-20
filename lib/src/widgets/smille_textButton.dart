import 'package:flutter/material.dart';

import '../utils/utils.dart';
class SmileTextButton extends StatefulWidget {
  final String text;
  const SmileTextButton({super.key, required this.text});

  @override
  State<SmileTextButton> createState() => _SmileTExtButtonState();
}
bool color = true;

class _SmileTExtButtonState extends State<SmileTextButton> {
  @override
  Widget build(BuildContext context) {
    double h= Utils.getHeight(context);
    double w= Utils.getWidth(context);
    return GestureDetector(
      onTap: (){
        setState(() {
          color=!color;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 15),
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color?Color(0xFFF5F4F8):Color(0xFF234F68),
          ),
          child: Center(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 17),
            child: Text(widget.text,style: TextStyle(fontSize: 10*h,fontWeight: FontWeight.bold,color: color?Colors.black:Colors.white),),
          )),
        ),
      ),
    );
  }
}
