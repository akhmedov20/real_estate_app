import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textStyle/textsyle_widget.dart';

class SelectHouseWidget extends StatefulWidget {
  final String image;
  final String text;
  const SelectHouseWidget({Key? key, required this.image, required this.text}) : super(key: key);

  @override
  State<SelectHouseWidget> createState() => _SelectHouseWidgetState();
}

class _SelectHouseWidgetState extends State<SelectHouseWidget> {
  @override
  bool _onPressed = false;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _onPressed = !_onPressed;
        });
      },
      child: Container(
      width: 160,
        height: 212,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: _onPressed ? Color(0xFF1F4C6B) : Color(0xFFF5F4F8)
        ),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 8),
            child: SizedBox(
              width: 144,
              height: 160,
              child: ClipRRect(borderRadius: BorderRadius.circular(10),
                  child: Image.asset(widget.image,fit: BoxFit.cover,)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16,top: 16),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: _onPressed ? Color(0xFF8BC83F) : Colors.white
            ),
            child: Center(child: Icon(Icons.check,size: 14,color: _onPressed ? Colors.white : Colors.grey,),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180,left: 10),
            child: Text(widget.text,style: Appstyle.twelve(_onPressed ? Colors.white : Color(0xFF252B5C)),),
          )
        ],),
      ),
    );
  }
}
