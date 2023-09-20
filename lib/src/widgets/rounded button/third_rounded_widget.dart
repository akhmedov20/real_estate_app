import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../textStyle/textsyle_widget.dart';

class ThirdRoundedWidget extends StatefulWidget {
  final double width;
  final String text;
  const ThirdRoundedWidget({Key? key, required this.width, required this.text,}) : super(key: key);

  @override
  State<ThirdRoundedWidget> createState() => _ThirdRoundedWidgetState();
}

class _ThirdRoundedWidgetState extends State<ThirdRoundedWidget> {
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
              borderRadius: BorderRadius.circular(25),
              color: _onTap ? Color(0xFF1F4C6B) : Color(0xFFF5F4F8)
          ),
          child: Row(
            children: [
              SizedBox(width: 15,),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SvgPicture.asset("assets/icons/bed2.svg",width: 25,height: 25,),
              ),
              SizedBox(width: 15,),
              Text(widget.text,style: Appstyle.eleven(_onTap ? Colors.white : Color(0xFF252B5C)),),
            ],
          )
      ),
    );
  }
}
