import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class ListingCardWidget extends StatefulWidget {
  final String name;
  final String image;
  final double star;
  final int price;
  final String location;

  const ListingCardWidget({
    super.key,
    required this.name,
    required this.image,
    required this.location,
    required this.star,
    required this.price,

  });

  @override
  State<ListingCardWidget> createState() => _ListingCardWidgetState();
}

class _ListingCardWidgetState extends State<ListingCardWidget> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4*h,horizontal: 4*w),
      child: Container(
        width: 160*w,
        height: 230*h,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4F8),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(8*h),
                  child: Image.asset(widget.image),
                ),
                Container(
                  width: 144*w,
                  height: 173*h,
                  padding: EdgeInsets.symmetric(vertical: 13*h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                          Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15*w),
                                  child: GestureDetector(
                                    onTap: () {

                                    },
                                    child: Container(
                                        width: 25*w,
                                        height: 25*h,
                                        decoration: BoxDecoration(
                                          color:CupertinoColors.activeGreen,
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Icon(
                                             Icons.edit_outlined,
                                            size: 11*h,
                                            color: Colors.white)),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      like = !like;
                                    });
                                  },
                                  child: Container(
                                      width: 25*w,
                                      height: 25*h,
                                      decoration: BoxDecoration(
                                        color: like == false
                                            ? Colors.white70
                                            : CupertinoColors.activeGreen,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Icon(
                                          like == false
                                              ? Icons.favorite_outline
                                              : Icons.favorite,
                                          size: 11*h,
                                          color: like == false
                                              ? Colors.black
                                              : Colors.white)),
                                ),
                              ],
                            ),

                      Spacer(),
                      Container(
                        width: 80*w,
                        decoration: BoxDecoration(
                            color: Color(0xFF567286),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding:EdgeInsets.all(5*h),
                          child: Row(
                            children: [
                              Text('\$ ' + widget.price.toString(),
                                  style: TextStyle(
                                      fontSize: 12*h,
                                      color: Color(0xffF5F4F8),
                                      fontWeight: FontWeight.bold)),
                              Text('\\month',
                                  style: TextStyle(
                                      fontSize: 10*h, color: Color(0xffF5F4F8)))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16*w),
              child: Text(
                widget.name,
                style: TextStyle(
                    fontSize: 12*h,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
            ),
            SizedBox(
              height: 8*w,
            ),
            Row(
              children: [
                SizedBox(
                  width: 16*w,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFF53587A),
                  size: 11*h,
                ),
                Text(
                  widget.star.toString(),
                  style: TextStyle(
                      fontSize: 10*h,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff53587A)),
                ),
                SizedBox(
                  width: 6*w,
                ),
                Icon(
                  Icons.location_pin,
                  color: Color(0xFF1F4C6B),
                  size: 11*h,
                ),
                Text(
                  widget.location,
                  style: TextStyle(fontSize: 10*h, color: Color(0xFF53587A)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
