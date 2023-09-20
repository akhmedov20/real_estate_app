import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../textStyle/textsyle_widget.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      width: MediaQuery.of(context).size.width,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color.fromRGBO(31, 76, 107, 0.69)
      ),
      child: Stack(
        children: [
          Positioned(
            top: 16,
            left: 16,
            child: Container(
              width: 53,
              height: 53,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(child: Icon(CupertinoIcons.star_fill,size: 23,color: Colors.yellow,),),
            ),
          ),
          Positioned(
            top: 30,
              left: 85,
              child: Icon(Icons.star,size: 12,color: Colors.yellow,)),
          Positioned(
              top: 30,
              left: 97,
              child: Icon(Icons.star,size: 12,color: Colors.yellow,)),
          Positioned(
              top: 30,
              left: 109,
              child: Icon(Icons.star,size: 12,color: Colors.yellow,)),
          Positioned(
              top: 30,
              left: 120,
              child: Icon(Icons.star,size: 12,color: Colors.yellow,)),
          Positioned(
            top: 30,
              left: 133,
              child: Icon(Icons.star_half,size: 12,color: Colors.yellow,)),
          Positioned(
            top: 23,
              right: 160,
              child: Text("4.9",style: Appstyle.twenty(Color(0xFF252B5C)),)),
          Positioned(
              top: 50,
              left: 85,
              child: Text("112 sharhdan",style: Appstyle.ten(Color(0xFF53587A)),)),
          Positioned(
            top: 26,
            right: 66,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1,color: Colors.white)
              ),
              child: Image.asset("assets/images/fan1.png"),
            ),
          ),
          Positioned(
            top: 26,
            right: 46,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1,color: Colors.white)
              ),
              child: Image.asset("assets/images/fan2.png"),
            ),
          ),
          Positioned(
            top: 26,
            right: 25,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(width: 1,color: Colors.white)
              ),
              child: Image.asset("assets/images/fan3.png"),
            ),
          )
        ],
      ),
    );
  }
}
