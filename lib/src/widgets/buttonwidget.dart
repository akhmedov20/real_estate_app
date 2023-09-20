import 'package:flutter/material.dart';

class ButtonWidgetSh extends StatelessWidget {
  final String text;
  final bool expand;
  final Function() onTap;
  const ButtonWidgetSh({super.key, required this.text, this.expand= false, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        width:expand?MediaQuery.of(context).size.width:170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff8BC83F),
        ),
        child:Center(child: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
    );
  }
}
