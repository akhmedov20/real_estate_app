import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textStyle/textsyle_widget.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      width: MediaQuery.of(context).size.width,
      height: 128,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFF5F4F8)
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 78,left: 5,top: 8),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2,color: Colors.white)
            ),
            child: Image.asset("assets/images/comment1.png",fit: BoxFit.cover,),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text("Kurt Mullins",style: Appstyle.thirteen(Color(0xFF252B5C)),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 200,
                    height: 60,
                    child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                      style: Appstyle.ten(Color(0xFF252B5C)),),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 88,right: 4),
            width: 75,
            height: 20,
            child: Row(children: [
              Icon(Icons.star,size: 15,color: Colors.yellow,),
              Icon(Icons.star,size: 15,color: Colors.yellow,),
              Icon(Icons.star,size: 15,color: Colors.yellow,),
              Icon(Icons.star,size: 15,color: Colors.yellow,),
              Icon(Icons.star_half,size: 15,color: Colors.yellow,),
            ],),
          ),
        ],
      ),
    );
  }
}
