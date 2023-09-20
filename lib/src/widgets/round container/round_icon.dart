import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SvgContainer extends StatelessWidget {
  final double width;
  final double height;
  final double round;
  final Color color;
  final String icon;
  final Function() onTap;
  const SvgContainer({Key? key, required this.width, required this.height, required this.round, required this.color, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset.zero
            )
          ],
          borderRadius: BorderRadius.circular(round),
          color: color,
        ),
        child: Center(child: SvgPicture.asset(icon)),
      ),
    );
  }
}
