import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../textStyle/textsyle_widget.dart';

class FacilityWidget extends StatelessWidget {
  final String icon;
  final String text;
  final int number;
  const FacilityWidget({Key? key,required this.icon, required this.text, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5,right: 5),
      width: 170,
      height: 52,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F8),
        borderRadius: BorderRadius.circular(100)
      ),
        child: Row(children: [
          SizedBox(width: 24,),
          SvgPicture.asset(icon),
          SizedBox(width: 10,),
          Text(number.toString(),style: Appstyle.twelve(Color(0xFF53587A)),),
          SizedBox(width: 3,),
          Text(text,style: Appstyle.twelve(Color(0xFF53587A)),)
        ],),
    );
  }
}
