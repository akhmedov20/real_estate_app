import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  final String text;
  final String text2;
  final String image;
  const OnBoarding({super.key, required this.text, required this.image, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
                width: 240,
                child: Text(text,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black87),)),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(width: 228,
            child: Text(text2,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black87),),),
          ),
          SizedBox(height: 20,),

          Expanded(child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(image,fit: BoxFit.cover,))),
          )),
        ],
      ),
    ));
  }
}
