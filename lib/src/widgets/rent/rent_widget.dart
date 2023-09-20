import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textStyle/textsyle_widget.dart';


class RentWidget extends StatefulWidget {
  final String image;
  final String rating;
  final String city;
  final Function() onTap;
  const RentWidget({Key? key, required this.image, required this.rating, required this.city, required this.onTap}) : super(key: key);

  @override
  State<RentWidget> createState() => _RentWidgetState();
}

class _RentWidgetState extends State<RentWidget> {
  @override
  bool _onTap = false;
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 251,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFF5F4F8)
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 8),
          child: SizedBox(
            width: 164,
            height: 180,
            child: Stack(
              children: [
                SizedBox(
                  width: 164,
                  height: 180,
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),
                      child: Image.asset(widget.image,fit: BoxFit.cover,)),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _onTap = !_onTap;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 130,top: 5),
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: _onTap ? Colors.green : Colors.white
                    ),
                    child: Center(child: Icon(_onTap ? Icons.favorite : Icons.favorite_border,color: _onTap ? Colors.white : Colors.grey,size: 11,),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 61,top: 135 ),
                  width: 95,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF53587A)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 8,),
                      Text("\$  260",style: Appstyle.fourteen(Colors.white),),
                      SizedBox(width: 3,),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text("/month",style: Appstyle.eight(Colors.white),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: SizedBox(
            width: 128,
            height: 36,
            child: Text("Bridgeland Modern House",style: Appstyle.twelve(Color(0xFF252B5C)),),
          ),
        ),
        SizedBox(height: 10,),
        Row(children: [
          SizedBox(width: 18,),
          Icon(Icons.star,color: Color(0xFFFFC42D),size: 17,),
          SizedBox(width: 5,),
          Text(widget.rating,style: Appstyle.twelve(Color(0xFF53587A)),),
          SizedBox(width: 5,),
          Icon(Icons.location_on,color: Color(0xFF1F4C6B),size: 15,),
          Text(widget.city,style: Appstyle.ten(Color(0xFF53587A)),)
        ],)
      ],)
    );
  }
}
