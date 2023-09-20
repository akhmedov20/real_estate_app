import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house/src/widgets/textStyle/textsyle_widget.dart';

import '../utils/utils.dart';

class EstateWidget extends StatefulWidget {
  final String location, name, full_name;
  final double star;
  final int prise;
  final String image;

  const EstateWidget(
      {super.key,
      required this.location,
      required this.name,
      required this.full_name,
      required this.star,
      required this.prise,
      required this.image});

  @override
  State<EstateWidget> createState() => _EstateWidgetState();
}

class _EstateWidgetState extends State<EstateWidget> {
  @override
  bool  _favourite = false;
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Container(
      width: 330 * w,
      height: 180 * h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFF5F4F8)
      ),
      child: Row(
        children: [
          SizedBox(width: 8 * w,),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 170 * w,
            height: 170 * w,
            child: Stack(
              children: [
                SizedBox(
                  width: 170 * w,
                    height: 170 * h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                        child: Image.asset(widget.image,fit: BoxFit.cover,))),
                Positioned(
                  left: 10,
                  top: 10,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _favourite = !_favourite;
                      });
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: _favourite ? Colors.green : Colors.white),
                      child: Icon(
                        _favourite ? Icons.favorite : Icons.favorite_outline,
                        color: _favourite ? Colors.white : Colors.red,size: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  left: 10,
                  child: Container(
                  width: 75,
                  height: 35,
                  decoration: BoxDecoration(
                  color: Color(0XFF234F68),
                  borderRadius: BorderRadius.circular(10)),
                  child: Center(
                  child: Text(
                  widget.name,
                  style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
                  ),
                  ),
                  ),
                  )
              ],
            ),
          ),
          Container(
            width: 150 * w,
            height: 180 * h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16 * h,),
                Padding(
                  padding: EdgeInsets.only(left: 12 * w, right: 10 * w),
                  child: Text(widget.full_name,style: Appstyle.thirteen(Color(0xff252B5C)),),
                ),
                SizedBox(height: 8 * h,),
                Row(
                  children: [
                    SizedBox(width: 12 * w,),
                    Icon(Icons.star,size: 13,color: Colors.amber,),
                    Text(widget.star.toString(),style: Appstyle.ten(Color(0xFF53587A)),)
                  ],
                ),
                SizedBox(height: 8 * h,),
                Row(
                  children: [
                    SizedBox(width: 12 * w,),
                    Icon(Icons.location_on,size: 13,color: Color(0xFF252B5C),),
                    SizedBox(width: 5 * w,),
                    Text(widget.location,style: Appstyle.ten2(Color(0xff252B5C))),
                  ],
                ),
                SizedBox(height: 29 * h,),
                Row(
                  children: [
                    SizedBox(width: 12 * w,),
                    Text("\$  "+ widget.prise.toString(),style: Appstyle.sixteen(Color(0xFF252B5C)),),
                    SizedBox(width: 5 * w,),
                    Text("/ oyiga",style: Appstyle.ten2(Color(0xFF252B5C)),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );

  }
}
