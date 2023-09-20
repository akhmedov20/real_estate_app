import 'package:flutter/cupertino.dart';

import '../textStyle/textsyle_widget.dart';

class RoundContainer extends StatelessWidget {
  final double width;
  final double height;
  final double round;
  final String text;
  final Color textcolor;
  final Color color;
  final Function() onTap;
  const RoundContainer({Key? key, required this.width, required this.height, required this.round, required this.text, required this.textcolor, required this.color, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(round),
          color: color,
        ),
        child: Center(child: Text(text,style: Appstyle.twelve(textcolor),)),
      ),
    );
  }
}
