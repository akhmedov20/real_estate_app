import 'package:flutter/material.dart';
import 'package:house/src/widgets/textStyle/textsyle_widget.dart';

import '../utils/utils.dart';

class LocationWidget extends StatelessWidget {
  final String image;
  final String name;
  const LocationWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      margin: EdgeInsets.only(left: 5 * w,right: 5 * w),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(50)),
      height: 56 * h,
      child: Row(
        children: [
          SizedBox(width: 10 * w,),
          SizedBox(
            width: 40 * w,
              height: 40 * h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                  child: Image.asset(image,fit: BoxFit.cover,))),
          SizedBox(width: 8 * w,),
          Text(name,style: Appstyle.ten2(Color(0xFF252B5C)),),
          SizedBox(width: 16 * w,)
        ],
      ),
    );
  }
}
